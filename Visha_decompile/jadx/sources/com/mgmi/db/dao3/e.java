package com.mgmi.db.dao3;

public class e {
    private Long a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private Long g;

    public e() {
    }

    public String a() {
        return this.b;
    }

    public String b() {
        return this.e;
    }

    public String c() {
        return this.f;
    }

    public Long d() {
        return this.g;
    }

    public Long e() {
        return this.a;
    }

    public String f() {
        return this.c;
    }

    public String g() {
        return this.d;
    }

    public e(Long l, String str, String str2, String str3, String str4, String str5, Long l2) {
        this.a = l;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = l2;
    }

    public e a(String str) {
        this.b = str;
        return this;
    }

    public void b(String str) {
        this.f = str;
    }

    public e c(String str) {
        this.e = str;
        return this;
    }

    public e d(String str) {
        this.c = str;
        return this;
    }

    public e e(String str) {
        this.d = str;
        return this;
    }

    public e a(Long l) {
        this.g = l;
        return this;
    }

    public void b(Long l) {
        this.a = l;
    }
}
