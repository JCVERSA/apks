package com.amazonaws.auth;

public class BasicSessionCredentials implements AWSSessionCredentials {

    private final String f17735a;

    private final String f17736b;

    private final String f17737c;

    public BasicSessionCredentials(String str, String str2, String str3) {
        this.f17735a = str;
        this.f17736b = str2;
        this.f17737c = str3;
    }

    @Override
    public String a() {
        return this.f17737c;
    }

    @Override
    public String b() {
        return this.f17735a;
    }

    @Override
    public String c() {
        return this.f17736b;
    }
}
