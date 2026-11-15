package com.therouter;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public abstract class TheRouterThreadPool {

    private static final int f39744a;

    private static final int f39745b;

    private static final int f39746c;

    private static final int f39747d;

    private static long f39748e;

    private static int f39749f;

    private static ExecutorService f39750g;

    private static final Handler f39751h;

    private static ThreadPoolExecutor f39752i;

    public static final class a implements ThreadFactory {

        private final AtomicInteger f39753a = new AtomicInteger(1);

        final String f39754b;

        a(String str) {
            this.f39754b = str;
        }

        @Override
        public Thread newThread(Runnable r10) {
            Intrinsics.h(r10, "r");
            return new Thread(r10, this.f39754b + " #" + this.f39753a.getAndIncrement());
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f39744a = iAvailableProcessors;
        int iMax = Math.max(3, Math.min(iAvailableProcessors - 1, 6));
        f39745b = iMax;
        f39746c = iAvailableProcessors * 4;
        f39747d = iAvailableProcessors * 8;
        f39748e = 30L;
        f39749f = 10;
        f39750g = new BufferExecutor();
        f39751h = new Handler(Looper.getMainLooper());
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(iMax, Integer.MAX_VALUE, f39748e, TimeUnit.SECONDS, new LinkedBlockingDeque(f39749f), k("TheRouterLibThread"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f39752i = threadPoolExecutor;
    }

    public static final void f(Runnable command) {
        Intrinsics.h(command, "command");
        try {
            f39750g.execute(command);
        } catch (Exception e10) {
            TheRouterKt.c("TheRouterThreadPool", "rejected execute runnable", new Function0<Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m299invoke();
                    return Unit.f64096a;
                }

                public final void m299invoke() {
                    e10.printStackTrace();
                }
            });
        }
    }

    public static final boolean g(Runnable command) {
        Intrinsics.h(command, "command");
        if (!Intrinsics.c(Thread.currentThread(), Looper.getMainLooper().getThread())) {
            return f39751h.post(command);
        }
        command.run();
        return true;
    }

    public static final long h() {
        return f39748e;
    }

    public static final int i() {
        return f39749f;
    }

    public static final String j(StackTraceElement[] stackTraceElementArr) {
        StringBuilder sb2 = new StringBuilder();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            sb2.append(stackTraceElement);
            sb2.append('\n');
        }
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public static final ThreadFactory k(String threadName) {
        Intrinsics.h(threadName, "threadName");
        return new a(threadName);
    }
}
