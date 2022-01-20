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
    
    connection.query('SELECT * from animek INNER JOIN leiras ON animek.anime_id=leiras.anime_leiras_id', function (err, rows, fields) {
       
      
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
 
 

  })
  //--------------------------------------alap vége---------------------------------

  //-------------------------------------szavazatfelvitel---------------------------

  app.post('/szavazatfelvitel', (req, res) => {

    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'animedb'
    })
    
    connection.connect()
    
    connection.query('INSERT into szavazatok values (null, '+req.body.bevitel1+' )', function (err, rows, fields) {
      if (err) throw err
    
      console.log("Szavazatát rögzítettük!")
      res.send("Szavazatát rögzítettük!")
    })
    
    connection.end()
  
  })

  //-------------------------------------Megjelenés----------------------------------
  app.get('/ketezer', (req, res) => {
  

    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'animedb'
  })
  
  connection.connect()
      
      connection.query('SELECT * FROM `animek` WHERE `anime_megjdatum`<="2000-12-31"', function (err, rows, fields) {
         // if (err) throw err;
        
        console.log(rows)
        res.send(rows)
      })
      
      connection.end()
   
   
  
    })
  
    app.get('/ezertiz', (req, res) => {
    
  
      var mysql = require('mysql')
      var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'animedb'
    })
    
    connection.connect()
        
        connection.query('SELECT * FROM `animek` WHERE `anime_megjdatum`>"2000-12-31" AND anime_megjdatum<"2011-01-01"', function (err, rows, fields) {
           // if (err) throw err;
          
          console.log(rows)
          res.send(rows)
        })
        
        connection.end()
     
     
    
      })
  
      app.get('/ezerhusz', (req, res) => {
    
  
        var mysql = require('mysql')
        var connection = mysql.createConnection({
          host: 'localhost',
          user: 'root',
          password: '',
          database: 'animedb'
      })
      
      connection.connect()
          
          connection.query('SELECT * FROM `animek` WHERE `anime_megjdatum`>"2010-12-31" AND anime_megjdatum<"2021-01-01"', function (err, rows, fields) {
             // if (err) throw err;
            
            console.log(rows)
            res.send(rows)
          })
          
          connection.end()
       
       
      
        })
  
        app.get('/huszfelett', (req, res) => {
    
  
          var mysql = require('mysql')
          var connection = mysql.createConnection({
            host: 'localhost',
            user: 'root',
            password: '',
            database: 'animedb'
        })
        
        connection.connect()
            
            connection.query('SELECT * FROM `animek` WHERE `anime_megjdatum`>"2020-12-31"', function (err, rows, fields) {
               // if (err) throw err;
              
              console.log(rows)
              res.send(rows)
            })
            
            connection.end()
         
         
        
          })
          //-----------------------------------Műfaj szerinti keresés-----------

          app.get('/Fantasy', (req, res) => {
  

            var mysql = require('mysql')
            var connection = mysql.createConnection({
              host: 'localhost',
              user: 'root',
              password: '',
              database: 'animedb'
          })
          
          connection.connect()
              
              connection.query('SELECT * FROM `animek` WHERE `anime_mufaj` LIKE "%Fantasy%"', function (err, rows, fields) {
                 // if (err) throw err;
                
                console.log(rows)
                res.send(rows)
              })
              
              connection.end()
           
           
          
            })
          
          
          app.get('/Drama', (req, res) => {
            
          
            var mysql = require('mysql')
            var connection = mysql.createConnection({
              host: 'localhost',
              user: 'root',
              password: '',
              database: 'animedb'
          })
          
          connection.connect()
              
              connection.query('SELECT * FROM `animek` WHERE `anime_mufaj` LIKE "%Drama%"', function (err, rows, fields) {
                 // if (err) throw err;
                
                console.log(rows)
                res.send(rows)
              })
              
              connection.end()
           
           
          
            })
          
          
          
          app.get('/Comedy', (req, res) => {
            
          
            var mysql = require('mysql')
            var connection = mysql.createConnection({
              host: 'localhost',
              user: 'root',
              password: '',
              database: 'animedb'
          })
          
          connection.connect()
              
              connection.query('SELECT * FROM `animek` WHERE `anime_mufaj` LIKE "%Comedy%"', function (err, rows, fields) {
                 // if (err) throw err;
                
                console.log(rows)
                res.send(rows)
              })
              
              connection.end()
           
           
          
            })
          
          app.get('/Action', (req, res) => {
            
          
            var mysql = require('mysql')
            var connection = mysql.createConnection({
              host: 'localhost',
              user: 'root',
              password: '',
              database: 'animedb'
          })
          
          connection.connect()
              
              connection.query('SELECT * FROM `animek` WHERE `anime_mufaj` LIKE "%Action%"', function (err, rows, fields) {
                 // if (err) throw err;
                
                console.log(rows)
                res.send(rows)
              })
              
              connection.end()
           
           
          
            })
  
};
