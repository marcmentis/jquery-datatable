# Sometimes you'll need to use view helper methods like link_to, h, mailto, 
# edit_resource_path in the returned JSON representation returned by the data method.

# To have these methods available to be used, this is the way to go:
class MyCustomDatatable < AjaxDatatablesRails::Base
  # either define them one-by-one
  def_delegator :@view, :link_to
  def_delegator :@view, :h
  def_delegator :@view, :mail_to

  # or define them in one pass
  #def_delegators :@view, :link_to, :h, :mailto, :edit_resource_path, :other_method

  # now, you'll have these methods available to be used anywhere
  # example: mapping the 2d jsonified array returned.
  # def data
  #   records.map do |record|
  #     [
  #       link_to(record.fname, edit_resource_path(record)),
  #       mail_to(record.email),
  #       # other attributes
  #     ]
  #   end
  # end
end