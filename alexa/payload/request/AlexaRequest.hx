package alexa.payload.request;

import alexa.payload.intent.Intent;
/**
 * @author P.J.Shand
 */
typedef AlexaRequest =
{
	type:String,
    requestId:String,
    timestamp:String,
    intent:Intent,
    locale:String
}
    