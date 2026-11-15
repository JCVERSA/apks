package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class o3 {
    private final ts a;
    private final bv1 b;
    private final uq c;
    private final ca d;
    private final hz1 e;
    private v7 f;
    private fa1 g;
    private ca1 h;
    private p82.a i;
    private String j;
    private String k;
    private String l;
    private Integer m;
    private lz0 n;
    private String o;
    private boolean p;
    private int q;
    private int r;

    public o3(ts tsVar, bv1 bv1Var) {
        this(tsVar, bv1Var, new uq(), new ca(), new hz1());
    }

    public final v7 a() {
        return this.f;
    }

    public final ts b() {
        return this.a;
    }

    public final String c() {
        return this.d.a();
    }

    public final Integer d() {
        return this.m;
    }

    public final jc e() {
        return this.c.a();
    }

    public final String f() {
        return this.j;
    }

    public final uq g() {
        return this.c;
    }

    public final int h() {
        return this.r;
    }

    public final lz0 i() {
        return this.n;
    }

    public final String j() {
        return this.o;
    }

    public final o50 k() {
        return this.c.b();
    }

    public final String l() {
        return this.k;
    }

    public final List<String> m() {
        return this.c.c();
    }

    public final String n() {
        return this.l;
    }

    public final int o() {
        return this.q;
    }

    public final ca1 p() {
        return this.h;
    }

    public final bv1 q() {
        return this.b;
    }

    public final gz1 r() {
        return this.e.a();
    }

    public final fa1 s() {
        return this.g;
    }

    public final p82.a t() {
        return this.i;
    }

    public final boolean u() {
        return this.p;
    }

    public final void a(v7 v7Var) {
        this.f = v7Var;
    }

    public final void b(String str) {
        this.j = str;
    }

    public final void c(String str) {
        this.o = str;
    }

    public final void d(String str) {
        this.k = str;
    }

    public final void e(String str) {
        this.l = str;
    }

    public final void a(String str) {
        this.d.a(str);
    }

    public final void a(Integer num) {
        this.m = num;
    }

    public o3(ts tsVar, bv1 bv1Var, uq uqVar, ca caVar, hz1 hz1Var) {
        y45.j(tsVar, "adType");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(uqVar, "commonAdRequestConfiguration");
        y45.j(caVar, "adUnitIdConfigurator");
        y45.j(hz1Var, "sizeInfoConfigurator");
        this.a = tsVar;
        this.b = bv1Var;
        this.c = uqVar;
        this.d = caVar;
        this.e = hz1Var;
        this.p = true;
        this.r = bi0.b;
    }

    public final void a(jc jcVar) {
        y45.j(jcVar, "configuration");
        this.c.a(jcVar);
    }

    public final void a(lz0 lz0Var) {
        this.n = lz0Var;
    }

    public final void a(o50 o50Var) {
        y45.j(o50Var, "configuration");
        this.c.a(o50Var);
    }

    public final void a(int i) {
        this.q = i;
    }

    public final void a(ca1 ca1Var) {
        this.h = ca1Var;
    }

    public final void a(boolean z) {
        this.p = z;
    }

    public final void a(gz1 gz1Var) {
        this.e.a(gz1Var);
    }

    public final void a(fa1 fa1Var) {
        this.g = fa1Var;
    }

    public final void a(p82.a aVar) {
        this.i = aVar;
    }
}
