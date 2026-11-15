package com.mgmi.model;

public class b {
    public String a;
    public String b;
    public int c;
    public String d;

    public void a(String str) {
        this.a = str;
    }

    public void b(String str) {
        this.b = str;
    }

    public void c(String str) {
        this.d = str;
    }

    public void a(int i) {
        if (i < 1 || i > 4) {
            this.c = 4;
        } else {
            this.c = i;
        }
    }
}
