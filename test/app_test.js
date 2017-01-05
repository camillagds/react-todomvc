var app = require('../server'),
  assert = require('assert'),
  http = require('http');

  
describe('GET /', function(){
  before(function() {
      var port = process.env.PORT || 8080;
      app.set('port', port);
      var server = http.createServer(app);
      server.listen(app.get('port'));
  });

  it('should return a 200 status code', function (done){
	var portapp = process.env.PORT || 8080;
    http.get({ host: '127.0.0.1', port: 'portapp' }, function(res) {
      assert.deepEqual(res.statusCode, 200);
      done();
    }).on('error', function(e) {
      throw new Error(e);
    });
  });

});
