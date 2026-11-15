package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.transform.Unmarshaller;
import java.util.Map;

public class S3XmlResponseHandler<T> extends AbstractS3ResponseHandler<T> {

    private static final Log f18051e = LogFactory.c("com.amazonaws.request");

    private Unmarshaller f18052c;

    private Map f18053d;

    public S3XmlResponseHandler(Unmarshaller unmarshaller) {
        this.f18052c = unmarshaller;
    }

    @Override
    public AmazonWebServiceResponse a(HttpResponse httpResponse) {
        AmazonWebServiceResponse amazonWebServiceResponseC = c(httpResponse);
        this.f18053d = httpResponse.c();
        if (this.f18052c != null) {
            Log log = f18051e;
            log.k("Beginning to parse service response XML");
            Object objA = this.f18052c.a(httpResponse.b());
            log.k("Done parsing service response XML");
            amazonWebServiceResponseC.d(objA);
        }
        return amazonWebServiceResponseC;
    }
}
