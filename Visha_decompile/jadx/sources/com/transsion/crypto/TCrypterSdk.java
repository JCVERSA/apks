package com.transsion.crypto;

import android.content.Context;
import defpackage.d19;
import defpackage.ow8;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public abstract class TCrypterSdk {
    public static ExecutorService a = new ThreadPoolExecutor(0, 4, 2, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadPoolExecutor.CallerRunsPolicy());

    public static String a(Context context, String str) {
        return d19.a(context).b(str);
    }

    public static void b(final Context context) {
        a.execute(new Runnable() {
            @Override
            public void run() {
                ow8.b().a(context);
            }
        });
    }

    public static void c(Context context, String str, String str2) throws Exception {
        d19.a(context).d(str, str2);
    }
}
