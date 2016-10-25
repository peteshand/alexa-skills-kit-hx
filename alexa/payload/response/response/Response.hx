package alexa.payload.response.response;

import alexa.payload.response.response.card.Card;
import alexa.payload.response.response.outputSpeech.OutputSpeech;
import alexa.payload.response.response.reprompt.Reprompt;

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