taro = Member.find_by(name: 'Taro')
jiro = Member.find_by(name: 'Jiro')
hana = Member.find_by(name: 'Hana')

taro.followees << jiro
taro.followees << hana
jiro.followees << hana
