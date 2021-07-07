class MyValidator < ActiveModel::Validator 
    def validate(record)
        if record.title
            titles = ["Won't Believe", "Secret", "Top[number]", "Guess"]
            if titles.detect {|word| record.title.include?(word) }.nil?
              record.errors.add(:title, "Not clickbait-y enough")
            end
          end
    end
end
