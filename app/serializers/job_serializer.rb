class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :status,:professional_id,:estimated_cost,  :professional_img, :professional_name, :professional_average_rating

  def professional_img
    pro = @object.professional
    pro.img_url
  end

  def professional_name
    pro = @object.professional
    pro.name 
  end

  def professional_average_rating
    pro = @object.professional
    pro.average_reviews
  end

  def professional_id
    pro = @object.professional
    pro.id
  end

  def estimated_cost
    pro = @object.professional
    pro.estimated_cost
  end
end
