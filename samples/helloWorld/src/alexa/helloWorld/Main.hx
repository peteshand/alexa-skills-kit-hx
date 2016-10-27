package alexa.helloWorld;

import alexa.helloWorld.intents.Intents;
import alexa.helloWorld.process.HelloWorldProcess;

/**
 * ...
 * @author P.J.Shand
 */

class Main 
{
	static function main() 
	{
		var key = Fs.readFileSync('self_signed/private-key.pem');
		var cert = Fs.readFileSync('self_signed/certificate.pem');
		
		Alexa.connect(key, cert);
		Alexa.addProcess(Intents.HelloWorldIntent, new HelloWorldProcess());
	}
}