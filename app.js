
var mysql = require("mysql");
// Inquirer
var inquirer = require("inquirer");

var connection = mysql.createConnection({
 host:'localhost',
 port: '3306',
 user:'root',
 password: 'password',
 database: 'bamazon'
});

connection.connect();

connection.query('SELECT * FROM products', function (error, results, fields) {
    if (error) throw error;
    
    console.table(results, ["item_id","product_name","price"]);
    runList();
  });


let itemId;

function runList() {
    
 inquirer.prompt({
     name: "item_id",
     type: "input",
     message: "Please insert the item_id of the product you would like to purchase: "
   })
   .then(function(answer) {
       itemId= answer.item_id;
       inquirer.prompt({
        name: "quantity",
        type: "input",
        message: "How many units would you like to purchase? "
      })
      .then(function(answer) {
          console.log(answer);
          connection.query("SELECT * FROM products WHERE item_id = "+itemId, function(error, results,fields){
              if (error) throw error;

              let quantity=results[0].stock_quantity;
              let price=results[0].price;

              if(quantity < answer.quantity){
                  console.log("Insufficient Quantity");
                  connection.end();
              }else{
                  let newQuantity = quantity-answer.quantity;
                connection.query('UPDATE products SET stock_quantity = ? WHERE item_id = ?', [newQuantity, itemId], function (error, results, fields) {
                    if (error) throw error;
                    console.log("Total cost : $" +answer.quantity*price);
                  });
              }
              
          })
      })

   })
}
