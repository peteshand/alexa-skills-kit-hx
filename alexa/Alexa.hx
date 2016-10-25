package alexa;
import alexa.actions.Actions;
import alexa.amazon.AmazonConnection;
import alexa.process.IProcess;
import alexa.process.Processes;
import alexa.tasks.Task;
import alexa.tasks.Tasks;
import js.node.Buffer;

/**
 * ...
 * @author P.J.Shand
 */
class Alexa
{
	static private var amazonConnection:AmazonConnection;
	static private var tasks:Tasks;
	static private var processes:Processes;
	
	public static function __init__():Void
	{
		amazonConnection = new AmazonConnection();
		amazonConnection.eventEmitter.addListener(Actions.ECHO_MESSAGE, OnAlexaRequest);
		
		tasks = new Tasks();
		processes = new Processes();
		
	}
	
	public function new() { }
	
	static public function connect(key:Buffer, cert:Buffer) 
	{
		amazonConnection.connect(key, cert);
	}
	
	static public function addProcess(intent:String, process:IProcess) 
	{
		processes.add(intent, process);
	}
	
	static private function OnAlexaRequest(task:Task):Void 
	{
		processes.execute(task);
		tasks.add(task);
	}
}