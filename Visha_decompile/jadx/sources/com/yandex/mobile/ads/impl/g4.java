package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import com.yandex.mobile.ads.impl.g4;
import defpackage.y45;
import java.util.concurrent.TimeUnit;

public final class g4 {
    private static final long d = TimeUnit.SECONDS.toMillis(1);
    private final b4 a;
    private final ao0 b;
    private final Handler c;

    public g4(b4 b4Var) {
        y45.j(b4Var, "adGroupController");
        this.a = b4Var;
        int i = ao0.g;
        this.b = ao0.a.a();
        this.c = new Handler(Looper.getMainLooper());
    }

    public final void a() {
        do0 do0VarA;
        k4 k4VarE = this.a.e();
        if (k4VarE != null && (do0VarA = k4VarE.a()) != null) {
            do0VarA.a();
        }
        this.c.removeCallbacksAndMessages(null);
    }

    public final void c() {
        k4 k4VarE = this.a.e();
        if (k4VarE != null) {
            qd2 qd2VarB = k4VarE.b();
            do0 do0VarA = k4VarE.a();
            int iOrdinal = qd2VarB.a().ordinal();
            if (iOrdinal == 1 || iOrdinal == 2 || iOrdinal == 3 || iOrdinal == 6 || iOrdinal == 7) {
                do0VarA.g();
            }
        }
        this.c.removeCallbacksAndMessages(null);
    }

    public final void b() {
        final k4 k4VarE;
        if (!this.b.d() || (k4VarE = this.a.e()) == null) {
            return;
        }
        this.c.postDelayed(new Runnable() {
            @Override
            public final void run() {
                g4.a(this.b, k4VarE);
            }
        }, d);
    }

    public static final void a(g4 g4Var, k4 k4Var) {
        y45.j(g4Var, "this$0");
        y45.j(k4Var, "$nextAd");
        if (y45.e(g4Var.a.e(), k4Var)) {
            qd2 qd2VarB = k4Var.b();
            do0 do0VarA = k4Var.a();
            if (qd2VarB.a().ordinal() != 0) {
                return;
            }
            do0VarA.d();
        }
    }
}
