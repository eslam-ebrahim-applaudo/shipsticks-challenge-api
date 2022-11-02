namespace :generator do
  desc "TODO"
  task products: :environment do
    json = File.read("lib/products.json")
    products = JSON.parse(json)["products"]

    products.each do |product|
      Product.create! product
    end
  end

end
