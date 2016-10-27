package alexa.payloads;

/**
 * ...
 * @author P.J.Shand
 */

 typedef IncomingPayload =
{
	request:AlexaRequest,
	session:AlexaSession,
	version:String
	
}

typedef Intent =
{
	name:String,
    slots:Slots
}

typedef AlexaRequest =
{
	type:String,
    requestId:String,
    timestamp:String,
    intent:Intent,
    locale:String
}

typedef AlexaSession =
{
	sessionId:String,
	application:Application,
	attributes:Dynamic,
	user:User
}

typedef Application =
{
	applicationId:String	
}

typedef User =
{
	userId:String	
}

typedef Slot =
{
	name:String,
	value:String
}

typedef Slots =
{
	?Video:Slot,
	?ShowName:Slot
}