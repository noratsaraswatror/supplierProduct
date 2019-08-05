# App Description:

This is a simple Supplier-Product Web application. The user(customer) can see list of suppliers and their related products. 
There is also an Admin dashboard where admin can populate data with csv(right now allowing csv only) and can see list of all suppliers and related products with active and inactive status.

# How to Setup:

Clone the app from main repository(repository is public). 

git clone https://github.com/noratsaraswatror/supplierProduct.git 


cd supplierProduct 

bundle install 

#Database migration: (create database and migrate tables)

rails db:create 

rails db:migrate 

#Admin user can be installed by: 

rails db:seed 

#demo link 

https://supplierproduct.herokuapp.com

#Admin Login(default provide)

Admin can login with admin@example.com and password '123456789'

#Supplier Registeration & Login 

Supplier can visit home page and click on register if supplier is visiing first time on app. He/she is required to fill up the fields and click on sign up button for registering. 

Supplier can also login directly if he/she has already registered earlier. 


# Admin Dashboard 

Admin can only populate data

How to populate suplliers and their products data 

Admin dashboard has an import button. Click on import button and upload supplier products data master CSV file.

Sample master file is available in app main directory 



 




