package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.c74;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class t01 {
    private static final pw1 a;
    private static volatile s01 b;

    public static final class a extends Lambda implements c74 {
        final t92 b;
        final Context c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(t92 t92Var, Context context) {
            super(0);
            this.b = t92Var;
            this.c = context;
        }

        @Override
        public final Object invoke() {
            return this.b.a(this.c);
        }
    }

    static {
        int i = pw1.l;
        a = pw1.a.a();
    }

    public static final s01 a(Context context, t92 t92Var, ie ieVar) {
        Context applicationContext;
        y45.j(context, "context");
        y45.j(t92Var, "varioqubAdapterProvider");
        y45.j(ieVar, "appAdAnalyticsActivator");
        if (b == null) {
            synchronized (s01.e) {
                try {
                    if (b == null && (applicationContext = context.getApplicationContext()) != null) {
                        y45.g(applicationContext);
                        b = a(applicationContext, t92Var, a.a(context), ieVar);
                    }
                    zfb zfbVar = zfb.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        s01 s01Var = b;
        if (s01Var != null) {
            return s01Var;
        }
        throw new IllegalStateException("Required value was null.");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0025  */
    private static s01 a(Context context, t92 t92Var, ju1 ju1Var, ie ieVar) {
        boolean z;
        jf jfVar = new jf();
        sp1 sp1VarA = new kf(jfVar, ieVar, ve.a()).a(context);
        yi5 yi5VarA = kotlin.b.a(new a(t92Var, context));
        if (ju1Var != null) {
            z = ju1Var.v();
        }
        int i = ms0.f;
        s01 s01Var = new s01(sp1VarA, yi5VarA, z, ms0.a.a().c());
        lu1 lu1Var = new lu1(s01Var, jfVar);
        int i2 = pu1.d;
        new ku1(jfVar, lu1Var, pu1.a.a()).a();
        return s01Var;
    }
}
