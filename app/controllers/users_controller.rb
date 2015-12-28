class UsersController < ApplicationController

  before_action :set_state, except: [:index]

  def index
    @user = User.new
    # @user.country_code = 'US'
  end

  def subregion_options
    # binding.pry
    render partial: 'subregion_select'
  end

  private

    def set_state
      @parent_region ||= params[:parent_region]
      @country = Carmen::Country.coded(@parent_region) unless @parent_region.nil?
    end

end
