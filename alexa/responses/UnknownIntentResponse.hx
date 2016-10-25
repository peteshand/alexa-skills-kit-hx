package alexa.responses;

import alexa.payload.intent.Intent;
import alexa.payload.response.ResponsePayload;

/**
 * ...
 * @author P.J.Shand
 */
class UnknownIntentResponse extends ResponsePayload
{

	public function new(intent:Intent) 
	{
		super();
		
		if (intent == null) {
			response.outputSpeech.text = "There is no process registered with no intent";
		}
		else {
			response.outputSpeech.text = "There is no process registered to the '" + intent.name + "'";
		}
	}
}