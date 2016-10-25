package alexa.process;
import alexa.process.IProcess;
import alexa.responses.UnknownIntentResponse;
import alexa.tasks.Task;
import alexa.payload.incoming.IncomingPayload;
import haxe.Json;

/**
 * ...
 * @author P.J.Shand
 */
class Processes
{
	var items = new Map<String, IProcess>();
	
	public function new() 
	{
		
	}
	
	public function add(intent:String, process:IProcess) 
	{
		items.set(intent, process);
	}
	
	public function execute(task:Task) 
	{
		var data:IncomingPayload = Json.parse(task.data);
		if (data.request.intent != null) {
			var process:IProcess = items.get(data.request.intent.name);
			if (process != null) {
				process.execute(task);
				return;
			}
		}
		
		task.responsed(new UnknownIntentResponse(data.request.intent));
	}
	
}