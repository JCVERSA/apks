package com.mgmi.net.bean;

import android.text.TextUtils;

public class b {
    com.mgmi.g.a a;
    private long b;
    private String c;
    private String d;
    private String e;
    private int f;
    private String g;
    private int h;
    private boolean i;
    private boolean j;

    public long a() {
        return this.b;
    }

    public String b() {
        return this.c;
    }

    public String c() {
        String str = this.d;
        return (str == null || TextUtils.isEmpty(str)) ? "" : this.d;
    }

    public String d() {
        return this.e;
    }

    public int e() {
        int i = this.f;
        if (i == 5 || i == 6) {
            return 4;
        }
        return i;
    }

    public String f() {
        return this.g;
    }

    public int g() {
        return this.h;
    }

    public boolean h() {
        return this.i;
    }

    public com.mgmi.g.a i() {
        return this.a;
    }

    public boolean j() {
        return this.j;
    }

    public void a(long j) {
        this.b = j;
    }

    public void b(String str) {
        this.d = str;
    }

    public void d(String str) {
        this.g = str;
    }

    public void a(String str) {
        this.c = str;
    }

    public void b(int i) {
        this.h = i;
    }

    public void a(int i) {
        this.f = i;
    }

    public void b(boolean z) {
        this.j = z;
    }

    public void c(String str) {
        this.e = str;
    }

    public void a(boolean z) {
        this.i = z;
    }

    public void a(com.mgmi.g.a aVar) {
        this.a = aVar;
    }
}
