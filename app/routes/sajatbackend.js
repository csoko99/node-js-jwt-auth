const { authJwt } = require("../middleware");
const controller = require("../controllers/user.controller");
const fileupload = require("express-fileupload");



module.exports = function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });

  app.use(fileupload());

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
    
    //connection.query('SELECT * from animek INNER JOIN leiras ON animek.anime_id=leiras.anime_leiras_id', function (err, rows, fields) {
      connection.query('SELECT * from animek', function (err, rows, fields) {  
      
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
 
 

  })
  //--------------------------------------alap vége---------------------------------

//----------------------------------------képfeltötlés---------------------------------


  app.post("/upload", (req, res) => {
    const newpath = "./kepek/";
    const file = req.files.file;
    const filename = file.name;
  
    file.mv(`${newpath}${filename}`, (err) => {
      if (err) {
        return res.status(500).send({ message: "File upload failed", code: 200 });
      }
        return res.status(200).send({ message: "File Uploaded", code: 200 });
    });
  });

//----------------------------------------törlés------------------------------------
app.post('/torles', (req, res) => {

  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'animedb'
  })
  
  connection.connect()
  
  connection.query('DELETE FROM animek WHERE anime_id='+req.body.bevitel1, function (err, rows, fields) {
    if (err) throw err
  
    console.log("A törlés sikeres volt!")
    res.send("A törlés sikeres volt!")
  })
  
  connection.end()

})

app.post('/leiras_torles', (req, res) => {

  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'animedb'
  })
  
  connection.connect()
  
  connection.query('DELETE FROM leiras WHERE anime_leiras_id='+req.body.bevitel1, function (err, rows, fields) {
    if (err) throw err
  
    console.log("A törlés sikeres volt!")
    res.send("A törlés sikeres volt!")
  })
  
  connection.end()

})
//-------------------------------Szavazás lekérdezés----------------------------
app.get('/Szavazatok', (req, res) => {
            
          
  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'animedb'
})

connection.connect()
    
    connection.query('SELECT anime_nev, anime_id , COUNT(szavazatok.szavazat_animeid) AS darab FROM `animek`INNER JOIN szavazatok ON animek.anime_id=szavazatok.szavazat_animeid GROUP BY (szavazatok.szavazat_animeid);', function (err, rows, fields) {
       // if (err) throw err;
      
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
 
 

  })
  //-------------------------------------felvitel---------------------------

  app.post('/anime_felvitel', (req, res) => {

    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'animedb'
    })
    
    connection.connect()
    
    //connection.query('INSERT INTO `animek` (`anime_id`, `anime_nev`, `anime_megjdatum`, `anime_mufaj`, `anime_evadsz`) VALUES (NULL, '+req.body.bevitel1+', '+req.body.bevitel2+', '+req.body.bevitel3+', '+req.body.bevitel4+');', function (err, rows, fields) {
      

    connection.query("INSERT INTO animek  VALUES (NULL, '"+req.body.bevitel1+"', '"+req.body.bevitel2+"', '"+req.body.bevitel3+"', '"+req.body.bevitel4+"','"+req.body.bevitel5+"','"+req.body.bevitel6+"');", function (err, rows, fields) {
      if (err) throw err
      
    
      console.log("Felvitelt rögzítettük!")
      res.send("Felvitelt rögzítettük!")
    })
    
    connection.end()
  
  })



  app.post('/leiras_felvitel', (req, res) => {

    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'animedb'
    })
    
    connection.connect()
    
   
    connection.query("INSERT INTO leiras  VALUES (NULL, '"+req.body.leiras+"');", function (err, rows, fields) {
      if (err) throw err
      
    
      console.log("Felvitelt rögzítettük!")
    })
    
    connection.end()
  
  })


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

  //-------------------------------------leiras----------------------------------
  
  app.get('/leiras', (req, res) => {
  

    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'animedb'
  })
  
  connection.connect()
      
      connection.query('SELECT * FROM `leiras`', function (err, rows, fields) {
         // if (err) throw err;
        
        console.log(rows)
        res.send(rows)
      })
      
      connection.end()
   
   
  //-----------------------------evszam szerint------------------------------
    })
  
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
