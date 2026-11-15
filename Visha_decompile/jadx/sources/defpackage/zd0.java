package defpackage;

import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public final class zd0 extends r1a {
    public static final Object[] i = new Object[0];
    public static final a[] j = new a[0];
    public static final a[] k = new a[0];
    public final AtomicReference b;
    public final AtomicReference c;
    public final ReadWriteLock d;
    public final Lock e;
    public final Lock f;
    public final AtomicReference g;
    public long h;

    public static final class a implements rc2, qf.a {
        public final pd7 b;
        public final zd0 c;
        public boolean d;
        public boolean e;
        public qf f;
        public boolean g;
        public volatile boolean h;
        public long i;

        public a(pd7 pd7Var, zd0 zd0Var) {
            this.b = pd7Var;
            this.c = zd0Var;
        }

        public void a() {
            if (this.h) {
                return;
            }
            synchronized (this) {
                try {
                    if (this.h) {
                        return;
                    }
                    if (this.d) {
                        return;
                    }
                    zd0 zd0Var = this.c;
                    Lock lock = zd0Var.e;
                    lock.lock();
                    this.i = zd0Var.h;
                    Object obj = zd0Var.b.get();
                    lock.unlock();
                    this.e = obj != null;
                    this.d = true;
                    if (obj == null || test(obj)) {
                        return;
                    }
                    b();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void b() {
            qf qfVar;
            while (!this.h) {
                synchronized (this) {
                    try {
                        qfVar = this.f;
                        if (qfVar == null) {
                            this.e = false;
                            return;
                        }
                        this.f = null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                qfVar.c(this);
            }
        }

        public void c(Object obj, long j) {
            if (this.h) {
                return;
            }
            if (!this.g) {
                synchronized (this) {
                    try {
                        if (this.h) {
                            return;
                        }
                        if (this.i == j) {
                            return;
                        }
                        if (this.e) {
                            qf qfVar = this.f;
                            if (qfVar == null) {
                                qfVar = new qf(4);
                                this.f = qfVar;
                            }
                            qfVar.b(obj);
                            return;
                        }
                        this.d = true;
                        this.g = true;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            test(obj);
        }

        @Override
        public void dispose() {
            if (this.h) {
                return;
            }
            this.h = true;
            this.c.r0(this);
        }

        @Override
        public boolean isDisposed() {
            return this.h;
        }

        @Override
        public boolean test(Object obj) {
            return this.h || NotificationLite.accept(obj, this.b);
        }
    }

    public zd0() {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.d = reentrantReadWriteLock;
        this.e = reentrantReadWriteLock.readLock();
        this.f = reentrantReadWriteLock.writeLock();
        this.c = new AtomicReference(j);
        this.b = new AtomicReference();
        this.g = new AtomicReference();
    }

    public static zd0 o0() {
        return new zd0();
    }

    public static zd0 p0(Object obj) {
        return new zd0(obj);
    }

    @Override
    public void c0(pd7 pd7Var) {
        a aVar = new a(pd7Var, this);
        pd7Var.onSubscribe(aVar);
        if (n0(aVar)) {
            if (aVar.h) {
                r0(aVar);
                return;
            } else {
                aVar.a();
                return;
            }
        }
        Throwable th = (Throwable) this.g.get();
        if (th == ExceptionHelper.a) {
            pd7Var.onComplete();
        } else {
            pd7Var.onError(th);
        }
    }

    public boolean n0(a aVar) {
        a[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = (a[]) this.c.get();
            if (aVarArr == k) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!wk5.a(this.c, aVarArr, aVarArr2));
        return true;
    }

    @Override
    public void onComplete() {
        if (wk5.a(this.g, null, ExceptionHelper.a)) {
            Object objComplete = NotificationLite.complete();
            for (a aVar : t0(objComplete)) {
                aVar.c(objComplete, this.h);
            }
        }
    }

    @Override
    public void onError(Throwable th) {
        ac7.d(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!wk5.a(this.g, null, th)) {
            yw8.s(th);
            return;
        }
        Object objError = NotificationLite.error(th);
        for (a aVar : t0(objError)) {
            aVar.c(objError, this.h);
        }
    }

    @Override
    public void onNext(Object obj) {
        ac7.d(obj, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.g.get() != null) {
            return;
        }
        Object next = NotificationLite.next(obj);
        s0(next);
        for (a aVar : (a[]) this.c.get()) {
            aVar.c(next, this.h);
        }
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (this.g.get() != null) {
            rc2Var.dispose();
        }
    }

    public Object q0() {
        Object obj = this.b.get();
        if (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) {
            return null;
        }
        return NotificationLite.getValue(obj);
    }

    public void r0(a aVar) {
        a[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = (a[]) this.c.get();
            int length = aVarArr.length;
            if (length == 0) {
                return;
            }
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    i2 = -1;
                    break;
                } else if (aVarArr[i2] == aVar) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 < 0) {
                return;
            }
            if (length == 1) {
                aVarArr2 = j;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i2);
                System.arraycopy(aVarArr, i2 + 1, aVarArr3, i2, (length - i2) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!wk5.a(this.c, aVarArr, aVarArr2));
    }

    public void s0(Object obj) {
        this.f.lock();
        this.h++;
        this.b.lazySet(obj);
        this.f.unlock();
    }

    public a[] t0(Object obj) {
        AtomicReference atomicReference = this.c;
        a[] aVarArr = k;
        a[] aVarArr2 = (a[]) atomicReference.getAndSet(aVarArr);
        if (aVarArr2 != aVarArr) {
            s0(obj);
        }
        return aVarArr2;
    }

    public zd0(Object obj) {
        this();
        this.b.lazySet(ac7.d(obj, "defaultValue is null"));
    }
}
