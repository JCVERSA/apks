package io.reactivex.internal.operators.observable;

import defpackage.af1;
import defpackage.gd7;
import defpackage.mc7;
import defpackage.mt8;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.yw8;
import defpackage.zf1;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableRefCount extends mc7 {
    public final af1 b;
    public final int c;
    public final long d;
    public final TimeUnit e;
    public final Scheduler f;
    public RefConnection g;

    public static final class RefConnection extends AtomicReference<rc2> implements Runnable, zf1 {
        private static final long serialVersionUID = -4552101107598366241L;
        boolean connected;
        boolean disconnectedEarly;
        final ObservableRefCount parent;
        long subscriberCount;
        rc2 timer;

        public RefConnection(ObservableRefCount observableRefCount) {
            this.parent = observableRefCount;
        }

        @Override
        public void run() {
            this.parent.r0(this);
        }

        @Override
        public void accept(rc2 rc2Var) throws Exception {
            DisposableHelper.replace(this, rc2Var);
            synchronized (this.parent) {
                try {
                    if (this.disconnectedEarly) {
                        ((mt8) this.parent.b).a(rc2Var);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static final class RefCountObserver<T> extends AtomicBoolean implements pd7, rc2 {
        private static final long serialVersionUID = -7419642935409022375L;
        final RefConnection connection;
        final pd7 downstream;
        final ObservableRefCount parent;
        rc2 upstream;

        public RefCountObserver(pd7 pd7Var, ObservableRefCount observableRefCount, RefConnection refConnection) {
            this.downstream = pd7Var;
            this.parent = observableRefCount;
            this.connection = refConnection;
        }

        @Override
        public void dispose() {
            this.upstream.dispose();
            if (compareAndSet(false, true)) {
                this.parent.n0(this.connection);
            }
        }

        @Override
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        @Override
        public void onComplete() {
            if (compareAndSet(false, true)) {
                this.parent.q0(this.connection);
                this.downstream.onComplete();
            }
        }

        @Override
        public void onError(Throwable th) {
            if (!compareAndSet(false, true)) {
                yw8.s(th);
            } else {
                this.parent.q0(this.connection);
                this.downstream.onError(th);
            }
        }

        @Override
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.upstream, rc2Var)) {
                this.upstream = rc2Var;
                this.downstream.onSubscribe(this);
            }
        }
    }

    public ObservableRefCount(af1 af1Var) {
        this(af1Var, 1, 0L, TimeUnit.NANOSECONDS, null);
    }

    @Override
    public void c0(pd7 pd7Var) {
        RefConnection refConnection;
        boolean z;
        rc2 rc2Var;
        synchronized (this) {
            try {
                refConnection = this.g;
                if (refConnection == null) {
                    refConnection = new RefConnection(this);
                    this.g = refConnection;
                }
                long j = refConnection.subscriberCount;
                if (j == 0 && (rc2Var = refConnection.timer) != null) {
                    rc2Var.dispose();
                }
                long j2 = j + 1;
                refConnection.subscriberCount = j2;
                if (refConnection.connected || j2 != this.c) {
                    z = false;
                } else {
                    z = true;
                    refConnection.connected = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.b.subscribe(new RefCountObserver(pd7Var, this, refConnection));
        if (z) {
            this.b.n0(refConnection);
        }
    }

    public void n0(RefConnection refConnection) {
        synchronized (this) {
            try {
                RefConnection refConnection2 = this.g;
                if (refConnection2 != null && refConnection2 == refConnection) {
                    long j = refConnection.subscriberCount - 1;
                    refConnection.subscriberCount = j;
                    if (j == 0 && refConnection.connected) {
                        if (this.d == 0) {
                            r0(refConnection);
                            return;
                        }
                        SequentialDisposable sequentialDisposable = new SequentialDisposable();
                        refConnection.timer = sequentialDisposable;
                        sequentialDisposable.replace(this.f.d(refConnection, this.d, this.e));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void o0(RefConnection refConnection) {
        rc2 rc2Var = refConnection.timer;
        if (rc2Var != null) {
            rc2Var.dispose();
            refConnection.timer = null;
        }
    }

    public void p0(RefConnection refConnection) {
        Object obj = this.b;
        if (obj instanceof rc2) {
            ((rc2) obj).dispose();
        } else if (obj instanceof mt8) {
            ((mt8) obj).a(refConnection.get());
        }
    }

    public void q0(RefConnection refConnection) {
        synchronized (this) {
            try {
                if (this.b instanceof gd7) {
                    RefConnection refConnection2 = this.g;
                    if (refConnection2 != null && refConnection2 == refConnection) {
                        this.g = null;
                        o0(refConnection);
                    }
                    long j = refConnection.subscriberCount - 1;
                    refConnection.subscriberCount = j;
                    if (j == 0) {
                        p0(refConnection);
                    }
                } else {
                    RefConnection refConnection3 = this.g;
                    if (refConnection3 != null && refConnection3 == refConnection) {
                        o0(refConnection);
                        long j2 = refConnection.subscriberCount - 1;
                        refConnection.subscriberCount = j2;
                        if (j2 == 0) {
                            this.g = null;
                            p0(refConnection);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void r0(RefConnection refConnection) {
        synchronized (this) {
            try {
                if (refConnection.subscriberCount == 0 && refConnection == this.g) {
                    this.g = null;
                    rc2 rc2Var = refConnection.get();
                    DisposableHelper.dispose(refConnection);
                    Object obj = this.b;
                    if (obj instanceof rc2) {
                        ((rc2) obj).dispose();
                    } else if (obj instanceof mt8) {
                        if (rc2Var == null) {
                            refConnection.disconnectedEarly = true;
                        } else {
                            ((mt8) obj).a(rc2Var);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public ObservableRefCount(af1 af1Var, int i, long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.b = af1Var;
        this.c = i;
        this.d = j;
        this.e = timeUnit;
        this.f = scheduler;
    }
}
