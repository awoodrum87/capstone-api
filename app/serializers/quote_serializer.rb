class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :date, :quote_text
end
