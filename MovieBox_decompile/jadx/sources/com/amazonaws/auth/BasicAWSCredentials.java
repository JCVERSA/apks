package com.amazonaws.auth;

public class BasicAWSCredentials implements AWSCredentials {

    private final String f17733a;

    private final String f17734b;

    public BasicAWSCredentials(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Access key cannot be null.");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("Secret key cannot be null.");
        }
        this.f17733a = str;
        this.f17734b = str2;
    }

    @Override
    public String b() {
        return this.f17733a;
    }

    @Override
    public String c() {
        return this.f17734b;
    }
}
