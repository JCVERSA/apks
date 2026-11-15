package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;
import java.util.SortedSet;
import java.util.concurrent.atomic.AtomicInteger;

public final class i00 {
    private final g5 a;
    private final za1 b;
    private final tb1 c;
    private final Object d;

    public static final class a implements ee2 {
        private final g5 a;
        private final we2 b;
        private final dw c;
        private final AtomicInteger d;

        public a(g5 g5Var, int i, fb1 fb1Var, dw dwVar) {
            y45.j(g5Var, "adLoadingPhasesManager");
            y45.j(fb1Var, "videoLoadListener");
            y45.j(dwVar, "debugEventsReporter");
            this.a = g5Var;
            this.b = fb1Var;
            this.c = dwVar;
            this.d = new AtomicInteger(i);
        }

        @Override
        public final void a() {
            if (this.d.decrementAndGet() == 0) {
                this.a.a(f5.r);
                this.b.a();
            }
        }

        @Override
        public final void b() {
            if (this.d.getAndSet(0) > 0) {
                this.a.a(f5.r);
                this.c.a(cw.f);
                this.b.a();
            }
        }

        @Override
        public final void c() {
        }
    }

    public i00(Context context, g5 g5Var) {
        this(context, g5Var, new za1(context), new tb1());
    }

    public final void a() {
        synchronized (this.d) {
            this.b.a();
            zfb zfbVar = zfb.a;
        }
    }

    public i00(Context context, g5 g5Var, za1 za1Var, tb1 tb1Var) {
        y45.j(context, "context");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(za1Var, "nativeVideoCacheManager");
        y45.j(tb1Var, "nativeVideoUrlsProvider");
        this.a = g5Var;
        this.b = za1Var;
        this.c = tb1Var;
        this.d = new Object();
    }

    public final void a(s41 s41Var, fb1 fb1Var, dw dwVar) {
        y45.j(s41Var, "nativeAdBlock");
        y45.j(fb1Var, "videoLoadListener");
        y45.j(dwVar, "debugEventsReporter");
        synchronized (this.d) {
            try {
                SortedSet<String> sortedSetB = this.c.b(s41Var.c());
                if (sortedSetB.isEmpty()) {
                    fb1Var.a();
                } else {
                    a aVar = new a(this.a, sortedSetB.size(), fb1Var, dwVar);
                    g5 g5Var = this.a;
                    f5 f5Var = f5.r;
                    g5Var.getClass();
                    y45.j(f5Var, "adLoadingPhaseType");
                    g5Var.a(f5Var, null);
                    for (String str : sortedSetB) {
                        za1 za1Var = this.b;
                        za1Var.getClass();
                        y45.j(str, "url");
                        y45.j(aVar, "videoCacheListener");
                        za1Var.a(str, aVar, String.valueOf(wi0.a()));
                    }
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
