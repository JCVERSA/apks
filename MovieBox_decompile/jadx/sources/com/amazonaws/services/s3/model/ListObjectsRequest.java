package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;

public class ListObjectsRequest extends AmazonWebServiceRequest {

    private String f18095a;

    private String f18096b;

    private String f18097c;

    private String f18098d;

    private Integer f18099e;

    private String f18100f;

    public ListObjectsRequest() {
    }

    public void b(String str) {
        this.f18098d = str;
    }

    public void c(String str) {
        this.f18100f = str;
    }

    public void d(Integer num) {
        this.f18099e = num;
    }

    public void e(String str) {
        this.f18096b = str;
    }

    public ListObjectsRequest g(String str) {
        c(str);
        return this;
    }

    public void setBucketName(String str) {
        this.f18095a = str;
    }

    public void setMarker(String str) {
        this.f18097c = str;
    }

    public ListObjectsRequest(String str, String str2, String str3, String str4, Integer num) {
        setBucketName(str);
        e(str2);
        setMarker(str3);
        b(str4);
        d(num);
    }
}
