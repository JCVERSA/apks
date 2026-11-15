package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.internal.SSEResultBase;

public class InitiateMultipartUploadResult extends SSEResultBase {

    private String f18092a;

    private String f18093b;

    private String f18094c;

    public String a() {
        return this.f18094c;
    }

    public void b(String str) {
        this.f18094c = str;
    }

    public void setBucketName(String str) {
        this.f18092a = str;
    }

    public void setKey(String str) {
        this.f18093b = str;
    }
}
