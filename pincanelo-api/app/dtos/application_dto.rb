class ApplicationDto
  include ActiveModel::Validations
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value) if respond_to?("#{name}=")
    end
  end
end