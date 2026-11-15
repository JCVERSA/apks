package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;

public class ListVersionsRequest extends AmazonWebServiceRequest {

    private String f18113a;

    private String f18114b;

    private String f18115c;

    private String f18116d;

    private String f18117e;

    private Integer f18118f;

    private String f18119g;

    public ListVersionsRequest() {
    }

    public void b(String str) {
        this.f18117e = str;
    }

    public void c(String str) {
        this.f18119g = str;
    }

    public void d(String str) {
        this.f18115c = str;
    }

    public void e(String str) {
        this.f18114b = str;
    }

    public void g(String str) {
        this.f18116d = str;
    }

    public ListVersionsRequest h(String str) {
        c(str);
        return this;
    }

    public void setBucketName(String str) {
        this.f18113a = str;
    }

    public void setMaxResults(Integer num) {
        this.f18118f = num;
    }

    public ListVersionsRequest(String str, String str2, String str3, String str4, String str5, Integer num) {
        setBucketName(str);
        e(str2);
        d(str3);
        g(str4);
        b(str5);
        setMaxResults(num);
    }
}
