#! groovy
@Grab('net.sf.json-lib:json-lib:2.3:jdk15')
import net.sf.json.groovy.JsonSlurper;
import groovy.json.JsonOutput;
import groovy.json.JsonBuilder; 

url = "https://www.googleapis.com/civicinfo/v2/representatives?key=AIzaSyC69XE-YYch343Km96PBhvcfnriNjcXdNw&address=64%20Dean%20rd%20Sacramento%20CA%2095815"

// jsonOut = new groovy.json.JsonSlurper().parseText(new URL(serviceUrl).getText())
//response = new groovy.json.JsonSlurper().parseText(new URL(serviceUrl).getText())
response = new JsonSlurper().parse (url.toURL())

String json = new JsonBuilder(response).toPrettyString()
println(json)

// JsonOutput.prettyPrint(jsonOut.toString)

// JsonOutput.prettyPrint(jsonOut.toString)
