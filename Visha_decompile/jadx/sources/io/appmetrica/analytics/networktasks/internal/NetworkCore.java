package io.appmetrica.analytics.networktasks.internal;

import io.appmetrica.analytics.coreapi.internal.executors.InterruptionSafeThread;
import io.appmetrica.analytics.networktasks.impl.d;
import io.appmetrica.analytics.networktasks.impl.f;
import io.appmetrica.analytics.networktasks.impl.g;
import io.appmetrica.analytics.networktasks.impl.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;

public class NetworkCore extends InterruptionSafeThread {
    private final LinkedBlockingQueue a;
    private final Object b;
    private final Object c;
    private volatile d d;
    private final g e;

    public NetworkCore() {
        this(new g());
    }

    @Override
    public void run() {
        NetworkTask networkTask = null;
        while (isRunning()) {
            try {
                synchronized (this.c) {
                    try {
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                this.d = (d) this.a.take();
                networkTask = this.d.a;
                Executor executor = networkTask.getExecutor();
                this.e.getClass();
                executor.execute(new h(networkTask, this, new f()));
                networkTask.onTaskFinished();
                synchronized (this.c) {
                    try {
                        if (this.d != null) {
                            this.d = null;
                            networkTask.onTaskRemoved();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (InterruptedException unused) {
                if (networkTask != null) {
                    networkTask.onTaskFinished();
                    synchronized (this.c) {
                        try {
                            if (this.d != null) {
                                this.d = null;
                                networkTask.onTaskRemoved();
                            }
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                } else {
                    continue;
                }
            } catch (Throwable th4) {
                if (networkTask != null) {
                    networkTask.onTaskFinished();
                    synchronized (this.c) {
                        try {
                            if (this.d != null) {
                                this.d = null;
                                networkTask.onTaskRemoved();
                            }
                        } catch (Throwable th5) {
                            throw th5;
                        }
                    }
                }
                throw th4;
            }
        }
    }

    public void startTask(NetworkTask networkTask) {
        synchronized (this.b) {
            try {
                d dVar = new d(networkTask);
                if (isRunning() && !this.a.contains(dVar) && !dVar.equals(this.d) && networkTask.onTaskAdded()) {
                    this.a.offer(dVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void stopTasks() {
        synchronized (this.c) {
            try {
                d dVar = this.d;
                if (dVar != null) {
                    dVar.a.onTaskRemoved();
                }
                ArrayList arrayList = new ArrayList(this.a.size());
                this.a.drainTo(arrayList);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((d) it.next()).a.onTaskRemoved();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public NetworkCore(g gVar) {
        this.a = new LinkedBlockingQueue();
        this.b = new Object();
        this.c = new Object();
        this.e = gVar;
    }
}
