def consolidate_cart(cart)
  good_hash = {} 
  cart.each do |elements|
    elements.each do |a, b|
      if good_hash.has_key?(a)
        good_hash[a][:count] += 1 
      else 
        good_hash[a] = { 
          count: 1, 
          price: elements[a][:price],
          clearance: elements[a][:clearance]
        } 
      end
    end
  end
  good_hash
end

def apply_coupons(cart, coupons)
  coupons.each do |coupon| 
    coupon.each do |a, b| 
      item = coupon[:item]
      p item 
    end
  end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
