package com.mbridge.msdk.splash.request;

import androidx.annotation.NonNull;

public class f {

    private int f36749a;

    private String f36750b;

    private int f36751c;

    private int f36752d;

    private int f36753e;

    public void a(String str) {
        this.f36750b = str;
    }

    public int b() {
        return this.f36752d;
    }

    public int c() {
        return this.f36751c;
    }

    public int d() {
        return this.f36749a;
    }

    public String e() {
        return this.f36750b;
    }

    @NonNull
    public String toString() {
        return "NativeAdvancedV3ParamsEntity{reqType=" + this.f36749a + ", session_id='" + this.f36750b + "', offset=" + this.f36751c + ", expectWidth=" + this.f36752d + ", expectHeight=" + this.f36753e + '}';
    }

    public int a() {
        return this.f36753e;
    }

    public void b(int i10) {
        this.f36752d = i10;
    }

    public void c(int i10) {
        this.f36751c = i10;
    }

    public void d(int i10) {
        this.f36749a = i10;
    }

    public void a(int i10) {
        this.f36753e = i10;
    }
}
