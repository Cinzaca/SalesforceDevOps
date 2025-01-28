public class BnrRoborService {
    public static String getRoborRate() {
        String roborRate = '';
        try {
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint('callout:BNR_Robor');
            request.setMethod('GET');
            HttpResponse response = http.send(request);
            
            if (response.getStatusCode() == 200) {
                Dom.Document doc = new Dom.Document();
                doc.load(response.getBody());
                Dom.XMLNode root = doc.getRootElement();
                
                // Navighează prin elementele XML pentru a găsi rata ROBOR
                Dom.XMLNode bodyNode = root.getChildElement('Body', null);
                Dom.XMLNode cubeNode = bodyNode.getChildElement('Cube', null);
                List<Dom.XMLNode> rateNodes = cubeNode.getChildElements();
                
                for (Dom.XMLNode rateNode : rateNodes) {
                    String c = rateNode.getAttributeValue('currency', null);
                    if (c != null && c == 'ROBOR') {
                        roborRate = rateNode.getText();
                        break;
                    }
                }
            }
        } catch (Exception e) {
            System.debug('Error: ' + e.getMessage());
        }
        return roborRate;
    }
}