package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;

public final class jb0 {
    private final g5 a;
    private final za1 b;
    private final tb1 c;
    private final Object d;

    public static final class a implements ee2 {
        private final g5 a;
        private final we2 b;
        private final b c;

        public a(g5 g5Var, fb1 fb1Var, za1 za1Var, Iterator it, dw dwVar) {
            y45.j(g5Var, "adLoadingPhasesManager");
            y45.j(fb1Var, "videoLoadListener");
            y45.j(za1Var, "nativeVideoCacheManager");
            y45.j(it, "urlToRequests");
            y45.j(dwVar, "debugEventsReporter");
            this.a = g5Var;
            this.b = fb1Var;
            this.c = new b(g5Var, fb1Var, za1Var, it, dwVar);
        }

        @Override
        public final void a() {
            this.a.a(f5.r);
            this.b.a();
            this.c.a();
        }

        @Override
        public final void b() {
            this.a.a(f5.r);
            this.b.a();
            this.c.b();
        }

        @Override
        public final void c() {
        }
    }

    public static final class b implements ee2 {
        private final g5 a;
        private final we2 b;
        private final za1 c;
        private final Iterator<Pair<String, String>> d;
        private final dw e;

        public b(g5 g5Var, we2 we2Var, za1 za1Var, Iterator<Pair<String, String>> it, dw dwVar) {
            y45.j(g5Var, "adLoadingPhasesManager");
            y45.j(we2Var, "videoLoadListener");
            y45.j(za1Var, "nativeVideoCacheManager");
            y45.j(it, "urlToRequests");
            y45.j(dwVar, "debugEventsReporter");
            this.a = g5Var;
            this.b = we2Var;
            this.c = za1Var;
            this.d = it;
            this.e = dwVar;
        }

        @Override
        public final void a() {
            if (this.d.hasNext()) {
                Pair<String, String> next = this.d.next();
                String strComponent1 = next.component1();
                String strComponent2 = next.component2();
                this.c.a(strComponent1, new b(this.a, this.b, this.c, this.d, this.e), strComponent2);
            }
        }

        @Override
        public final void b() {
            this.e.a(cw.f);
        }

        @Override
        public final void c() {
            a();
        }
    }

    public jb0(Context context, g5 g5Var) {
        this(context, g5Var, new za1(context), new tb1());
    }

    public final void a() {
        synchronized (this.d) {
            this.b.a();
            zfb zfbVar = zfb.a;
        }
    }

    public jb0(Context context, g5 g5Var, za1 za1Var, tb1 tb1Var) {
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
                List<Pair<String, String>> listA = this.c.a(s41Var.c());
                if (listA.isEmpty()) {
                    fb1Var.a();
                } else {
                    a aVar = new a(this.a, fb1Var, this.b, defpackage.i81.f0(listA, 1).iterator(), dwVar);
                    g5 g5Var = this.a;
                    f5 f5Var = f5.r;
                    g5Var.getClass();
                    y45.j(f5Var, "adLoadingPhaseType");
                    g5Var.a(f5Var, null);
                    Pair pair = (Pair) defpackage.i81.o0(listA);
                    this.b.a((String) pair.component1(), aVar, (String) pair.component2());
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(String str) {
        y45.j(str, "requestId");
        synchronized (this.d) {
            this.b.a(str);
            zfb zfbVar = zfb.a;
        }
    }
}
