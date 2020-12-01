# Add DateTimeType for Link.created_at property
# https://github.com/rmosolgo/graphiql-rails/issues/29
module Types
  class DateTimeType < BaseScalar
    def self.coerce_input(value, _context)
      Time.zone.parse(value)
    end

    def self.coerce_result(value, _context)
      value.utc.iso8601
    end
  end
end
