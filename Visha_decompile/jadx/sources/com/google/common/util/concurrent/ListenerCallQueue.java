package com.google.common.util.concurrent;

import defpackage.kj5;
import defpackage.um8;
import defpackage.xd8;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.logging.Level;

public abstract class ListenerCallQueue {
    public static final kj5 a = new kj5(ListenerCallQueue.class);

    public static final class PerListenerQueue<L> implements Runnable {
        final Executor executor;
        boolean isThreadScheduled;
        final L listener;
        final Queue<a> waitQueue = um8.a();
        final Queue<Object> labelQueue = um8.a();

        public PerListenerQueue(L l, Executor executor) {
            this.listener = (L) xd8.o(l);
            this.executor = (Executor) xd8.o(executor);
        }

        public synchronized void add(a aVar, Object obj) {
            this.waitQueue.add(aVar);
            this.labelQueue.add(obj);
        }

        public void dispatch() throws Exception {
            boolean z;
            synchronized (this) {
                try {
                    if (this.isThreadScheduled) {
                        z = false;
                    } else {
                        z = true;
                        this.isThreadScheduled = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z) {
                try {
                    this.executor.execute(this);
                } catch (Exception e) {
                    synchronized (this) {
                        this.isThreadScheduled = false;
                        ListenerCallQueue.a.a().log(Level.SEVERE, "Exception while running callbacks for " + this.listener + " on " + this.executor, (Throwable) e);
                        throw e;
                    }
                }
            }
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x005e */
        /* JADX WARN: Code duplicated, block: B:28:0x0062  */
        /* JADX WARN: Code duplicated, block: B:38:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0025, code lost:
        
            r2.a(r9.listener);
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x002d, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x002e, code lost:
        
            com.google.common.util.concurrent.ListenerCallQueue.a.a().log(java.util.logging.Level.SEVERE, "Exception while executing callback: " + r9.listener + " " + r3, (java.lang.Throwable) r2);
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() throws Throwable {
            boolean z;
            Throwable th;
            while (true) {
                boolean z2 = true;
                try {
                    synchronized (this) {
                        try {
                            xd8.u(this.isThreadScheduled);
                            a aVarPoll = this.waitQueue.poll();
                            Object objPoll = this.labelQueue.poll();
                            if (aVarPoll == null) {
                                this.isThreadScheduled = false;
                                try {
                                    return;
                                } catch (Throwable th2) {
                                    th = th2;
                                    z = false;
                                }
                            }
                        } catch (Throwable th3) {
                            z = true;
                            th = th3;
                        }
                        while (true) {
                        }
                    }
                    try {
                        throw th;
                    } catch (Throwable th4) {
                        boolean z3 = z;
                        th = th4;
                        z2 = z3;
                        if (z2) {
                            synchronized (this) {
                                this.isThreadScheduled = false;
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    if (z2) {
                        synchronized (this) {
                            this.isThreadScheduled = false;
                        }
                    }
                    throw th;
                }
            }
        }
    }

    public interface a {
        void a(Object obj);
    }
}
