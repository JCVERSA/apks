package com.mbridge.msdk.foundation.same.task;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class c {

    private static volatile ThreadPoolExecutor f34808a;

    class a implements ThreadFactory {
        a() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("mb-task-loader-thread");
            return thread;
        }
    }

    private static ThreadFactory a() {
        return new a();
    }

    public static ThreadPoolExecutor b() {
        c();
        if (f34808a == null) {
            int iAvailableProcessors = (Runtime.getRuntime().availableProcessors() * 2) + 1;
            f34808a = new ThreadPoolExecutor(iAvailableProcessors, iAvailableProcessors, 10L, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), a(), new ThreadPoolExecutor.DiscardPolicy());
            f34808a.allowCoreThreadTimeOut(true);
        }
        return f34808a;
    }

    private static void c() {
        if (f34808a != null) {
            return;
        }
        int iA = a(10, "c_t_l_t_p_c");
        int iA2 = a(50, "c_t_l_t_p_m");
        int iA3 = a(5, "c_t_l_t_p_t");
        int i10 = iA2 < iA ? iA : iA2;
        try {
            if (MBridgeConstans.DEBUG) {
                o0.a("CommonTaskLoaderThreadPool", "create ThreadPoolExecutor for core " + iA + " max " + i10 + " timeout " + iA3);
            }
            long j10 = iA3;
            if (j10 <= 0) {
                j10 = 1;
            }
            f34808a = new ThreadPoolExecutor(iA, i10, j10, TimeUnit.SECONDS, new LinkedBlockingDeque(), a(), new ThreadPoolExecutor.DiscardPolicy());
            f34808a.allowCoreThreadTimeOut(true);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonTaskLoaderThreadPool", "create ThreadPoolExecutor failed ", e10);
            }
        }
    }

    private static int a(int i10, String str) {
        try {
            int iB = q0.a().b(str, i10);
            return iB <= 0 ? i10 : iB;
        } catch (Exception e10) {
            if (!MBridgeConstans.DEBUG) {
                return i10;
            }
            o0.b("CommonTaskLoaderThreadPool", e10.getMessage());
            return i10;
        }
    }
}
