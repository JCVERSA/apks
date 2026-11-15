package com.amazonaws.services.s3.model;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.amazonaws.AmazonWebServiceRequest;

public class ResponseHeaderOverrides extends AmazonWebServiceRequest {

    private static final String[] f18179g = {RequestParameters.RESPONSE_HEADER_CACHE_CONTROL, RequestParameters.RESPONSE_HEADER_CONTENT_DISPOSITION, RequestParameters.RESPONSE_HEADER_CONTENT_ENCODING, RequestParameters.RESPONSE_HEADER_CONTENT_LANGUAGE, RequestParameters.RESPONSE_HEADER_CONTENT_TYPE, RequestParameters.RESPONSE_HEADER_EXPIRES};

    private String f18180a;

    private String f18181b;

    private String f18182c;

    private String f18183d;

    private String f18184e;

    private String f18185f;

    public String b() {
        return this.f18183d;
    }

    public String c() {
        return this.f18184e;
    }

    public String e() {
        return this.f18185f;
    }

    public String g() {
        return this.f18181b;
    }

    public String getContentType() {
        return this.f18180a;
    }

    public String i() {
        return this.f18182c;
    }
}
