# Bamazon -Project 
1. Create a MySQL Database called `bamazon`.

2. Then create a Table inside of that database called `products`.

3. The products table should have each of the following columns:

   * item_id (unique id for each product)

   * product_name (Name of product)

   * department_name

   * price (cost to customer)

   * stock_quantity (how much of the product is available in stores)

4. Populate this database with around 10 different products. (i.e. Insert "mock" data rows into this database and table).

5. Then create a Node application called `bamazonCustomer.js`. Running this application will first display all of the items available for sale. Include the ids, names, and prices of products for sale.

<a href="https://imgur.com/0IyKKa6"><img src="https://i.imgur.com/0IyKKa6.png" title="source: imgur.com" /></a>

6. The app should then prompt users with two messages.

   * The first should ask them the ID of the product they would like to buy.
   * The second message should ask how many units of the product they would like to buy.
   
   <a href="https://imgur.com/g22LTwu"><img src="https://i.imgur.com/g22LTwu.png" title="source: imgur.com" /></a>

7. Once the customer has placed the order, your application should check if your store has enough of the product to meet the customer's request.

   * If not, the app should log a phrase like `Insufficient quantity!`, and then prevent the order from going through.
   
   <a href="https://imgur.com/zp16bxN"><img src="https://i.imgur.com/zp16bxN.png" title="source: imgur.com" /></a>

8. However, if your store _does_ have enough of the product, you should fulfill the customer's order.
   * This means updating the SQL database to reflect the remaining quantity.
   * Once the update goes through, show the customer the total cost of their purchase.
   
   <a href="https://imgur.com/XkhNIXQ"><img src="https://i.imgur.com/XkhNIXQ.png" title="source: imgur.com" /></a>
   
   In MYSQL is reflects the quantity updating, I made the stock quantity for all the products 30 so it was easier to tell when the app ran if it was updating.
   
   
   <a href="https://imgur.com/EWZbOd9"><img src="https://i.imgur.com/EWZbOd9.png" title="source: imgur.com" /></a>
