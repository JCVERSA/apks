package com.mbridge.msdk.advanced.request;

import androidx.annotation.NonNull;

public class f {

    private int f33376a;

    private String f33377b;

    private int f33378c;

    private int f33379d;

    private int f33380e;

    public void a(String str) {
        this.f33377b = str;
    }

    public int b() {
        return this.f33379d;
    }

    public int c() {
        return this.f33378c;
    }

    public int d() {
        return this.f33376a;
    }

    public String e() {
        return this.f33377b;
    }

    @NonNull
    public String toString() {
        return "NativeAdvancedV3ParamsEntity{reqType=" + this.f33376a + ", session_id='" + this.f33377b + "', offset=" + this.f33378c + ", expectWidth=" + this.f33379d + ", expectHeight=" + this.f33380e + '}';
    }

    public int a() {
        return this.f33380e;
    }

    public void b(int i10) {
        this.f33379d = i10;
    }

    public void c(int i10) {
        this.f33378c = i10;
    }

    public void d(int i10) {
        this.f33376a = i10;
    }

    public void a(int i10) {
        this.f33380e = i10;
    }
}
