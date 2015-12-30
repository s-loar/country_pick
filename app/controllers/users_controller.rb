class UsersController < ApplicationController

  before_action :set_state, except: [:index]

  def index
    @user = User.new
  end

  def subregion_options
    render partial: 'subregion_select'
  end

  private

    def set_state
      @parent_region ||= params[:parent_region]
      @country = Carmen::Country.coded(@parent_region) unless @parent_region.nil?
    end

end
