json.extract! provider, 
  :id, 
  :npi, 
  :name, 
  :provider_type,
  :address_1,
  :address_2,
  :city,
  :state,
  :zip_code,
  :latitude,
  :longitude 
json.specialties provider.specialties.pluck(:id)
json.insurances provider.insurances.pluck(:id)
json.insurance_carriers provider.insurances.pluck(:hios_id).uniq