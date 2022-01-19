const { authJwt } = require("../middleware");
const controller = require("../controllers/user.controller");

module.exports = function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });

  //saját backend végpontok
  app.get('/animek', (req, res) => {
 
  var mysql = require('mysql')
  var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'animedb'
})
    
    connection.connect()
    
    connection.query('SELECT * from animek', function (err, rows, fields) {
       
      
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
 
 

  })
  
};
