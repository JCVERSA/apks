package com.mgtv.ssp.bean.config;

public class a {
    private String a;
    private String b;
    private String c;

    public a(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public static String a() {
        return "test";
    }

    public String b() {
        return this.a;
    }

    public String c() {
        return this.b;
    }

    public String d() {
        return this.c;
    }
}
