require "administrate/base_dashboard"

class CommercialUnitDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    pictures: Field::ActiveStorage,
    id: Field::Number,
    owner: Field::String,
    address: Field::String,
    shops: Field::Number,
    sqmt: Field::Number,
    parking: Field::Number,
    price: Field::String.with_options(searchable: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    pictures
    id
    owner
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    pictures
    id
    owner
    address
    shops
    sqmt
    parking
    price
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    pictures
    owner
    address
    shops
    sqmt
    parking
    price
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how commercial units are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(commercial_unit)
  #   "CommercialUnit ##{commercial_unit.id}"
  # end

  # permitted for has_many_attached
  def permitted_attributes
    super + [:pictures => []]
  end
end
