purchase_wallet = 552.45
purchase_btc = 0.03348174
trading_price = 

if current_price > (purchase_wallet+desired_profit + ((purchase_wallet + desired_profit)*transaction_fee))
		#sell back down to purchase wallet
		#purchase_wallet = original amount, and the updated amount of btc.

if current_price < (purchase_wallet-(desired_profit/2) - ((purchase_wallet + (desired_profit/2))*transaction_fee))
	 #buy 1/2 the amount of the current wallet's value
	 #update the desired profit proportionally.
	 #update both the wallet and the amount of currently held BTC accordingly.


=begin Sample scratch pad to proof:
start: 552.45, 0.03348174.
desired profit: $300 
sell at $886, which means BTC would be at 26,457.71. ...That... can't be right?
Fee is $35.44. Gross.
sell $298.20.

new wallet: 552.45, and 0.

So you'd have to expect that the value would then drop below 16,000 again in order to make a profit, though, right? But unless it's a huge crash that won't happen. So, then, your original value + 1/4 your profit?

Ok so you sold at 26,457.71/coin.
Now let's say it drops to 20,000/coin. Should you then buy $300 worth? You'd buy 0.015 of a coin, and add it to your 0.02. That puts you just about back to your starting amount of coin.

Your wallet would now have $852.45 in it.

=end

#Wait shit you're operating on faulty values, using your current value as the start line. You're at like $300 profit right now anyway, right? So you should sell down to $150? Shit I kinda wish you hadn't
#done that $50, it screws everythig up.

=begin
my_amount = 0.03348174

current_price = 16490.83

my_wallet = my_amount * current_price

puts my_wallet


theoretical_price = 18000.00

high_wallet = my_amount * theoretical_price

puts high_wallet

sold_off_wallet = 150/theoretical_price

puts sold_off_wallet

profit_sell = high_wallet - 150

puts profit_sell


low_price = 17000.00

low_wallet = sold_off_wallet * low_price

new_wallet = 

puts low_wallet
=end


=begin

Calculate when selling and buying are worth it.

To do so: determine how much profit you need to make it worth it. $1000? That sounds nice, let's say that.
So, when your current wallet - $150 is >= $1000, sell down to your inital $150.

When to buy, then? I guess when it drops to $500 or $1000 below when you sold? This lets you sort of scale
upward and downward with the market, I think, right?

Determining when to sell is the easy part. Any time you hit ~$1200, sell. So when do you buy?

if the amount of Bitcoin you have is worth $500 less than when you sold it, then buy.

In theory, this should slowly increase the amount of Bitcoin you have, while also giving you a stream
of 'income.'

So. Starting wallet = 150, 0.03348174 (amount = $$/price per coin at buy)
Sell wallet, then, = 1000 + 150 + (1000+150*0.04). So sell at $1,196, sell down to $150.

That would mean bitcoin went up 1,046.

If $150 buys you 0.03648182 coin, then how much is 1 coin worth? $4,029.68

Also you can get the amount by dividing your wallet's current value by the amount of BTC.

