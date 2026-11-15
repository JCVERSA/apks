package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yandex.mobile.ads.impl.c31;
import defpackage.y45;

public final class c31 {
    private final ht1 a;
    private final ht0 b;

    public interface a {
        void a();
    }

    public static final class b implements w21.a {
        private final d31 a;
        private final a b;
        private final wu0 c;

        public b(d31 d31Var, a aVar, wu0 wu0Var) {
            y45.j(d31Var, "mraidWebViewPool");
            y45.j(aVar, "listener");
            y45.j(wu0Var, "media");
            this.a = d31Var;
            this.b = aVar;
            this.c = wu0Var;
        }

        @Override
        public final void a() {
            this.a.b(this.c);
            this.b.a();
        }

        @Override
        public final void b() {
            this.b.a();
        }
    }

    public c31() {
        this(new ht1());
    }

    public final void a(final Context context, final wu0 wu0Var, final a aVar) {
        y45.j(context, "context");
        y45.j(wu0Var, "media");
        y45.j(aVar, "listener");
        this.b.a(new Runnable() {
            @Override
            public final void run() {
                c31.a(context, wu0Var, aVar, this);
            }
        });
    }

    public c31(ht1 ht1Var) {
        y45.j(ht1Var, "safeMraidWebViewFactory");
        this.a = ht1Var;
        this.b = new ht0();
    }

    public static final void a(Context context, wu0 wu0Var, a aVar, c31 c31Var) {
        w21 w21Var;
        y45.j(context, "$context");
        y45.j(wu0Var, "$media");
        y45.j(aVar, "$listener");
        y45.j(c31Var, "this$0");
        d31 d31VarA = d31.c.a(context);
        String strB = wu0Var.b();
        if (!d31VarA.b() && !d31VarA.a(wu0Var) && strB != null) {
            c31Var.a.getClass();
            y45.j(context, "context");
            try {
                w21Var = new w21(context);
            } catch (Throwable unused) {
                w21Var = null;
            }
            if (w21Var != null) {
                w21Var.setPreloadListener(new b(d31VarA, aVar, wu0Var));
                d31VarA.a(w21Var, wu0Var);
                w21Var.c(strB);
                return;
            }
            aVar.a();
            return;
        }
        aVar.a();
    }
}
