var app = require('../server'),
  assert = require('assert'),
  http = require('http');

describe('GET /', function(){
  before(function() {
      var port = '8080';
      app.set('port', port);
      var server = http.createServer(app);
      server.listen(app.get('port'), function(){            
		console.log('Express server listening on port ' + app.get('port')); 
	});
  });

  it('should return a 200 status code', function (done){
    http.get({ host: 'localhost', port: app.get('port') }, function(res) {
      assert.deepEqual(res.statusCode, 200);
      done();
    }).on('error', function(e) {
      throw new Error(e);
    });
  });

});
