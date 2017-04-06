
# Admin account
@student1 = Student.create(email: 'admin@psu.edu', password: 'password', password_confirmation: 'password', is_admin: true)

# Student account
@student2 = Student.create(email: 'student@psu.edu', password: 'password', password_confirmation: 'password', is_admin: false, first_name: 'Allison', last_name: 'Hughes', campus_id: @UP.id)
