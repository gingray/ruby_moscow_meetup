module Passport
  class FIO < Treetop::Runtime::SyntaxNode
    def name
      :custom
    end
  end

  class BornAddress < Treetop::Runtime::SyntaxNode
    def name
      :custom
    end
  end

  class PassportId < Treetop::Runtime::SyntaxNode
    def name
      :custom
    end
  end
end
