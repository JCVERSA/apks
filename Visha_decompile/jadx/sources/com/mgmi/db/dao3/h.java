package com.mgmi.db.dao3;

public class h {
    private Long a;
    private int b;
    private String c;

    public h() {
    }

    public Long a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public h(Long l, int i, String str) {
        this.a = l;
        this.b = i;
        this.c = str;
    }

    public void a(Long l) {
        this.a = l;
    }

    public void a(int i) {
        this.b = i;
    }

    public void a(String str) {
        this.c = str;
    }
}
