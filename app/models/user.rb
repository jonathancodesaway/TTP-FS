class User < ApplicationRecord
  has_secure_password

  def ownedTicks(input)
  	temp = JSON.parse(input.to_s)
  	final = {}
  	input.each do |val|
  		quote = IEX::Resources::Price.get(val['key'])
  		final[val['key']] = quote * val['quantity'].to_i
  	end
  	format.json {final}
  end
end
