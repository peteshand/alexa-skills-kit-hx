package alexa.connection;

import alexa.tasks.Task;
import js.node.Buffer;

/**
 * @author P.J.Shand
 */
interface IConnection 
{
	function connect(key:Buffer, cert:Buffer):Void;
}