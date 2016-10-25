package alexa.amazon;
import alexa.actions.Actions;
import js.node.Buffer;
import js.node.Fs;
import js.node.Https;
import js.node.Tls.TlsCreateServerOptions;
import js.node.events.EventEmitter;
import js.node.http.IncomingMessage;
import js.node.http.ServerResponse;
import js.node.https.Server;
import alexa.tasks.Task;

/**
 * ...
 * @author P.J.Shand
 */
class AmazonConnection
{
	public var eventEmitter = new EventEmitter();
	
	public function new() { }
	
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
        trace('Node Server running at https://0.0.0.0:443/');
	}
	
	private function OnRequest(request:IncomingMessage, response:ServerResponse) 
	{		
		if (request.method == 'POST') {
			var jsonString = '';
			request.on('data', function (data:String) {
				jsonString += data;
				trace("jsonString = " + jsonString);
				var task:Task = new Task(jsonString, request, response);
				eventEmitter.emit(Actions.ECHO_MESSAGE, task);
			});
		}
	}
}