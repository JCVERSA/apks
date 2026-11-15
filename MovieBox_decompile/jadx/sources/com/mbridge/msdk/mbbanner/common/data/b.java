package com.mbridge.msdk.mbbanner.common.data;

public class b {

    private String f35214a;

    private String f35215b;

    private String f35216c = "";

    private int f35217d;

    private int f35218e;

    public b(String str, String str2, int i10, int i11) {
        this.f35214a = str;
        this.f35215b = str2;
        this.f35217d = i10;
        this.f35218e = i11;
    }

    public void a(int i10) {
        this.f35217d = i10;
    }

    public void b(String str) {
        this.f35215b = str;
    }

    public int c() {
        return this.f35217d;
    }

    public String d() {
        return this.f35215b;
    }

    public String a() {
        return this.f35216c;
    }

    public int b() {
        return this.f35218e;
    }

    public void a(String str) {
        this.f35216c = str;
    }
}
