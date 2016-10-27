package alexa.tasks;

import haxe.Json;
import haxe.Timer;
import js.node.http.IncomingMessage;
import js.node.http.ServerResponse;

import alexa.payloads.Payloads;
import alexa.payloads.response.ResponsePayload;

/**
 * ...
 * @author P.J.Shand
 */
class Task
{
	private static var indexCount:Int = 0;
	public var data:String;
	public var index:Int = 0;
	
	public var request:IncomingMessage;
	private var response:ServerResponse;
	
	public function new(data:String, request:IncomingMessage, response:ServerResponse) 
	{
		this.data = data;
		this.request = request;
		this.response = response;
		
		index = indexCount;
		indexCount++;
	}
	
	public function responsed(responsePayload:ResponsePayload):Void 
	{
		if (responsePayload.response.reprompt.outputSpeech.text == "") {
			responsePayload.response.reprompt = null;
		}
		var data:String = Json.stringify(responsePayload);
		response.writeHead(200, {'Content-Type': 'text/plain'});
		response.end(data);
	}
}