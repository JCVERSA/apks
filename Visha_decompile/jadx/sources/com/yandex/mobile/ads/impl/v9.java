package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class v9 {
    private static final ExecutorService c = Executors.newCachedThreadPool(new f41(f41.b));
    private o3 a;
    private final Context b;

    public static final class a implements Runnable {
        private final String b;
        private final u82 c;

        public a(String str, u82 u82Var) {
            y45.j(str, "url");
            y45.j(u82Var, "tracker");
            this.b = str;
            this.c = u82Var;
        }

        @Override
        public final void run() {
            if (this.b.length() > 0) {
                this.c.a(this.b);
            }
        }
    }

    public v9(Context context, o3 o3Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        this.a = o3Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.b = applicationContext;
    }

    public final void a(String str, o8 o8Var, u1 u1Var) {
        y45.j(o8Var, "adResponse");
        y45.j(u1Var, "handler");
        a(str, u1Var, new ep(this.b, o8Var, this.a, null));
    }

    public final void a(String str, f42 f42Var, tp1 tp1Var) {
        y45.j(f42Var, "handler");
        y45.j(tp1Var, "reporter");
        Context context = this.b;
        ek1 ek1Var = new ek1(context, tp1Var, f42Var, new s82(context));
        if (str == null || str.length() <= 0) {
            return;
        }
        c.execute(new a(str, ek1Var));
    }

    public final void a(String str, z62 z62Var) {
        y45.j(z62Var, "trackingUrlType");
        lh1 lh1Var = new lh1(this.b, this.a, z62Var);
        if (str == null || str.length() <= 0) {
            return;
        }
        c.execute(new a(str, lh1Var));
    }
}
