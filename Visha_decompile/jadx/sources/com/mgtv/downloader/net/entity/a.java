package com.mgtv.downloader.net.entity;

import io.appmetrica.analytics.coreutils.internal.StringUtils;

public class a {
    public String A;
    public String B;
    public String C;
    public String D;
    public String E;
    public Integer F;
    public boolean G;
    public String H;
    public Integer I;
    public String J;
    public String K;
    public String L;
    public String M;
    public String N;
    public String O;
    public String P;
    public String Q;
    public String R;
    public String S;
    public String T;
    public Long a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public Long g;
    public Long h;
    public Integer i;
    public Long j;
    public Integer k;
    public Integer l;
    public String m;
    public String n;
    public String o;
    public Integer p;
    public Integer q;
    public String r;
    public String s;
    public String t;
    public String u;
    public Integer v;
    public Integer w;
    public Integer x;
    public String y;
    public String z;

    public a() {
    }

    public String a() {
        return this.b;
    }

    public void b(String str) {
        this.d = str;
    }

    public void c(String str) {
        this.e = str;
    }

    public void d(String str) {
        this.f = str;
    }

    public Long e() {
        return this.h;
    }

    public Integer f() {
        return this.i;
    }

    public Integer g() {
        return this.k;
    }

    public String h() {
        return this.o;
    }

    public Integer i() {
        return this.x;
    }

    public String j() {
        return this.y;
    }

    public String k() {
        return this.C;
    }

    public String l() {
        return this.D;
    }

    public String m() {
        return this.E;
    }

    public Integer n() {
        return this.F;
    }

    public String o() {
        return this.H;
    }

    public String p() {
        return this.J;
    }

    public String q() {
        return this.K;
    }

    public String r() {
        return this.L;
    }

    public String s() {
        return this.N;
    }

    public String t() {
        return this.O;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("videoId:");
        String str = this.b;
        sb.append(str == null ? "" : str.toString());
        sb.append(StringUtils.COMMA);
        sb.append("clipId:");
        String str2 = this.t;
        if (str2 == null) {
            str2 = "";
        }
        sb.append(str2);
        sb.append(StringUtils.COMMA);
        sb.append("plId:");
        String str3 = this.u;
        if (str3 == null) {
            str3 = "";
        }
        sb.append(str3);
        sb.append(StringUtils.COMMA);
        sb.append("videoUrl:");
        String str4 = this.e;
        if (str4 == null) {
            str4 = "";
        }
        sb.append(str4);
        sb.append(StringUtils.COMMA);
        sb.append("completeSize:");
        Long l = this.g;
        sb.append(l == null ? "" : l.toString());
        sb.append(StringUtils.COMMA);
        sb.append("totalSize:");
        Long l2 = this.h;
        sb.append(l2 == null ? "" : l2.toString());
        sb.append(StringUtils.COMMA);
        sb.append("operateTime:");
        Long l3 = this.j;
        sb.append(l3 == null ? "" : l3.toString());
        sb.append(StringUtils.COMMA);
        sb.append("dataType:");
        Integer num = this.v;
        sb.append(num == null ? "" : num.toString());
        sb.append(StringUtils.COMMA);
        sb.append("definition:");
        Integer num2 = this.x;
        sb.append(num2 == null ? "" : num2.toString());
        sb.append(StringUtils.COMMA);
        sb.append("freeUrl:");
        String str5 = this.y;
        if (str5 == null) {
            str5 = "";
        }
        sb.append(str5);
        sb.append(StringUtils.COMMA);
        sb.append("rootId:");
        Integer num3 = this.p;
        sb.append(num3 == null ? "" : num3.toString());
        sb.append(StringUtils.COMMA);
        sb.append("contentId:");
        String str6 = this.L;
        if (str6 == null) {
            str6 = "";
        }
        sb.append(str6);
        sb.append(StringUtils.COMMA);
        sb.append("mediaType:");
        Integer num4 = this.F;
        sb.append(num4 != null ? num4.toString() : "");
        sb.append(StringUtils.COMMA);
        return sb.toString();
    }

    public String u() {
        return this.P;
    }

    public String v() {
        return this.Q;
    }

    public String w() {
        return this.S;
    }

    public String x() {
        return this.T;
    }

    public a(a aVar) {
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        this.f = aVar.f;
        this.g = aVar.g;
        this.h = aVar.h;
        this.i = aVar.i;
        this.j = aVar.j;
        this.k = aVar.k;
        this.l = aVar.l;
        this.I = aVar.I;
        this.m = aVar.m;
        this.n = aVar.n;
        this.o = aVar.o;
        this.p = aVar.p;
        this.q = aVar.q;
        this.r = aVar.r;
        this.s = aVar.s;
        this.t = aVar.t;
        this.u = aVar.u;
        this.v = aVar.v;
        this.w = aVar.w;
        this.x = aVar.x;
        this.y = aVar.y;
        this.z = aVar.z;
        this.A = aVar.A;
        this.B = aVar.B;
        this.C = aVar.C;
        this.D = aVar.D;
        this.F = aVar.F;
        this.E = aVar.E;
        this.G = aVar.G;
        this.K = aVar.K;
        this.L = aVar.L;
        this.N = aVar.N;
        this.M = aVar.M;
        this.J = aVar.J;
        this.I = aVar.I;
        this.O = aVar.O;
        this.P = aVar.P;
        this.R = aVar.R;
        this.S = aVar.S;
        this.T = aVar.T;
    }

    public void a(String str) {
        this.c = str;
    }

    public String b() {
        return this.e;
    }

    public String c() {
        return this.f;
    }

    public Long d() {
        return this.g;
    }

    public void e(String str) {
        this.m = str;
    }

    public void f(String str) {
        this.n = str;
    }

    public void g(String str) {
        this.t = str;
    }

    public void h(String str) {
        this.y = str;
    }

    public void i(String str) {
        this.A = str;
    }

    public void j(String str) {
        this.C = str;
    }

    public void k(String str) {
        this.D = str;
    }

    public void l(String str) {
        this.E = str;
    }

    public void m(String str) {
        this.H = str;
    }

    public void n(String str) {
        this.J = str;
    }

    public void o(String str) {
        this.K = str;
    }

    public void p(String str) {
        this.N = str;
    }

    public void q(String str) {
        this.Q = str;
    }

    public void a(Long l) {
        this.g = l;
    }

    public void b(Long l) {
        this.h = l;
    }

    public void c(Long l) {
        this.j = l;
    }

    public void d(Integer num) {
        this.I = num;
    }

    public void a(Integer num) {
        this.i = num;
    }

    public void b(Integer num) {
        this.k = num;
    }

    public void c(Integer num) {
        this.l = num;
    }
}
