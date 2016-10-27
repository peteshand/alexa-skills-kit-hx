// =================================================================================================
//
//	Alexa Haxe SDK
//
//	This program is free software. You can redistribute and/or modify it
//	in accordance with the terms of the accompanying license agreement.
//
// =================================================================================================

/**
 * ...
 * @author P.J.Shand
 */

package alexa;

import alexa.connection.IConnection;
import alexa.connection.NodeConnection;
import alexa.process.IProcess;
import alexa.process.Processes;
import alexa.tasks.Task;
import alexa.tasks.Tasks;
import js.node.Buffer;

class Alexa
{
	static private var connection:IConnection;
	static private var tasks:Tasks;
	static private var processes:Processes;
	
	public static function __init__():Void
	{
		tasks = new Tasks();
		processes = new Processes();
		
		connection = new NodeConnection(OnAlexaRequest);
	}
	
	public function new() { }
	
	static public function connect(key:Buffer, cert:Buffer) 
	{
		connection.connect(key, cert);
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