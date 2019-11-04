class UserMailer < ApplicationMailer
	default from: 'no-reply@monsite.fr'

	def welcome_email(user)
		#on recupere l instance user pour pouvoir la passer a la view en @user
		@user = user

		#on definit une variable @url qu on utilisera dans la view d email
		@url = 'http://monsite.fr/login'

		#cest cet appel a mail () qui permet d envoyer le mail en definissant destinataire et sujet
		mail(to: @user.email, suject: 'Bienvenue chez nous !')
	end
end
