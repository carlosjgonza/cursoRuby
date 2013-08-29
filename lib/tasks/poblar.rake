namespace :db do

	desc "Agregando simples datos a la base de datos"
	task poblar: :environment do

			10.times do |n|

				puts "[DEBUG] creating user #{n+1} of 10"
				name = Faker::Name.name
				email = "user-#{n+1}@ejemplo.com"
				password = "Usuario123"
				User.create!(    name:name,
								email: email,
								password: password,
								password_confirmation: password)
			end
			User.all.each do |user|

				puts "[DEBUG] uploading images for user #{user.id} of #{User.last.id}"

				10.times do |n|

					image = File.open(Dir.glob(File.join(Rails.root, "simplesRecursos", "*")).sample)
					description = %w(grandioso, sorprendente, alegre, feliz, fantastico).sample

					user.pins.create!(image: image, description: description)

				end

			end

	end
	
end