package com.mgtv.ssp.download.dao3;

public class c {
    public Long a;
    public String b;
    public String c;
    public String d;
    public String e;
    public Long f;
    public Long g;
    public Long h;
    public Integer i;
    public String j;

    public c(Long l, String str, String str2, String str3, String str4, Long l2, Long l3, Long l4, Integer num, String str5) {
        this.a = l;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = l2;
        this.g = l3;
        this.h = l4;
        this.i = num;
        this.j = str5;
    }

    public Long a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
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

    public Long h() {
        return this.h;
    }

    public Integer i() {
        return this.i;
    }

    public String j() {
        return this.j;
    }

    public boolean k() {
        Long l;
        if (0 == this.g.longValue() || 0 == this.h.longValue() || (l = this.g) == null || this.h == null) {
            return false;
        }
        try {
            return l.longValue() == this.h.longValue();
        } catch (Throwable unused) {
            return this.g == this.h;
        }
    }

    public String toString() {
        return "fileId:" + this.b + " fileUrl:" + this.e + " completeSize:" + this.g + " totalSize:" + this.h + " status:" + this.i;
    }

    public void a(Long l) {
        this.a = l;
    }

    public void b(String str) {
        this.c = str;
    }

    public void c(String str) {
        this.d = str;
    }

    public void d(String str) {
        this.e = str;
    }

    public void e(String str) {
        this.j = str;
    }

    public void a(String str) {
        this.b = str;
    }

    public void b(Long l) {
        this.f = l;
    }

    public void c(Long l) {
        this.g = l;
    }

    public void d(Long l) {
        this.h = l;
    }

    public void a(Integer num) {
        this.i = num;
    }

    public c() {
    }
}
