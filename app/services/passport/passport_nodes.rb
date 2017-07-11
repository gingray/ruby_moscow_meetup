module Passport
  class BaseNode < Treetop::Runtime::SyntaxNode
    def accept visitor
      visitor.visit self
    end
  end

  class FIO < BaseNode
    def field
      :fio
    end
  end

  class BornCity < BaseNode
    def field
      :born_city
    end
  end

  class BornDistrict < BaseNode
    def field
      :born_district
    end
  end

  class PassportId < BaseNode
    def field
      :passport_id
    end
  end
end
