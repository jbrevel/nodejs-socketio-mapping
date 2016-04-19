/*
Author: John Loughrey
Date: 19/04/2016
*/

/* Add all required plugins */
var app     =     require("express")();
var mysql   =     require("mysql");
var http    =     require('http').Server(app);
var io      =     require("socket.io")(http,{forceNew: true});

/* MySQL connection pool details.*/
var pool    =    mysql.createPool({
      connectionLimit   :   100,
      host              :   'localhost',
      user              :   'dev',
      password          :   'development',
      database          :   'messages',
      port              :   '8889',
      debug             :   false
});

app.get("/",function(req,res){
    res.sendFile(__dirname + '/index.html');
});


/*  Initialise object to store required counts.  */
var messageids = {}; 

/*  Triggered on client connecting to the server.  */
io.on('connection',function(socket){  
    console.log("User connected to geo map");
    clients.push(socket.handshake.query.socketid);
    socket.join(socket.handshake.query.socketid);
    
    socket.on('getmessages', function (data) {
        /* Set prev_id to zero */
        messageids[socket.id] = 0;

        /* Set a 5 second interval to query db table for next geo message */
        setInterval(function(data){
            pool.getConnection(function(err,connection){
                var q = "SELECT * FROM geomessages WHERE message_id > "+messageids[socket.id]+" ORDER BY message_id ASC LIMIT 1";
                connection.query(q, function(err, rows, fields) {
                  if (err) throw err;
                  //For all messages in the db emit message to individual client
                  for(var i=0;i<rows.length;i++){
                    io.sockets.connected[socket.id].emit('message','{"type":"add","lat":"'+rows[i].latitude+'","lng":"'+rows[i].longitude+'","msg":"'+rows[i].message+'","username":"'+rows[i].username+'"}'); 
                    if(i==rows.length-1){
                        messageids[socket.id] = rows[i].message_id;
                        console.log(messageids[socket.id]);
                    }
                  }
                });
            });
        },3000);
    });
});

/* Listen on port 3000 */
http.listen(3000,function(){
    console.log("Listening on 3000"); 
});
