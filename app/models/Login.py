
from system.core.model import Model
import re

class Login(Model):
	def __init__(self):
		super(Login, self).__init__()

	def register_user(self, info):

		EMAIL_REGEX = re.compile(r'^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]+$')
		errors = []
		
		if not info['first_name'] or not info['last_name']:
			errors.append('Name cannot be blank')
		elif len(info['password'])<8:
			errors.append('Password must contain 8 characters!')
		elif not EMAIL_REGEX.match(info['email']):
			errors.append("Invalid Email Address!")
		elif not info['c_password'] == info['password']:
			errors.append("Password does not match!")	

		if errors:
			print errors
			return {'status': False, 'errors': errors}
		else:
			password = info['password']
			hashed_pw = self.bcrypt.generate_password_hash(password)
			query = "INSERT INTO users (first_name, last_name, email, password, created_at, updated_at) VALUES (:first_name, :last_name, :email, :password, NOW(), NOW())"
			data = {
			'first_name': info['first_name'], 
			'last_name': info['last_name'],
			'email': info['email'],
			'password': hashed_pw
			}
			user_id = self.db.query_db(query, data)
			print user_id
			return {'status': True, 'user_id': user_id}


	def login_process (self, info):
		password = info['password']
		email = info['email']
		query = "SELECT * FROM users WHERE email = :email LIMIT 1"
		data = {'email': info['email'] }
		user = self.db.get_one(query, data)

		if user:
			if self.bcrypt.check_password_hash(user.Password, password):
				return user
		return False

	# def delete_user(self, email):   
	# 	query = "DELETE FROM users WHERE email = :email LIMIT 1"
	# 	data = {'email' : email}
	# 	return self.db.query_db(query, data)