#
# Formulas controller
#
# @author [guillaumeh]
#
class FormulasController < ApplicationController
  before_filter :search, only: :index
  before_filter :current_object, only: [:show, :refresh_description]

  def index
    @formula_count = Homebrew::Formula.internals.where(
      'touched_on = ?',
      current_date
    ).count
  end

  def show; end

  def refresh_description
    FormulaDescriptionFetchWorker.perform_async(@formula.id)
    flash[:success] = 'Your request has been successfully submitted.'
    redirect_to action: 'show', id: @formula.name
  end

  private

  def current_date
    return @current_date if @current_date

    @current_date = Time.now.utc.to_date
    import = Import.success.last
    @current_date = import.ended_at.try(:to_date) if import
    @current_date
  end

  def search
    @formulas = if params[:search] && params[:search][:term].present?
                  Homebrew::Formula.touched_on_or_external(current_date).where(
                    'filename iLIKE ? OR name iLIKE ?',
                    "%#{params[:search][:term]}%",
                    "%#{params[:search][:term]}%"
                  )
                else
                  # Don't show external dependencies in the big list
                  Homebrew::Formula.touched_on(current_date).internals
                end.order(:name)
  end

  def current_object
    @formula = Homebrew::Formula.find_by!(name: params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:error] = "This formula doesn't exists"
    redirect_to root_url
  end
end
