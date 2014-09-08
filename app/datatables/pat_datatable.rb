class PatDatatable < AjaxDatatablesRails::Base
  # uncomment the appropriate paginator module,
  # depending on gems available in your project.
  # include AjaxDatatablesRails::Extensions::Kaminari
 include AjaxDatatablesRails::Extensions::WillPaginate
  # include AjaxDatatablesRails::Extensions::SimplePaginator

    # list columns inside the Array in string dot notation.
    # Example: 'users.email'
  def sortable_columns
    @sortable_columns ||= [ 
                            'pats.firstname',
                            'pats.lastname',
                            'pats.number'
                          ]
  end

    # list columns inside the Array in string dot notation.
    # Example: 'users.email'
  def searchable_columns
    @searchable_columns ||= [
                              'pats.firstname',
                              'pats.lastname',
                              'pats.number'
                            ]
  end

  private

        # comma separated list of the values for each cell of a table row
        # example: record.attribute,
  def data
    records.map do |record|
      [
        record.firstname,
        record.lastname,
        record.number
      ]
    end
  end

    # insert query here
  def get_raw_records
    Pat.all
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
