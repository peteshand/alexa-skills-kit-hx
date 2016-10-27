package alexa.helloWorld.process;

import alexa.payloads.response.ResponsePayload;
import alexa.process.IProcess;
import alexa.tasks.Task;

/**
 * ...
 * @author P.J.Shand
 */
class HelloWorldProcess implements IProcess
{
	public function new() { }
	
	public function execute(task:Task):Void 
	{
		var responsePayload = new ResponsePayload();
		responsePayload.response.outputSpeech.text = "Hello World";
		task.responsed(responsePayload);
	}
	
}