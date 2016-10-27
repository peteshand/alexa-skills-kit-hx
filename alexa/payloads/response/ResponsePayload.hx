package alexa.payloads.response;

import alexa.payloads.response.response.Response;
import alexa.payloads.response.sessionAttributes.SessionAttributes;

/**
 * ...
 * @author P.J.Shand
 */
class ResponsePayload
{
	public var version:Float = 1.0;
	public var response = new Response();
	public var sessionAttributes = new SessionAttributes();
	
	public function new() 
	{
		
	}	
}