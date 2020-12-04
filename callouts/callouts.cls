
//  Setup callout
//  click "gear icon" on top right -> click "Setup" -> insert in input "Quick Find" search "apex classes" under Custom Code
//  click "New" button -> edit opens and setup code block

public class CalloutClass {

    @future(callout=true)
    public static void makeGETCallout() {
        HttpRequest request = new HttpRequest();
        // Set the endpoint URL.
        String endpoint = 'https://example.free.beeceptor.com';
        request.setEndPoint(endpoint);
        // Set the HTTP verb to GET.
        request.setMethod('GET');
        // Send the HTTP request and get the response.
        HttpResponse response = new HTTP().send(request);
    }

    @future(callout=true)
    public static void makePOSTCallout() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        // Set the endpoint URL.
        String endpoint = 'https://example.free.beeceptor.com';
        request.setEndPoint(endpoint);
        // Set the HTTP verb to GET.
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setBody('{"name":"mighty moose"}');
        // Send the HTTP request and get the response.
        HttpResponse response = http.send(request);
        // Parse the JSON response
        if (response.getStatusCode() != 201) {
            System.debug('The status code returned was not expected: ' +
                response.getStatusCode() + ' ' + response.getStatus());
        } else {
            System.debug(response.getBody());
        }   
    }

}

// Resources
// rest callouts
// https://trailhead.salesforce.com/content/learn/modules/apex_integration_services/apex_integration_rest_callouts
// api testing
// https://beeceptor.com/
// name spaces not possible
// https://stackoverflow.com/questions/8377510/organizing-apex-classes-under-namespace