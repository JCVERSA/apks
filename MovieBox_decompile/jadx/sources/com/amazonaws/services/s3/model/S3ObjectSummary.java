package com.amazonaws.services.s3.model;

import java.util.Date;

public class S3ObjectSummary {

    protected String f18191a;

    protected String f18192b;

    protected String f18193c;

    protected long f18194d;

    protected Date f18195e;

    protected String f18196f;

    protected Owner f18197g;

    public String a() {
        return this.f18192b;
    }

    public void b(String str) {
        this.f18191a = str;
    }

    public void c(String str) {
        this.f18193c = str;
    }

    public void d(String str) {
        this.f18192b = str;
    }

    public void e(Date date) {
        this.f18195e = date;
    }

    public void f(Owner owner) {
        this.f18197g = owner;
    }

    public void g(long j10) {
        this.f18194d = j10;
    }

    public void h(String str) {
        this.f18196f = str;
    }

    public String toString() {
        return "S3ObjectSummary{bucketName='" + this.f18191a + "', key='" + this.f18192b + "', eTag='" + this.f18193c + "', size=" + this.f18194d + ", lastModified=" + this.f18195e + ", storageClass='" + this.f18196f + "', owner=" + this.f18197g + '}';
    }
}
