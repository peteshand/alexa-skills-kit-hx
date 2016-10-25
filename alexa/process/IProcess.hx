package alexa.process;
import alexa.tasks.Task;

/**
 * @author P.J.Shand
 */
interface IProcess 
{
	function execute(task:Task):Void;
}