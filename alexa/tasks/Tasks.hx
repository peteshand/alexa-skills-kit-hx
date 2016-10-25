package alexa.tasks;

import alexa.tasks.Task;

/**
 * ...
 * @author P.J.Shand
 */
class Tasks
{
	var items:Array<Task> = [];
	
	public function new() { }
	
	public function add(task:Task) 
	{
		trace("task.index = " + task.index);
		items.push(task);
	}
}