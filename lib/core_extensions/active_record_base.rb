class ActiveRecord::Base

  def inspect
    filtered_attributes = self.attributes.select{ |a| ['created_at', 'updated_at'].exclude?(a) }
    filtered_attributes.values.join(" | ")
  end

end