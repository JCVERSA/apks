package com.mgmi.net.bean;

public class c {
    private int a;
    private String b;
    private boolean c = true;

    public c(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public int a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public boolean c() {
        return this.c;
    }

    public void a(boolean z) {
        this.c = z;
    }
}
