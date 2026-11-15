package com.transsion.athena.hatnea;

import android.text.TextUtils;
import androidx.core.util.j;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class athena {

    private static volatile athena f41645a;

    private final Deque<anateh> f41646b = new ArrayDeque();

    private ThreadPoolExecutor f41647c;

    private static class aethna implements ThreadFactory {
        private aethna() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "Athena Dispatcher");
            thread.setDaemon(false);
            return thread;
        }
    }

    private athena() {
    }

    public static athena a() {
        if (f41645a == null) {
            synchronized (athena.class) {
                try {
                    if (f41645a == null) {
                        f41645a = new athena();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f41645a;
    }

    private synchronized boolean c() {
        return com.transsion.athena.config.data.model.anehat.a(this.f41646b, new j() {
            @Override
            public final boolean a(Object obj) {
                return athena.c((anateh) obj);
            }
        }) > 0;
    }

    public synchronized void b(anateh anatehVar) {
        this.f41646b.remove(anatehVar);
    }

    public static boolean c(anateh anatehVar) {
        return anatehVar instanceof atenha;
    }

    public void b() {
        enatha enathaVar;
        Thread thread;
        for (anateh anatehVar : this.f41646b) {
            if ((anatehVar instanceof enatha) && (thread = (enathaVar = (enatha) anatehVar).f41637b) != null && !thread.isInterrupted()) {
                enathaVar.f41637b.interrupt();
            }
        }
    }

    public synchronized void a(anateh anatehVar) {
        if (a(anatehVar.b()) <= 0 && !c()) {
            this.f41646b.add(anatehVar);
            synchronized (this) {
                try {
                    if (this.f41647c == null) {
                        this.f41647c = new ThreadPoolExecutor(2, 2, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new aethna());
                    }
                    this.f41647c.execute(anatehVar);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public synchronized int a(final String str) {
        return com.transsion.athena.config.data.model.anehat.a(this.f41646b, new j() {
            @Override
            public final boolean a(Object obj) {
                return athena.a(str, (anateh) obj);
            }
        });
    }

    public static boolean a(String str, anateh anatehVar) {
        return TextUtils.equals(anatehVar.b(), str);
    }
}
