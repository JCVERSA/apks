package com.yandex.mobile.ads.impl;

import defpackage.zfb;
import java.util.List;
import java.util.Map;

public final class o50 {
    private static final Object h = new Object();
    private String a;
    private List<? extends hn1> b = defpackage.y71.k();
    private Map<String, String> c = kotlin.collections.a.l();
    private String d;
    private String e;
    private boolean f;
    private String g;

    public final String a() {
        return this.e;
    }

    public final String b() {
        return this.a;
    }

    public final boolean c() {
        return this.f;
    }

    public final Map<String, String> d() {
        return this.c;
    }

    public final String e() {
        return this.d;
    }

    public final List<hn1> f() {
        return this.b;
    }

    public final String g() {
        String str;
        synchronized (h) {
            str = this.g;
        }
        return str;
    }

    public final void h() {
        this.f = true;
    }

    public final void a(String str) {
        this.e = str;
    }

    public final void b(String str) {
        this.a = str;
    }

    public final void c(String str) {
        this.d = str;
    }

    public final void d(String str) {
        synchronized (h) {
            if (str != null) {
                try {
                    if (str.length() != 0) {
                        this.g = str;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            zfb zfbVar = zfb.a;
        }
    }
}
