package alexa.connection;

import js.node.Buffer;
import js.node.Https;
import js.node.Tls.TlsCreateServerOptions;
import js.node.http.IncomingMessage;
import js.node.http.ServerResponse;
import js.node.https.Server;

import alexa.tasks.Task;

/**
 * ...
 * @author P.J.Shand
 */
class NodeConnection implements IConnection
{
	var callback:Task-> Void;
	
	public function new(callback:Task -> Void)
	{
		this.callback = callback;
	}
	
	public function connect(key:Buffer, cert:Buffer) 
	{
		var options:TlsCreateServerOptions = {
			key:key,
			cert:cert
		};
		
		var server:Server = Https.createServer(options, OnRequest);
		server.listen(443, "0.0.0.0", function () {
			trace('Started!');
		});
        trace('Alexa Node Server running at https://0.0.0.0:443/');
	}
	
	private function OnRequest(request:IncomingMessage, response:ServerResponse) 
	{		
		if (request.method == 'POST') {
			var jsonString = '';
			request.on('data', function (data:String) {
				jsonString += data;
				trace("jsonString = " + jsonString);
				callback(new Task(jsonString, request, response));
			});
		}
	}
}