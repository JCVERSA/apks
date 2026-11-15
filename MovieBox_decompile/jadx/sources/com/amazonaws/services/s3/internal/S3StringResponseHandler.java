package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.util.StringUtils;
import java.io.IOException;
import java.io.InputStream;

public class S3StringResponseHandler extends AbstractS3ResponseHandler<String> {
    @Override
    public AmazonWebServiceResponse a(HttpResponse httpResponse) throws IOException {
        AmazonWebServiceResponse amazonWebServiceResponseC = c(httpResponse);
        byte[] bArr = new byte[1024];
        StringBuilder sb2 = new StringBuilder();
        InputStream inputStreamB = httpResponse.b();
        while (true) {
            int i10 = inputStreamB.read(bArr);
            if (i10 <= 0) {
                amazonWebServiceResponseC.d(sb2.toString());
                return amazonWebServiceResponseC;
            }
            sb2.append(new String(bArr, 0, i10, StringUtils.f18387a));
        }
    }
}
