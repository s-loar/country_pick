class UsersController < ApplicationController

  before_action :set_state, except: [:index]

  def index
    @user = User.new
    @state_label = 'State/Province'
    @address1_label = 'Address'
  end

  def subregion_options
    render partial: 'subregion_select'
  end

  private

    def set_state
      @parent_region ||= params[:parent_region]
      @country = Carmen::Country.coded(@parent_region) unless @parent_region.nil?
      @state_label = @parent_region == 'US' ? 'State' :
        (@country.subregions? ? @country.subregions.first.type.titleize :
        'State/Province')
      @address1_label = @parent_region == 'US' ? 'Address' : 'Address Line 1'
    end

end
