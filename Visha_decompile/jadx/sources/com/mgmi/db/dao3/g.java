package com.mgmi.db.dao3;

import java.util.Date;

public class g {
    private Long a;
    private Long b;
    private Long c;
    private String d;
    private String e;
    private Long f;
    private Long g;

    public g() {
    }

    public Long a() {
        return this.a;
    }

    public Long b() {
        return this.b;
    }

    public Long c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }

    public String e() {
        return this.e;
    }

    public Long f() {
        return this.f;
    }

    public Long g() {
        return this.g;
    }

    public boolean h() {
        Long l = this.c;
        if (l == null || this.b == null || 0 == l.longValue() || 0 == this.b.longValue()) {
            return false;
        }
        return this.c.equals(this.b);
    }

    public boolean i() {
        Long l = this.g;
        return l != null && l.longValue() == 1;
    }

    public boolean j() {
        if (this.f == null) {
            return false;
        }
        return new Date().after(new Date(this.f.longValue() * 1000));
    }

    public g(Long l, Long l2, Long l3, String str, String str2, Long l4, Long l5) {
        this.a = l;
        this.b = l2;
        this.c = l3;
        this.d = str;
        this.e = str2;
        this.f = l4;
        this.g = l5;
    }

    public void a(Long l) {
        this.a = l;
    }

    public void b(Long l) {
        this.b = l;
    }

    public void c(Long l) {
        this.c = l;
    }

    public void d(Long l) {
        this.f = l;
    }

    public void e(Long l) {
        this.g = l;
    }

    public void a(String str) {
        this.d = str;
    }

    public void b(String str) {
        this.e = str;
    }
}
