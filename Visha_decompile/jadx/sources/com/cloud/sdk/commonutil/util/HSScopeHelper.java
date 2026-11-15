package com.cloud.sdk.commonutil.util;

import android.os.Handler;
import android.os.Looper;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import defpackage.bm4;
import defpackage.c74;
import defpackage.e74;
import defpackage.ef3;
import defpackage.el0;
import defpackage.hk1;
import defpackage.ja1;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.ul4;
import defpackage.v6a;
import defpackage.wn4;
import defpackage.wn8;
import defpackage.y45;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.coroutines.d;
import kotlinx.coroutines.h;

public final class HSScopeHelper {
    public static boolean b;
    public static final int e;
    public static final int f;
    public static final int g;
    public static final nk1 h;
    public static final ThreadPoolExecutor i;
    public static final h j;
    public static final nk1 k;
    public static final nk1 l;
    public static final nk1 m;
    public static final HSScopeHelper a = new HSScopeHelper();
    public static final hk1 c = new a(hk1.w1);
    public static final AtomicInteger d = new AtomicInteger(0);

    public static final class a extends kotlin.coroutines.a implements hk1 {
        public a(hk1.b bVar) {
            super(bVar);
        }

        @Override
        public void handleException(d dVar, Throwable th) {
            if (ul4.h()) {
                ja1.Log().e("ExceptionHandler", "CoroutineExceptionHandler (DEBUG)", th);
                throw new RuntimeException("Coroutine exception in DEBUG", th);
            }
            ja1.Log().e("ExceptionHandler", "CoroutineExceptionHandler: " + th.getMessage());
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        e = iAvailableProcessors;
        int iK = wn8.k(iAvailableProcessors, 4, 8);
        f = iK;
        int iK2 = wn8.k(iAvailableProcessors * 2, iK, 16);
        g = iK2;
        h = kotlinx.coroutines.d.a(mc2.b().plus(v6a.b(null, 1, null)));
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, iK2, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(8), new ThreadFactory() {
            @Override
            public final Thread newThread(Runnable runnable) {
                return HSScopeHelper.u(runnable);
            }
        }, new RejectedExecutionHandler() {
            @Override
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor2) {
                HSScopeHelper.v(runnable, threadPoolExecutor2);
            }
        });
        i = threadPoolExecutor;
        h hVarB = ef3.b(threadPoolExecutor);
        j = hVarB;
        k = kotlinx.coroutines.d.a(mc2.c());
        l = kotlinx.coroutines.d.a(hVarB.plus(v6a.b(null, 1, null)));
        m = kotlinx.coroutines.d.a(mc2.a());
    }

    public static final void t(c74 c74Var, e74 e74Var) {
        y45.j(c74Var, "$runnable");
        y45.j(e74Var, "$callback");
        try {
            e74Var.invoke(new com.cloud.sdk.commonutil.util.a.b(c74Var.invoke()));
        } catch (Throwable th) {
            e74Var.invoke(new com.cloud.sdk.commonutil.util.a.C0054a(th));
        }
    }

    public static final Thread u(Runnable runnable) {
        return new Thread(runnable, "hs-io-" + d.incrementAndGet());
    }

    public static final void v(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        el0.d(h, c, null, new HSScopeHelper$sdkIoExecutor$2$1(runnable, null), 2, null);
    }

    public final nk1 d() {
        return m;
    }

    public final hk1 e() {
        return c;
    }

    public final nk1 f() {
        return l;
    }

    public final nk1 g() {
        return k;
    }

    public final boolean h() {
        return y45.e(Looper.myLooper(), Looper.getMainLooper());
    }

    public final void i(Runnable runnable) {
        y45.j(runnable, "runnable");
        try {
            Handler handlerA = wn4.a.a("hs_fetch_ad_thread");
            if (handlerA != null) {
                handlerA.removeCallbacks(runnable);
            }
        } catch (Throwable unused) {
        }
    }

    public final void j(Runnable runnable) {
        y45.j(runnable, "runnable");
        Looper looperMyLooper = Looper.myLooper();
        wn4 wn4Var = wn4.a;
        Handler handlerA = wn4Var.a("hs_fetch_ad_thread");
        if (y45.e(looperMyLooper, handlerA != null ? handlerA.getLooper() : null)) {
            runnable.run();
            return;
        }
        Handler handlerA2 = wn4Var.a("hs_fetch_ad_thread");
        if (handlerA2 != null) {
            handlerA2.post(runnable);
        }
    }

    public final void k(Runnable runnable, long j2) {
        y45.j(runnable, "runnable");
        Handler handlerA = wn4.a.a("hs_fetch_ad_thread");
        if (handlerA != null) {
            handlerA.postDelayed(runnable, j2);
        }
    }

    public final void l(Runnable runnable) {
        y45.j(runnable, "runnable");
        m(runnable, 0L);
    }

    public final void m(Runnable runnable, long j2) {
        y45.j(runnable, "runnable");
        if (b) {
            bm4.b().a(runnable);
        } else {
            el0.d(l, c, null, new HSScopeHelper$runIOThread$1(j2, runnable, null), 2, null);
        }
    }

    public final void n(Runnable runnable) {
        y45.j(runnable, "runnable");
        o(runnable, 0L);
    }

    public final void o(Runnable runnable, long j2) {
        y45.j(runnable, "runnable");
        el0.d(m, c, null, new HSScopeHelper$runNewThread$1(j2, runnable, null), 2, null);
    }

    public final void p(Runnable runnable) {
        y45.j(runnable, "runnable");
        if (h()) {
            runnable.run();
        } else {
            el0.d(k, null, null, new HSScopeHelper$runUIThread$1(runnable, null), 3, null);
        }
    }

    public final void q(final c74 c74Var, final e74 e74Var) {
        y45.j(c74Var, "runnable");
        y45.j(e74Var, "callback");
        Looper looperMyLooper = Looper.myLooper();
        wn4 wn4Var = wn4.a;
        Handler handlerA = wn4Var.a("hs_work_thread");
        if (y45.e(looperMyLooper, handlerA != null ? handlerA.getLooper() : null)) {
            try {
                e74Var.invoke(new com.cloud.sdk.commonutil.util.a.b(c74Var.invoke()));
                return;
            } catch (Throwable th) {
                e74Var.invoke(new com.cloud.sdk.commonutil.util.a.C0054a(th));
                return;
            }
        }
        Handler handlerA2 = wn4Var.a("hs_work_thread");
        if (handlerA2 != null) {
            handlerA2.post(new Runnable() {
                @Override
                public final void run() {
                    HSScopeHelper.t(c74Var, e74Var);
                }
            });
        }
    }

    public final void r(Runnable runnable) {
        y45.j(runnable, "runnable");
        Looper looperMyLooper = Looper.myLooper();
        wn4 wn4Var = wn4.a;
        Handler handlerA = wn4Var.a("hs_work_thread");
        if (y45.e(looperMyLooper, handlerA != null ? handlerA.getLooper() : null)) {
            runnable.run();
            return;
        }
        Handler handlerA2 = wn4Var.a("hs_work_thread");
        if (handlerA2 != null) {
            handlerA2.post(runnable);
        }
    }

    public final void s(Runnable runnable, long j2) {
        y45.j(runnable, "runnable");
        Handler handlerA = wn4.a.a("hs_work_thread");
        if (handlerA != null) {
            handlerA.postDelayed(runnable, j2);
        }
    }
}
