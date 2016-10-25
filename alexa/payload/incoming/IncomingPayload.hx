package alexa.payload.incoming;

import alexa.payload.session.AlexaSession;
import alexa.payload.request.AlexaRequest;
/**
 * @author P.J.Shand
 */
typedef IncomingPayload =
{
	request:AlexaRequest,
	session:AlexaSession,
	version:String
	
}