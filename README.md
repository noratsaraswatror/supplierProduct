# App Description:

This is simple Supplier Products Web app. There user(CUstomer) can see list of suppliers and there products(Active Or Inactive). 
There are also an Admin dashboard where admin can populate data with csv(rightnow  allowing csv only) and can see list of all suppliers and related products with active and inactive both.

# How to Setup:

Clone the app from main repositories(repositorie is public). 


git clone https://github.com/noratsaraswatror/supplierProduct.git 


cd supplierProduct 

bundle install 

Database migration: (create database and migrate tables)

rails db:create 

rails db:migrate 

Admin user install: 

rails db:seed 

#demo link 

https://supplierproduct.herokuapp.com


Admin Login(default provide)

Admin can login with admin@example.com and password '123456789'

Supplier Registeration & Login 
Supplier can visit home page and click on register if supplier visiing first time on app. fill up required field and click on sign up button. now you are signed in 

Supplier can also login directly if he already sign up earlier and want to visit again. 


# Admin Dashboard 
Admin can only populate data
How to populate suplliers and there products data 
Admin dashbaod will have import button. click on import button and upload supplier product data master file in csv. 
sample master file can find in app main directory 


 




