package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.concurrent.Executor;

public final class y91 {
    private final sp1 a;
    private final Executor b;
    private final Context c;

    public static final class a implements Runnable {
        private final o8<String> b;
        private final dr1 c;
        private final aa1 d;

        public a(Context context, sp1 sp1Var, o8<String> o8Var, dr1 dr1Var, aa1 aa1Var) {
            y45.j(context, "context");
            y45.j(sp1Var, "reporter");
            y45.j(o8Var, "adResponse");
            y45.j(dr1Var, "responseConverterListener");
            y45.j(aa1Var, "nativeResponseParser");
            this.b = o8Var;
            this.c = dr1Var;
            this.d = aa1Var;
        }

        @Override
        public final void run() {
            y61 y61VarA = this.d.a(this.b);
            if (y61VarA != null) {
                this.c.a(y61VarA);
            } else {
                this.c.a(w7.k());
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public y91(Context context, sp1 sp1Var) {
        this(context, sp1Var, ms0.a.a().c());
        int i = ms0.f;
    }

    public final void a(o8<String> o8Var, dr1 dr1Var) {
        y45.j(o8Var, "adResponse");
        y45.j(dr1Var, "responseConverterListener");
        Context context = this.c;
        y45.i(context, "appContext");
        sp1 sp1Var = this.a;
        this.b.execute(new a(context, sp1Var, o8Var, dr1Var, new aa1(context, sp1Var)));
    }

    public y91(Context context, sp1 sp1Var, Executor executor) {
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(executor, "executor");
        this.a = sp1Var;
        this.b = executor;
        this.c = context.getApplicationContext();
    }
}
