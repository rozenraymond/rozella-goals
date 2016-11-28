class StepsController < ApplicationController
  def index
    @steps = Step.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
