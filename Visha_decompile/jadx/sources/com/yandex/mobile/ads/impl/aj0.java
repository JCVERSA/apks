package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Ref$ObjectRef;

public final class aj0 implements bj0 {
    private static final Object h = new Object();
    private final ue a;
    private final hf b;
    private final ff c;
    private final Context d;
    private df e;
    private final cj0 f;
    private final String g;

    public aj0(Context context, ue ueVar, hf hfVar, ff ffVar, nu0 nu0Var) {
        y45.j(context, "context");
        y45.j(ueVar, "appMetricaAdapter");
        y45.j(hfVar, "appMetricaIdentifiersValidator");
        y45.j(ffVar, "appMetricaIdentifiersLoader");
        y45.j(nu0Var, "mauidManager");
        this.a = ueVar;
        this.b = hfVar;
        this.c = ffVar;
        this.f = cj0.b;
        this.g = nu0Var.a();
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.d = applicationContext;
    }

    @Override
    public final String a() {
        return this.g;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [T, com.yandex.mobile.ads.impl.df] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    @Override
    public final df b() {
        ?? r2;
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        synchronized (h) {
            try {
                df dfVar = this.e;
                r2 = dfVar;
                if (dfVar == null) {
                    df dfVar2 = new df(null, this.a.b(this.d), this.a.a(this.d));
                    this.c.a(this.d, this);
                    r2 = dfVar2;
                }
                ref$ObjectRef.element = r2;
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return r2;
    }

    @Override
    public final cj0 c() {
        return this.f;
    }

    public final void a(df dfVar) {
        y45.j(dfVar, "appMetricaIdentifiers");
        synchronized (h) {
            try {
                this.b.getClass();
                if (hf.a(dfVar)) {
                    this.e = dfVar;
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
