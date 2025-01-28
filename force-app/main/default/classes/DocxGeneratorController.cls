public class DocxGeneratorController {
    public PageReference generateAndDownloadDocx() {
        String content = 'Hello, this is a generated .docx document!';
        Blob docxBlob = createDocxBlob(content);
        
        PageReference pageRef = Page.DocxDownloadPage;
        pageRef.getParameters().put('filename', 'generated.docx');
        pageRef.getParameters().put('content', EncodingUtil.base64Encode(docxBlob));
        
        return pageRef;
    }
    
    private Blob createDocxBlob(String content) {
        String docxXml = '<w:document xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main">'
                        + '<w:body>'
                        + '<w:p>'
                        + '<w:r>'
                        + '<w:t>' + content + '</w:t>'
                        + '</w:r>'
                        + '</w:p>'
                        + '</w:body>'
                        + '</w:document>';
        
        String docxTemplate = '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
                            + '<pkg:package xmlns:pkg="http://schemas.microsoft.com/office/2006/xmlPackage">'
                            + '<pkg:part pkg:name="/word/document.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.wordprocessingml.document.main+xml">'
                            + docxXml
                            + '</pkg:part>'
                            + '</pkg:package>';
        
        return Blob.valueOf(docxTemplate);
    }
}