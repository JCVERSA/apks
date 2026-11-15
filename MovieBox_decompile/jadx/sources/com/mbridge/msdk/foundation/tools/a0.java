package com.mbridge.msdk.foundation.tools;

import com.mbridge.msdk.MBridgeConstans;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class a0 {

    static volatile Executor f34848a;

    static FastKV.c f34849b = new a();

    class b implements ThreadFactory {
        b() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "mb-sp-handler");
        }
    }

    private a0() {
    }

    static Executor a() {
        if (f34848a == null) {
            synchronized (a0.class) {
                try {
                    if (f34848a == null) {
                        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(4, 4, 10L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new b(), new ThreadPoolExecutor.DiscardPolicy());
                        threadPoolExecutor.allowCoreThreadTimeOut(true);
                        f34848a = threadPoolExecutor;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f34848a;
    }

    class a implements FastKV.c {
        a() {
        }

        @Override
        public void a(String str, String str2) {
            if (MBridgeConstans.DEBUG) {
                o0.c("FastKVConfig", str + " " + str2);
            }
        }

        @Override
        public void b(String str, Exception exc) {
            if (MBridgeConstans.DEBUG) {
                o0.b("FastKVConfig", str, exc);
            }
        }

        @Override
        public void a(String str, Exception exc) {
            if (MBridgeConstans.DEBUG) {
                o0.c("FastKVConfig", str, exc);
            }
        }
    }
}
