module ApplicationHelper

    #|----------------------------------------------------
    #|  This helper method is used for dynamically adding nested
    #|  form fields without reloading the page. 
    #|  
    #|  Reference of the Guide
    #|      ^ https://dev.to/ndrean/dynamic-nested-form-in-rails-4k9p
    #|
    def link_to_add_fields(name, f, association)

        # --> Creates a new instance of the associated object
        new_object = f.object.send(association).klass.new

        # -->  Generates a unique ID for the new object
        id = new_object.object_id

        # -->  Generates form fields for the new object and then renders a partial for the fields, using the form builder
        fields = f.fields_for(association, new_object, child_index: id) do |builder|
          render(association.to_s.singularize + "_fields", f: builder)
        end

        # --> Returns a link that, when clicked, will add the new fields to the form
        link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
      end

end
