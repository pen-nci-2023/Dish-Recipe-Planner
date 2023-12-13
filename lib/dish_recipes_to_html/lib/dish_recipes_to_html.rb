class Parse_to_html
    def self.runcheck(dish_name)
        
        dish = Dish.find_by(name: dish_name)
        return 'Dish not found' if dish.nil?

        ingredients_html = dish.ingredients.map { |ingredient| "<li>#{ingredient.name}</li>" }.join("\n")
        
        <<~HTML
            <ul>
            <li>#{dish.name}
                <ul>
                #{ingredients_html}
                </ul>
            </li>
            </ul>
        HTML

    end
end