package com.yandex.mobile.ads.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;

final class hj2 implements up1.b {
    private final HashMap a = new HashMap();
    private final fr1 b;

    @Nullable
    private final ym c;

    @Nullable
    private final BlockingQueue<up1<?>> d;

    public hj2(@NonNull ym ymVar, @NonNull PriorityBlockingQueue priorityBlockingQueue, fr1 fr1Var) {
        this.b = fr1Var;
        this.c = ymVar;
        this.d = priorityBlockingQueue;
    }

    public final synchronized boolean a(up1<?> up1Var) {
        try {
            String strD = up1Var.d();
            if (!this.a.containsKey(strD)) {
                this.a.put(strD, null);
                up1Var.a((up1.b) this);
                if (ti2.a) {
                    sp0.a(strD);
                }
                return false;
            }
            List arrayList = (List) this.a.get(strD);
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            up1Var.a("waiting-for-response");
            arrayList.add(up1Var);
            this.a.put(strD, arrayList);
            if (ti2.a) {
                sp0.a(strD);
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b(up1<?> up1Var) {
        BlockingQueue<up1<?>> blockingQueue;
        try {
            String strD = up1Var.d();
            List list = (List) this.a.remove(strD);
            if (list != null && !list.isEmpty()) {
                if (ti2.a) {
                    sp0.e(Integer.valueOf(list.size()), strD);
                }
                up1<?> up1Var2 = (up1) list.remove(0);
                this.a.put(strD, list);
                up1Var2.a((up1.b) this);
                if (this.c != null && (blockingQueue = this.d) != null) {
                    try {
                        blockingQueue.put(up1Var2);
                    } catch (InterruptedException e) {
                        sp0.b(e.toString());
                        Thread.currentThread().interrupt();
                        this.c.b();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void a(up1<?> up1Var, xq1<?> xq1Var) {
        List list;
        tm.a aVar = xq1Var.b;
        if (aVar != null) {
            if (aVar.e >= System.currentTimeMillis()) {
                String strD = up1Var.d();
                synchronized (this) {
                    list = (List) this.a.remove(strD);
                }
                if (list != null) {
                    if (ti2.a) {
                        sp0.e(Integer.valueOf(list.size()), strD);
                    }
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((h60) this.b).a((up1) it.next(), xq1Var, null);
                    }
                    return;
                }
                return;
            }
        }
        b(up1Var);
    }
}
