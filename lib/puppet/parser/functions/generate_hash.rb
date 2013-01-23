module Puppet::Parser::Functions
  newfunction(:generate_hash, :type => :rvalue) do |arguments|
    length = arguments[0]
    extra = arguments[1] || ""

    ((1..length.to_i).to_a).map { |i| "#{i}_titlefor_#{extra}" }
  end
end
