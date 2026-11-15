package defpackage;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.NotificationLite;

public final class od9 implements pd7, rc2 {
    public final pd7 b;
    public final boolean c;
    public rc2 d;
    public boolean e;
    public qf f;
    public volatile boolean g;

    public od9(pd7 pd7Var) {
        this(pd7Var, false);
    }

    public void a() {
        qf qfVar;
        do {
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
        } while (!qfVar.a(this.b));
    }

    @Override
    public void dispose() {
        this.d.dispose();
    }

    @Override
    public boolean isDisposed() {
        return this.d.isDisposed();
    }

    @Override
    public void onComplete() {
        if (this.g) {
            return;
        }
        synchronized (this) {
            try {
                if (this.g) {
                    return;
                }
                if (!this.e) {
                    this.g = true;
                    this.e = true;
                    this.b.onComplete();
                } else {
                    qf qfVar = this.f;
                    if (qfVar == null) {
                        qfVar = new qf(4);
                        this.f = qfVar;
                    }
                    qfVar.b(NotificationLite.complete());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void onError(Throwable th) {
        if (this.g) {
            yw8.s(th);
            return;
        }
        synchronized (this) {
            try {
                boolean z = true;
                if (!this.g) {
                    if (this.e) {
                        this.g = true;
                        qf qfVar = this.f;
                        if (qfVar == null) {
                            qfVar = new qf(4);
                            this.f = qfVar;
                        }
                        Object objError = NotificationLite.error(th);
                        if (this.c) {
                            qfVar.b(objError);
                        } else {
                            qfVar.d(objError);
                        }
                        return;
                    }
                    this.g = true;
                    this.e = true;
                    z = false;
                }
                if (z) {
                    yw8.s(th);
                } else {
                    this.b.onError(th);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onNext(Object obj) {
        if (this.g) {
            return;
        }
        if (obj == null) {
            this.d.dispose();
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return;
        }
        synchronized (this) {
            try {
                if (this.g) {
                    return;
                }
                if (!this.e) {
                    this.e = true;
                    this.b.onNext(obj);
                    a();
                } else {
                    qf qfVar = this.f;
                    if (qfVar == null) {
                        qfVar = new qf(4);
                        this.f = qfVar;
                    }
                    qfVar.b(NotificationLite.next(obj));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (DisposableHelper.validate(this.d, rc2Var)) {
            this.d = rc2Var;
            this.b.onSubscribe(this);
        }
    }

    public od9(pd7 pd7Var, boolean z) {
        this.b = pd7Var;
        this.c = z;
    }
}
