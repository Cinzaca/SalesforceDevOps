@isTest
public class BnrRoborServiceTest {
    @isTest
    static void testGetRoborRate() {
        // Mock HTTP response pentru testare
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/xml');
        response.setBody('<DataSet><Body><Cube><Rate currency="ROBOR">2.05</Rate></Cube></Body></DataSet>');
        response.setStatusCode(200);
        
        //Test.setMock(HttpCalloutMock.class, new HttpCalloutMockImpl(response));
        
        // Apelează metoda pentru a obține rata ROBOR
        Test.startTest();
        String roborRate = BnrRoborService.getRoborRate();
        Test.stopTest();
        
        // Verifică dacă rata ROBOR a fost obținută corect
        System.assertEquals('2.05', roborRate);
    }
}