package com.amazonaws.services.s3.model;

public class ReplicationDestinationConfig {

    private String f18174a;

    private String f18175b;

    public void a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Bucket name cannot be null");
        }
        this.f18174a = str;
    }

    public void b(String str) {
        this.f18175b = str;
    }
}
