package alexa.payloads.response.response;

import alexa.payloads.response.response.card.Card;
import alexa.payloads.response.response.outputSpeech.OutputSpeech;
import alexa.payloads.response.response.reprompt.Reprompt;

/**
 * ...
 * @author P.J.Shand
 */
class Response
{
	public var outputSpeech = new OutputSpeech();
	public var shouldEndSession:Bool = true;
	public var reprompt = new Reprompt();
	public var card = new Card();
	
	public function new() { }
}

