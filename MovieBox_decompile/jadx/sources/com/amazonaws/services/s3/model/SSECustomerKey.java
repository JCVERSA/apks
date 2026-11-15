package com.amazonaws.services.s3.model;

public class SSECustomerKey {

    private final String f18208a = null;

    private String f18209b;

    private String f18210c;

    private SSECustomerKey() {
    }

    public static SSECustomerKey a(String str) {
        if (str != null) {
            return new SSECustomerKey().f(str);
        }
        throw new IllegalArgumentException();
    }

    public String b() {
        return this.f18210c;
    }

    public String c() {
        return this.f18208a;
    }

    public String d() {
        return this.f18209b;
    }

    public void e(String str) {
        this.f18210c = str;
    }

    public SSECustomerKey f(String str) {
        e(str);
        return this;
    }
}
