package com.yandex.div.internal.viewpool;

import android.view.View;
import androidx.collection.ArrayMap;
import com.lzy.okgo.model.Progress;
import defpackage.cdc;
import defpackage.emb;
import defpackage.hcc;
import defpackage.r08;
import defpackage.xi;
import defpackage.y45;
import defpackage.zfb;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a implements cdc {
    public static final b e = new b(null);
    public final ViewPoolProfiler a;
    public final r08 b;
    public final ViewCreator c;
    public final Map d;

    public static final class C0300a implements hcc {
        public static final C0301a k = new C0301a(null);
        public final String a;
        public final ViewPoolProfiler b;
        public final r08 c;
        public final hcc d;
        public final ViewCreator e;
        public final BlockingQueue f;
        public AtomicInteger g;
        public final AtomicBoolean h;
        public final boolean i;
        public volatile int j;

        public static final class C0301a {
            public C0301a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public C0301a() {
            }
        }

        public C0300a(String str, ViewPoolProfiler viewPoolProfiler, r08 r08Var, hcc hccVar, ViewCreator viewCreator, int i) {
            y45.j(str, "viewName");
            y45.j(r08Var, "sessionProfiler");
            y45.j(hccVar, "viewFactory");
            y45.j(viewCreator, "viewCreator");
            this.a = str;
            this.b = viewPoolProfiler;
            this.c = r08Var;
            this.d = hccVar;
            this.e = viewCreator;
            LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
            this.f = linkedBlockingQueue;
            this.g = new AtomicInteger(i);
            this.h = new AtomicBoolean(false);
            this.i = !linkedBlockingQueue.isEmpty();
            this.j = i;
            for (int i2 = 0; i2 < i; i2++) {
                this.e.b(this, 0);
            }
        }

        @Override
        public View a() {
            return g();
        }

        public final void f() {
            if (this.h.get()) {
                return;
            }
            try {
                this.f.offer(this.d.a());
            } catch (Exception unused) {
            }
        }

        public final View g() {
            b bVar = a.e;
            long jNanoTime = System.nanoTime();
            Object objPoll = this.f.poll();
            long jNanoTime2 = System.nanoTime() - jNanoTime;
            if (objPoll == null) {
                long jNanoTime3 = System.nanoTime();
                objPoll = h();
                long jNanoTime4 = System.nanoTime() - jNanoTime3;
                ViewPoolProfiler viewPoolProfiler = this.b;
                if (viewPoolProfiler != null) {
                    viewPoolProfiler.b(this.a, jNanoTime4);
                }
                r08 r08Var = this.c;
                this.f.size();
                r08.a(r08Var);
            } else {
                this.g.decrementAndGet();
                ViewPoolProfiler viewPoolProfiler2 = this.b;
                if (viewPoolProfiler2 != null) {
                    viewPoolProfiler2.c(jNanoTime2);
                }
                r08 r08Var2 = this.c;
                this.f.size();
                r08.a(r08Var2);
            }
            k();
            y45.g(objPoll);
            return (View) objPoll;
        }

        public final View h() {
            try {
                this.e.a(this);
                View viewA = (View) this.f.poll(16L, TimeUnit.MILLISECONDS);
                if (viewA != null) {
                    this.g.decrementAndGet();
                } else {
                    viewA = this.d.a();
                }
                return viewA;
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return this.d.a();
            }
        }

        public final boolean i() {
            return this.i;
        }

        public final String j() {
            return this.a;
        }

        public final void k() {
            if (this.j <= this.g.get()) {
                return;
            }
            b bVar = a.e;
            long jNanoTime = System.nanoTime();
            this.e.b(this, this.f.size());
            this.g.incrementAndGet();
            long jNanoTime2 = System.nanoTime() - jNanoTime;
            ViewPoolProfiler viewPoolProfiler = this.b;
            if (viewPoolProfiler != null) {
                viewPoolProfiler.d(jNanoTime2);
            }
        }

        public final void l(int i) {
            this.j = i;
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public b() {
        }
    }

    public a(ViewPoolProfiler viewPoolProfiler, r08 r08Var, ViewCreator viewCreator) {
        y45.j(r08Var, "sessionProfiler");
        y45.j(viewCreator, "viewCreator");
        this.a = viewPoolProfiler;
        this.b = r08Var;
        this.c = viewCreator;
        this.d = new ArrayMap();
    }

    @Override
    public View a(String str) {
        C0300a c0300a;
        y45.j(str, Progress.TAG);
        synchronized (this.d) {
            c0300a = (C0300a) emb.a(this.d, str, "Factory is not registered");
        }
        View viewA = c0300a.a();
        y45.h(viewA, "null cannot be cast to non-null type T of com.yandex.div.internal.viewpool.AdvanceViewPool.obtain");
        return viewA;
    }

    @Override
    public void b(String str, int i) {
        y45.j(str, Progress.TAG);
        synchronized (this.d) {
            Object objA = emb.a(this.d, str, "Factory is not registered");
            ((C0300a) objA).l(i);
        }
    }

    @Override
    public void c(String str, hcc hccVar, int i) {
        y45.j(str, Progress.TAG);
        y45.j(hccVar, "factory");
        synchronized (this.d) {
            if (this.d.containsKey(str)) {
                xi.i("Factory is already registered");
            } else {
                this.d.put(str, new C0300a(str, this.a, this.b, hccVar, this.c, i));
                zfb zfbVar = zfb.a;
            }
        }
    }
}
