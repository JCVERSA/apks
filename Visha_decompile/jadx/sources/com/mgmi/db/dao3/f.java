package com.mgmi.db.dao3;

public class f {
    private Long a;
    private Integer b;
    private String c;
    private Long d;

    public f() {
    }

    public Long a() {
        return this.a;
    }

    public Integer b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public Long d() {
        return this.d;
    }

    public f(Long l, Integer num, String str, Long l2) {
        this.a = l;
        this.b = num;
        this.c = str;
        this.d = l2;
    }

    public void a(Long l) {
        this.a = l;
    }

    public void b(Long l) {
        this.d = l;
    }

    public void a(Integer num) {
        this.b = num;
    }

    public void a(String str) {
        this.c = str;
    }
}
