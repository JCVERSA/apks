package com.amazonaws.services.s3.internal;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.http.HttpResponseHandler;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.S3ResponseMetadata;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.util.DateUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public abstract class AbstractS3ResponseHandler<T> implements HttpResponseHandler<AmazonWebServiceResponse<T>> {

    private static final Log f18001a = LogFactory.b(S3MetadataResponseHandler.class);

    private static final Set f18002b;

    static {
        HashSet hashSet = new HashSet();
        f18002b = hashSet;
        hashSet.add(HttpHeaders.DATE);
        hashSet.add("Server");
        hashSet.add("x-amz-request-id");
        hashSet.add("x-amz-id-2");
        hashSet.add("X-Amz-Cf-Id");
        hashSet.add("Connection");
    }

    @Override
    public boolean b() {
        return false;
    }

    protected AmazonWebServiceResponse c(HttpResponse httpResponse) {
        AmazonWebServiceResponse amazonWebServiceResponse = new AmazonWebServiceResponse();
        String str = (String) httpResponse.c().get("x-amz-request-id");
        String str2 = (String) httpResponse.c().get("x-amz-id-2");
        String str3 = (String) httpResponse.c().get("X-Amz-Cf-Id");
        HashMap map = new HashMap();
        map.put("AWS_REQUEST_ID", str);
        map.put("HOST_ID", str2);
        map.put("CLOUD_FRONT_ID", str3);
        amazonWebServiceResponse.c(new S3ResponseMetadata(map));
        return amazonWebServiceResponse;
    }

    protected void d(HttpResponse httpResponse, ObjectMetadata objectMetadata) {
        for (Map.Entry entry : httpResponse.c().entrySet()) {
            String str = (String) entry.getKey();
            if (str.startsWith("x-amz-meta-")) {
                objectMetadata.addUserMetadata(str.substring(11), (String) entry.getValue());
            } else if (f18002b.contains(str)) {
                f18001a.a(String.format("%s is ignored.", str));
            } else if (str.equalsIgnoreCase("Last-Modified")) {
                try {
                    objectMetadata.setHeader(str, ServiceUtils.e((String) entry.getValue()));
                } catch (Exception e10) {
                    f18001a.i("Unable to parse last modified date: " + ((String) entry.getValue()), e10);
                }
            } else if (str.equalsIgnoreCase(HttpHeaders.CONTENT_LENGTH)) {
                try {
                    objectMetadata.setHeader(str, Long.valueOf(Long.parseLong((String) entry.getValue())));
                } catch (NumberFormatException e11) {
                    f18001a.i("Unable to parse content length: " + ((String) entry.getValue()), e11);
                }
            } else if (str.equalsIgnoreCase("ETag")) {
                objectMetadata.setHeader(str, ServiceUtils.f((String) entry.getValue()));
            } else if (str.equalsIgnoreCase(HttpHeaders.EXPIRES)) {
                try {
                    objectMetadata.setHttpExpiresDate(DateUtils.i((String) entry.getValue()));
                } catch (Exception e12) {
                    f18001a.i("Unable to parse http expiration date: " + ((String) entry.getValue()), e12);
                }
            } else if (str.equalsIgnoreCase("x-amz-expiration")) {
                new ObjectExpirationHeaderHandler().a(objectMetadata, httpResponse);
            } else if (str.equalsIgnoreCase("x-amz-restore")) {
                new ObjectRestoreHeaderHandler().a(objectMetadata, httpResponse);
            } else if (str.equalsIgnoreCase("x-amz-request-charged")) {
                new S3RequesterChargedHeaderHandler().a(objectMetadata, httpResponse);
            } else if (str.equalsIgnoreCase("x-amz-mp-parts-count")) {
                try {
                    objectMetadata.setHeader(str, Integer.valueOf(Integer.parseInt((String) entry.getValue())));
                } catch (NumberFormatException e13) {
                    throw new AmazonClientException("Unable to parse part count. Header x-amz-mp-parts-count has corrupted data" + e13.getMessage(), e13);
                }
            } else {
                objectMetadata.setHeader(str, entry.getValue());
            }
        }
    }
}
