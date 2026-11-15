package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.impl.hd;
import defpackage.y45;
import java.util.concurrent.Executor;

public final class hd implements le {
    private static final Object b = new Object();
    private final Executor a;

    public hd(Executor executor) {
        y45.j(executor, "executor");
        this.a = executor;
    }

    @Override
    public final void a(final je jeVar) {
        y45.j(jeVar, "report");
        this.a.execute(new Runnable() {
            @Override
            public final void run() {
                hd.a(this.b, jeVar);
            }
        });
    }

    private static void b(je jeVar) {
        jeVar.a();
        jeVar.b();
        sp0.a(new Object[0]);
    }

    public static final void a(hd hdVar, je jeVar) {
        y45.j(hdVar, "this$0");
        y45.j(jeVar, "$report");
        hdVar.getClass();
        b(jeVar);
        fd.a.getClass();
        fd.a(jeVar);
    }
}
