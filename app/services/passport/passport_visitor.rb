module Passport
  class PassportVisitor
    attr_accessor :passport

    def initialize
      @passport = UserPassport.new
    end

    def visit item
      if item.respond_to? :field
        fill_field item.field, item.text_value
      end
      item.elements.each do |element|
        if element.respond_to? :accept
          element.accept self
        end
      end
    end

    def fill_field field, value
      if field == :fio
        passport.fio = value
      end

      if field == :born_city
        passport.born_city = value
      end

      if field == :born_district
        passport.born_district = value
      end

      if field == :passport_id
        passport.passport_id = value
      end
    end
  end
end
