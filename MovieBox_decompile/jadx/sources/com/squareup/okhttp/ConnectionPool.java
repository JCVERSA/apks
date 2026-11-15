package com.squareup.okhttp;

import com.squareup.okhttp.internal.c;
import com.squareup.okhttp.internal.f;
import com.squareup.okhttp.internal.g;
import com.squareup.okhttp.internal.http.n;
import hf.a;
import java.lang.ref.Reference;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class ConnectionPool {
    static final boolean $assertionsDisabled = false;
    private static final long DEFAULT_KEEP_ALIVE_DURATION_MS = 300000;
    private static final ConnectionPool systemDefault;
    private Runnable cleanupRunnable;
    private final Deque<a> connections;
    private final Executor executor;
    private final long keepAliveDurationNs;
    private final int maxIdleConnections;
    final f routeDatabase;

    static {
        String property = System.getProperty("http.keepAlive");
        String property2 = System.getProperty("http.keepAliveDuration");
        String property3 = System.getProperty("http.maxConnections");
        long j10 = property2 != null ? Long.parseLong(property2) : DEFAULT_KEEP_ALIVE_DURATION_MS;
        if (property != null && !Boolean.parseBoolean(property)) {
            systemDefault = new ConnectionPool(0, j10);
        } else if (property3 != null) {
            systemDefault = new ConnectionPool(Integer.parseInt(property3), j10);
        } else {
            systemDefault = new ConnectionPool(5, j10);
        }
    }

    public ConnectionPool(int i10, long j10) {
        this(i10, j10, TimeUnit.MILLISECONDS);
    }

    public static ConnectionPool getDefault() {
        return systemDefault;
    }

    private int pruneAndGetAllocationCount(a aVar, long j10) {
        List list = aVar.f61346j;
        int i10 = 0;
        while (i10 < list.size()) {
            if (((Reference) list.get(i10)).get() != null) {
                i10++;
            } else {
                c.logger.warning("A connection to " + aVar.getRoute().getAddress().url() + " was leaked. Did you forget to close a response body?");
                list.remove(i10);
                aVar.f61347k = true;
                if (list.isEmpty()) {
                    aVar.f61348l = j10 - this.keepAliveDurationNs;
                    return 0;
                }
            }
        }
        return list.size();
    }

    long cleanup(long j10) {
        synchronized (this) {
            try {
                int i10 = 0;
                long j11 = Long.MIN_VALUE;
                a aVar = null;
                int i11 = 0;
                for (a aVar2 : this.connections) {
                    if (pruneAndGetAllocationCount(aVar2, j10) > 0) {
                        i11++;
                    } else {
                        i10++;
                        long j12 = j10 - aVar2.f61348l;
                        if (j12 > j11) {
                            aVar = aVar2;
                            j11 = j12;
                        }
                    }
                }
                long j13 = this.keepAliveDurationNs;
                if (j11 < j13 && i10 <= this.maxIdleConnections) {
                    if (i10 > 0) {
                        return j13 - j11;
                    }
                    if (i11 > 0) {
                        return j13;
                    }
                    return -1L;
                }
                this.connections.remove(aVar);
                g.d(aVar.getSocket());
                return 0L;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    boolean connectionBecameIdle(a aVar) {
        if (aVar.f61347k || this.maxIdleConnections == 0) {
            this.connections.remove(aVar);
            return true;
        }
        notifyAll();
        return false;
    }

    public void evictAll() {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Iterator<a> it = this.connections.iterator();
                while (it.hasNext()) {
                    a next = it.next();
                    if (next.f61346j.isEmpty()) {
                        next.f61347k = true;
                        arrayList.add(next);
                        it.remove();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            g.d(((a) it2.next()).getSocket());
        }
    }

    a get(Address address, n nVar) {
        for (a aVar : this.connections) {
            if (aVar.f61346j.size() < aVar.a() && address.equals(aVar.getRoute().address) && !aVar.f61347k) {
                nVar.a(aVar);
                return aVar;
            }
        }
        return null;
    }

    public synchronized int getConnectionCount() {
        return this.connections.size();
    }

    public synchronized int getHttpConnectionCount() {
        return this.connections.size() - getMultiplexedConnectionCount();
    }

    public synchronized int getIdleConnectionCount() {
        int i10;
        Iterator<a> it = this.connections.iterator();
        i10 = 0;
        while (it.hasNext()) {
            if (it.next().f61346j.isEmpty()) {
                i10++;
            }
        }
        return i10;
    }

    public synchronized int getMultiplexedConnectionCount() {
        int i10;
        Iterator<a> it = this.connections.iterator();
        i10 = 0;
        while (it.hasNext()) {
            if (it.next().i()) {
                i10++;
            }
        }
        return i10;
    }

    @Deprecated
    public synchronized int getSpdyConnectionCount() {
        return getMultiplexedConnectionCount();
    }

    void put(a aVar) {
        if (this.connections.isEmpty()) {
            this.executor.execute(this.cleanupRunnable);
        }
        this.connections.add(aVar);
    }

    void setCleanupRunnableForTest(Runnable runnable) {
        this.cleanupRunnable = runnable;
    }

    public ConnectionPool(int i10, long j10, TimeUnit timeUnit) {
        this.executor = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), g.s("OkHttp ConnectionPool", true));
        this.cleanupRunnable = new Runnable() {
            @Override
            public void run() {
                while (true) {
                    long jCleanup = ConnectionPool.this.cleanup(System.nanoTime());
                    if (jCleanup == -1) {
                        return;
                    }
                    if (jCleanup > 0) {
                        long j11 = jCleanup / 1000000;
                        long j12 = jCleanup - (1000000 * j11);
                        synchronized (ConnectionPool.this) {
                            try {
                                ConnectionPool.this.wait(j11, (int) j12);
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                }
            }
        };
        this.connections = new ArrayDeque();
        this.routeDatabase = new f();
        this.maxIdleConnections = i10;
        this.keepAliveDurationNs = timeUnit.toNanos(j10);
        if (j10 > 0) {
            return;
        }
        throw new IllegalArgumentException("keepAliveDuration <= 0: " + j10);
    }
}
