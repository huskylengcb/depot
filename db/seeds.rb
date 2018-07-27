# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all

Product.create!(title: '这个一个产品',
	description: %{
		<p>
		<em>啊喊打喊杀，傲世江湖等哈说，啊受打击收到，啊圣诞节啊是的，大世界卡上爱仕达哈市
		大手大脚啊是的噶极速快感大开工建设。阿斯顿聚划算卡的，打算结婚大手机壳
		</p>
		},
	image_url: '7apps.jpg',
	price: 26.00)
