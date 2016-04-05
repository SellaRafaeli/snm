$vendors = $mongo.collection('vendors')

def update_vendors_from_airtable
  update_coll_from_airtable('apph2lJagGf9lFU95','Venues', $vendors)  
end

# def update_vendors_from_airtable
#   vendors = get_airtable_vendors
#   if vendors.size > 1 
#     $vendors.delete_many 
#     vendors.each {|vendor| $vendors.add(vendor) } 
#   end
#   redirect '/admin/manage/vendors'
# end

get '/admin/update_vendors_from_airtable' do
  update_vendors_from_airtable
  redirect '/admin/manage/vendors'
end
