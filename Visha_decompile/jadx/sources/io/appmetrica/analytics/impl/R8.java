package io.appmetrica.analytics.impl;

import android.content.ContentValues;

public final class R8 {
    public final String a;
    public String b;
    public final Long c;
    public final Long d;
    public final Long e;
    public final Long f;
    public final C2808q7 g;
    public final EnumC2588hb h;
    public final Integer i;
    public final String j;
    public final Integer k;
    public final Integer l;
    public final String m;
    public final String n;
    public final M8 o;
    public final EnumC2661ka p;
    public final EnumC2859s9 q;
    public final Boolean r;
    public final Integer s;
    public final byte[] t;

    /* JADX WARN: Multi-variable type inference failed */
    public R8(ContentValues contentValues) {
        C2708m7 model = new C2733n7(null, 1, 0 == true ? 1 : 0).toModel(contentValues);
        this.a = model.a().j();
        this.b = model.a().p();
        this.c = model.c();
        this.d = model.b();
        this.e = model.a().k();
        this.f = model.d();
        this.g = model.a().i();
        this.h = model.e();
        this.i = model.a().d();
        this.j = model.a().f();
        this.k = model.a().o();
        this.l = model.a().c();
        this.m = model.a().b();
        this.n = model.a().m();
        M8 m8E = model.a().e();
        this.o = m8E == null ? M8.a(null) : m8E;
        EnumC2661ka enumC2661kaH = model.a().h();
        this.p = enumC2661kaH == null ? EnumC2661ka.a(null) : enumC2661kaH;
        this.q = model.a().n();
        this.r = model.a().a();
        this.s = model.a().l();
        this.t = model.a().g();
    }
}
