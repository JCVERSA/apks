package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.internal.g;
import com.google.android.gms.common.api.internal.m;
import com.google.android.gms.common.api.internal.zact;
import defpackage.ay0;
import defpackage.f0e;
import defpackage.m17;
import defpackage.pzd;
import defpackage.qx9;
import defpackage.td;
import defpackage.ubc;
import defpackage.wd8;
import defpackage.xd;
import defpackage.xda;
import defpackage.yda;
import defpackage.zda;
import java.util.Collections;

public abstract class b implements d {
    public final Context a;
    public final String b;
    public final com.google.android.gms.common.api.a c;
    public final com.google.android.gms.common.api.a.d d;
    public final xd e;
    public final Looper f;
    public final int g;
    public final c h;
    public final qx9 i;
    public final com.google.android.gms.common.api.internal.c j;

    public static class a {
        public static final a c = new C0091a().a();
        public final qx9 a;
        public final Looper b;

        public static class C0091a {
            public qx9 a;
            public Looper b;

            /* JADX WARN: Multi-variable type inference failed */
            public a a() {
                if (this.a == null) {
                    this.a = new td();
                }
                if (this.b == null) {
                    this.b = Looper.getMainLooper();
                }
                return new a(this.a, this.b);
            }

            public C0091a b(qx9 qx9Var) {
                wd8.m(qx9Var, "StatusExceptionMapper must not be null.");
                this.a = qx9Var;
                return this;
            }
        }

        public a(qx9 qx9Var, Account account, Looper looper) {
            this.a = qx9Var;
            this.b = looper;
        }
    }

    public b(Activity activity, com.google.android.gms.common.api.a aVar, com.google.android.gms.common.api.a.d dVar, a aVar2) {
        this(activity, activity, aVar, dVar, aVar2);
    }

    @Override
    public final xd c() {
        return this.e;
    }

    public c d() {
        return this.h;
    }

    public ay0.a e() {
        ay0.a aVar = new ay0.a();
        aVar.d(null);
        aVar.c(Collections.emptySet());
        aVar.e(this.a.getClass().getName());
        aVar.b(this.a.getPackageName());
        return aVar;
    }

    public xda f(yda ydaVar) {
        return u(2, ydaVar);
    }

    public xda g(yda ydaVar) {
        return u(0, ydaVar);
    }

    public xda h(g gVar) {
        wd8.l(gVar);
        wd8.m(gVar.a.b(), "Listener has already been released.");
        wd8.m(gVar.b.a(), "Listener has already been released.");
        return this.j.w(this, gVar.a, gVar.b, gVar.c);
    }

    public xda i(com.google.android.gms.common.api.internal.d.a aVar) {
        return j(aVar, 0);
    }

    public xda j(com.google.android.gms.common.api.internal.d.a aVar, int i) {
        wd8.m(aVar, "Listener key cannot be null.");
        return this.j.x(this, aVar, i);
    }

    public xda k(yda ydaVar) {
        return u(1, ydaVar);
    }

    public com.google.android.gms.common.api.internal.b l(com.google.android.gms.common.api.internal.b bVar) {
        t(1, bVar);
        return bVar;
    }

    public String m(Context context) {
        return null;
    }

    public Context n() {
        return this.a;
    }

    public String o() {
        return this.b;
    }

    public Looper p() {
        return this.f;
    }

    public final int q() {
        return this.g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final com.google.android.gms.common.api.a.f r(Looper looper, m mVar) {
        ay0 ay0VarA = e().a();
        com.google.android.gms.common.api.a.f fVarB = ((com.google.android.gms.common.api.a.AbstractC0089a) wd8.l(this.c.a())).b(this.a, looper, ay0VarA, this.d, mVar, mVar);
        String strO = o();
        if (strO != null && (fVarB instanceof com.google.android.gms.common.internal.a)) {
            ((com.google.android.gms.common.internal.a) fVarB).setAttributionTag(strO);
        }
        if (strO == null || !(fVarB instanceof m17)) {
            return fVarB;
        }
        ubc.a(fVarB);
        throw null;
    }

    public final zact s(Context context, Handler handler) {
        return new zact(context, handler, e().a());
    }

    public final com.google.android.gms.common.api.internal.b t(int i, com.google.android.gms.common.api.internal.b bVar) {
        bVar.k();
        this.j.C(this, i, bVar);
        return bVar;
    }

    public final xda u(int i, yda ydaVar) {
        zda zdaVar = new zda();
        this.j.D(this, i, ydaVar, zdaVar, this.i);
        return zdaVar.a();
    }

    public b(Context context, Activity activity, com.google.android.gms.common.api.a aVar, com.google.android.gms.common.api.a.d dVar, a aVar2) {
        wd8.m(context, "Null context is not permitted.");
        wd8.m(aVar, "Api must not be null.");
        wd8.m(aVar2, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context context2 = (Context) wd8.m(context.getApplicationContext(), "The provided context did not have an application context.");
        this.a = context2;
        String attributionTag = Build.VERSION.SDK_INT >= 30 ? context.getAttributionTag() : m(context);
        this.b = attributionTag;
        this.c = aVar;
        this.d = dVar;
        this.f = aVar2.b;
        xd xdVarA = xd.a(aVar, dVar, attributionTag);
        this.e = xdVarA;
        this.h = new f0e(this);
        com.google.android.gms.common.api.internal.c cVarU = com.google.android.gms.common.api.internal.c.u(context2);
        this.j = cVarU;
        this.g = cVarU.l();
        this.i = aVar2.a;
        if (activity != null && !(activity instanceof GoogleApiActivity) && Looper.myLooper() == Looper.getMainLooper()) {
            pzd.u(activity, cVarU, xdVarA);
        }
        cVarU.H(this);
    }

    public b(Context context, com.google.android.gms.common.api.a aVar, com.google.android.gms.common.api.a.d dVar, a aVar2) {
        this(context, null, aVar, dVar, aVar2);
    }

    public b(Context context, com.google.android.gms.common.api.a aVar, com.google.android.gms.common.api.a.d dVar, qx9 qx9Var) {
        a.C0091a c0091a = new a.C0091a();
        c0091a.b(qx9Var);
        this(context, aVar, dVar, c0091a.a());
    }
}
