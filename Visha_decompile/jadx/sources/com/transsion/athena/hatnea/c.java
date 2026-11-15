package com.transsion.athena.hatnea;

import android.text.TextUtils;
import androidx.core.util.Predicate;
import com.transsion.athena.config.data.model.anehat;
import com.transsion.athena.hatnea.anateh;
import com.transsion.athena.hatnea.c;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class c {
    public static volatile c c;
    public final Deque a = new ArrayDeque();
    public ThreadPoolExecutor b;

    public static class a implements ThreadFactory {
        public a() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "Athena Dispatcher");
            thread.setDaemon(false);
            return thread;
        }
    }

    public static c d() {
        if (c == null) {
            synchronized (c.class) {
                try {
                    if (c == null) {
                        c = new c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public static boolean f(String str, anateh anatehVar) {
        return TextUtils.equals(anatehVar.b(), str);
    }

    public static boolean j(anateh anatehVar) {
        return anatehVar instanceof atenha;
    }

    public synchronized int c(final String str) {
        return anehat.a(this.a, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return c.f(str, (anateh) obj);
            }
        });
    }

    public synchronized void e(anateh anatehVar) {
        if (c(anatehVar.b()) <= 0 && !i()) {
            this.a.add(anatehVar);
            synchronized (this) {
                try {
                    if (this.b == null) {
                        this.b = new ThreadPoolExecutor(2, 2, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a());
                    }
                    this.b.execute(anatehVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void g() {
        enatha enathaVar;
        Thread thread;
        for (anateh anatehVar : this.a) {
            if ((anatehVar instanceof enatha) && (thread = (enathaVar = (enatha) anatehVar).b) != null && !thread.isInterrupted()) {
                enathaVar.b.interrupt();
            }
        }
    }

    public synchronized void h(anateh anatehVar) {
        this.a.remove(anatehVar);
    }

    public final synchronized boolean i() {
        return anehat.a(this.a, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return c.j((anateh) obj);
            }
        }) > 0;
    }
}
