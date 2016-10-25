package alexa.payload.session;

/**
 * @author P.J.Shand
 */
typedef AlexaSession =
{
	sessionId:String,
	application:Application,
	attributes:Dynamic,
	user:User
}