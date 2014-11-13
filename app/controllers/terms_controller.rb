class TermsController < ApplicationController
  before_action :set_term, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @terms = Term.all
    respond_with(@terms)
  end

  def show
    respond_with(@term)
  end

  def new
    @term = Term.new
    respond_with(@term)
  end

  def edit
  end

  def create
    @term = Term.new(term_params)
    @term.save
    respond_with(@term)
  end

  def update
    @term.update(term_params)
    respond_with(@term)
  end

  def destroy
    @term.destroy
    respond_with(@term)
  end

  private
    def set_term
      @term = Term.find(params[:id])
    end

    def term_params
      params.require(:term).permit(:agreement)
    end
end
