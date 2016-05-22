class V1::ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :settlement, :about, :region_name, :phone, :region_id, :public, :full_address

  has_many :sales

  class SaleSerializer < ActiveModel::Serializer
    attributes :id, :start_time, :active, :organic, :region_name, :vegetables, :hours, :user_id, :start_at, :about

    def start_time
      object.start_at.strftime('%d-%m-%Y')
    end
  end
end