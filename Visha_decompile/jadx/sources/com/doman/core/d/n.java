package com.doman.core.d;

import android.os.Handler;
import android.os.Message;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;

public final class n {
    private static volatile ExecutorService a;
    private static Handler b = new Handler() {
        @Override
        public final void handleMessage(Message message) {
            Object obj = message.obj;
            if (obj instanceof Runnable) {
                n.a((Runnable) obj);
            }
        }
    };

    public static void a(Runnable runnable) {
        try {
            if (a == null) {
                a = Executors.newCachedThreadPool();
            }
            a.execute(runnable);
        } catch (RejectedExecutionException unused) {
        }
    }

    public static void a(Runnable runnable, long j) {
        Message messageObtain = Message.obtain();
        messageObtain.obj = runnable;
        b.sendMessageDelayed(messageObtain, j);
    }
}
