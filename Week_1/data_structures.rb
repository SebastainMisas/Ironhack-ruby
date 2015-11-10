# hash = {
# 	:wat => [ 0, 1, {:wut =>[ 0,[[0,1,2,3,4,5,6,7,8,{:bbq => 0}],1]]}]
# }

# puts hash[:wat][2][:wut][1][0][9][:bbq]


arr = [[0,1,2,3,4,{:secret => {:secret => {:unlock => {:unlock => [0,[1],2]}} }}],1]




puts arr[0][5][:secret][:unlock][1]