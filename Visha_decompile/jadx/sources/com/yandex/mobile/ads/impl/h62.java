package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Bundle;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;

public abstract class h62 extends mg0 implements qk0.a, n0 {
    private final va e;
    private final pk0 f;
    private final e31 g;
    private final qk0 h;
    private final l0 i;
    private final to1 j;

    public final class a implements j62 {
        public a() {
        }

        @Override
        public final n92 a(int i) {
            n92.a aVar;
            if (h62.a(h62.this)) {
                aVar = n92.a.m;
            } else if (h62.this.l()) {
                aVar = !h62.this.k() ? n92.a.j : n92.a.c;
            } else {
                aVar = n92.a.o;
            }
            return new n92(aVar);
        }

        @Override
        public final n92 b(int i) {
            n92.a aVar;
            if (h62.this.f()) {
                aVar = n92.a.d;
            } else if (h62.a(h62.this)) {
                aVar = n92.a.m;
            } else if (h62.this.l()) {
                aVar = (h62.this.a(i) && h62.this.k()) ? n92.a.c : n92.a.j;
            } else {
                aVar = n92.a.o;
            }
            return new n92(aVar);
        }
    }

    public h62(Context context, va vaVar, o8 o8Var, o3 o3Var) {
        this(context, vaVar, o8Var, o3Var, new pk0(), new s4(new ng0(o8Var)), new tk0(context, o8Var, o3Var, o8Var.B()), new uo1(), new td1(), new rk0(), new rd1());
    }

    public static final boolean a(h62 h62Var) {
        return !h62Var.e.b();
    }

    public abstract boolean a(int i);

    public final pk0 j() {
        return this.f;
    }

    public abstract boolean k();

    public abstract boolean l();

    public final synchronized void m() {
        toString();
        sp0.d(new Object[0]);
        this.g.b();
        this.j.b();
    }

    @Override
    public final void b() {
        toString();
        sp0.d(new Object[0]);
        super.b();
        this.g.a();
        this.j.c();
    }

    @Override
    public final void a(dh1 dh1Var) {
        y45.j(dh1Var, "phoneState");
        this.e.b();
        Objects.toString(dh1Var);
        sp0.d(new Object[0]);
        this.g.a(dh1Var, this.e.b());
    }

    public final void b(int i) {
        sp0.d(new Object[0]);
        int i2 = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(e());
        if (ju1VarA == null || !ju1VarA.k0()) {
            if (this.e.b()) {
                this.g.b();
            } else {
                this.g.a();
            }
        } else if (i == 0) {
            this.g.b();
        } else {
            this.g.a();
        }
        sp0.d(getClass().toString(), Integer.valueOf(i));
    }

    public void a(int i, Bundle bundle) {
        sp0.d(new Object[0]);
        if (i == 14) {
            this.f.e();
            return;
        }
        if (i != 15) {
            switch (i) {
                case 6:
                    onLeftApplication();
                    this.i.g();
                    break;
                case 7:
                    onLeftApplication();
                    this.i.e();
                    break;
                case 8:
                    this.i.f();
                    break;
                case 9:
                    sp0.d(new Object[0]);
                    this.i.a();
                    this.f.a();
                    break;
            }
            return;
        }
        this.f.b();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h62(Context context, va vaVar, o8<String> o8Var, o3 o3Var, pk0 pk0Var, s4 s4Var, tk0 tk0Var, uo1 uo1Var, td1 td1Var, rk0 rk0Var, rd1 rd1Var) {
        super(context, o8Var);
        y45.j(context, "context");
        y45.j(vaVar, "adVisibilityValidator");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(pk0Var, "impressionEventsObservable");
        y45.j(s4Var, "adIdStorageManager");
        y45.j(tk0Var, "impressionReporter");
        y45.j(uo1Var, "renderTrackingManagerFactory");
        y45.j(td1Var, "noticeTrackingManagerProvider");
        y45.j(rk0Var, "impressionManagerCreator");
        y45.j(rd1Var, "noticeTrackerForceImpressionListenerFactory");
        this.e = vaVar;
        this.f = pk0Var;
        this.i = new l0(context, o3Var, o8Var, this, o8Var.z());
        a aVar = new a();
        rk0Var.getClass();
        this.h = rk0.a(context, this, tk0Var, s4Var, pk0Var);
        e31 e31VarA = td1Var.a(context, o3Var, tk0Var, aVar, oa.a(this), s9.b);
        this.g = e31VarA;
        e31VarA.a(pk0Var);
        rd1Var.getClass();
        pk0Var.a(rd1.a(e31VarA));
        uo1Var.getClass();
        this.j = uo1.a(context, o8Var, o3Var, s4Var, vaVar, pk0Var);
    }

    public final void a(Map<String, String> map) {
        toString();
        sp0.d(new Object[0]);
        ArrayList arrayListA = oa.a(d(), map);
        this.h.a(arrayListA, d().B());
        this.g.a(d(), arrayListA);
        m();
    }
}
