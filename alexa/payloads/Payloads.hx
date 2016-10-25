package alexa.payloads;

/**
 * ...
 * @author P.J.Shand
 */
class Payloads
{
	public function new() { }
}

typedef MessageObject =
{
	action:String,
	payload:Dynamic
}

typedef ConnectionPayload =
{
	port:Int,
	ipAddress:String
}

typedef EchoPayload =
{
	index:Int,
	data:String
}

typedef DevicePayload =
{
	index:Int,
	data:String
}