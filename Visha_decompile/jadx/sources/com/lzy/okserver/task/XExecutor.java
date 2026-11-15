package com.lzy.okserver.task;

import android.os.Handler;
import android.os.Looper;
import defpackage.ubc;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class XExecutor extends ThreadPoolExecutor {
    public Handler b;
    public List c;
    public List d;

    public interface a {
    }

    public interface b {
    }

    public XExecutor(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i, i2, j, timeUnit, blockingQueue, threadFactory, rejectedExecutionHandler);
        this.b = new Handler(Looper.getMainLooper());
    }

    public void addOnAllTaskEndListener(a aVar) {
        if (this.d == null) {
            this.d = new ArrayList();
        }
        this.d.add(aVar);
    }

    public void addOnTaskEndListener(b bVar) {
        if (this.c == null) {
            this.c = new ArrayList();
        }
        this.c.add(bVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void afterExecute(Runnable runnable, Throwable th) {
        List list;
        super.afterExecute(runnable, th);
        List list2 = this.c;
        b bVar = null;
        Object[] objArr = 0;
        if (list2 != null && list2.size() > 0) {
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                ubc.a(it.next());
                this.b.post(new Runnable(bVar, runnable) {
                    final b val$listener;
                    final Runnable val$r;

                    {
                        this.val$r = runnable;
                    }

                    @Override
                    public void run() {
                        throw null;
                    }
                });
            }
        }
        if (getActiveCount() != 1 || getQueue().size() != 0 || (list = this.d) == null || list.size() <= 0) {
            return;
        }
        Iterator it2 = this.d.iterator();
        while (it2.hasNext()) {
            ubc.a(it2.next());
            this.b.post(new Runnable(objArr == true ? 1 : 0) {
                final a val$listener;

                @Override
                public void run() {
                    throw null;
                }
            });
        }
    }

    public void removeOnAllTaskEndListener(a aVar) {
        this.d.remove(aVar);
    }

    public void removeOnTaskEndListener(b bVar) {
        this.c.remove(bVar);
    }
}
