module ProductsHelper
	def product_icon(product)
		if product.icon_path?
			image_tag(product.icon_path, size: "30x30")
		else
			image_tag(File.join('icons' , 'icon1.svg'), size: "30x30")
		end
	end
end
