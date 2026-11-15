package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yandex.mobile.ads.impl.qw1;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class qw1 {
    private final mt0 a;
    private final bv1 b;
    private final u80 c;

    public static final class a extends Lambda implements c74 {
        final Context c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context) {
            super(0);
            this.c = context;
        }

        @Override
        public final Object invoke() {
            qw1.this.b(this.c);
            return zfb.a;
        }
    }

    public qw1(it0 it0Var, mt0 mt0Var, en2 en2Var) {
        y45.j(it0Var, "mainThreadHandler");
        y45.j(mt0Var, "manifestAnalyzer");
        y45.j(en2Var, "sdkEnvironmentModule");
        this.a = mt0Var;
        this.b = en2Var;
        this.c = new u80(it0Var);
    }

    public final void b(Context context) {
        this.a.getClass();
        if (mt0.e(context)) {
            q11.a(context, this.b, new dt() {
                @Override
                public final void onInitializationCompleted() {
                    qw1.a();
                }
            });
        }
    }

    public final void a(Context context) {
        y45.j(context, "context");
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        if (ju1VarA == null || !ju1VarA.Y()) {
            b(context);
        } else {
            this.c.a(new a(context));
        }
    }

    public static final void a() {
        sp0.a(new Object[0]);
    }
}
