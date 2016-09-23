
from system.core.controller import *


class Logins(Controller):
	def __init__(self, action):
		super(Logins, self).__init__(action)
		self.load_model('Login')
		self.db = self._app.db


	def index(self):
		if session.get('id'):
			return self.load_view('success.html')
		return self.load_view('index.html')

	  
	def register(self):
		status = self.models['Login'].register_user(request.form)
		session['name'] = request.form['first_name']

		if status['status']:
			flash('You have successfully registered!')
			return self.load_view('success.html', name=request.form['first_name'])

		else:
			for message in status['errors']:
				flash(message, 'regis_errors')
			return redirect('/')


	def logout(self):
		session.clear() 
		flash('You are now logged out')
		print 'logout'
		return redirect('/')

	def login(self):
		status = self.models['Login'].login_process(request.form)
		session['name'] = status['First_Name']
		if status:	
			flash('You have successfully logged in')
			return self.load_view('success.html', name=session['name'])
		else:
			flash('Invalid Password')		
			return redirect('/')

	# def delete(self):
	# 	session['email']= email
	# 	self.models['Login'].delete_user(email)
	# 	return self.load_view('delete.html', email=email)

	# def destroy(self):
	# 	return redirect('/')

			# session['id'] = user['id']

	# def create(self):
	# 	create_status = self.models['Login'].create_user(request.form)

	# 	if create_status['status'] == True:
	# 		session['id'] = create_status['user']['id']
	# 		session['first_name'] = create_status['user']['first_name']
	# 		session['last_name'] = create_status['user']['last_name']
	# 		return redirect ('/users')
	# 	else:
	# 		for message in create_status['errors']:
	# 			flash(message, 'regis_errors')
	# 		return redirect ('/users/new')