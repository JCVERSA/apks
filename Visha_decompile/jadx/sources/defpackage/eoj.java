package defpackage;

import com.google.android.gms.tasks.DuplicateTaskCompletionException;
import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.b;
import com.google.android.gms.tasks.c;
import com.google.android.gms.tasks.d;
import com.google.android.gms.tasks.e;
import com.google.android.gms.tasks.f;
import com.google.android.gms.tasks.g;
import com.google.android.gms.tasks.h;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

public final class eoj extends xda {
    public final Object a = new Object();
    public final qij b = new qij();
    public boolean c;
    public volatile boolean d;
    public Object e;
    public Exception f;

    public final void A() {
        synchronized (this.a) {
            try {
                if (this.c) {
                    this.b.b(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final xda a(Executor executor, ne7 ne7Var) {
        this.b.a(new d(executor, ne7Var));
        A();
        return this;
    }

    @Override
    public final xda b(pe7 pe7Var) {
        this.b.a(new e(fea.a, pe7Var));
        A();
        return this;
    }

    @Override
    public final xda c(Executor executor, pe7 pe7Var) {
        this.b.a(new e(executor, pe7Var));
        A();
        return this;
    }

    @Override
    public final xda d(re7 re7Var) {
        e(fea.a, re7Var);
        return this;
    }

    @Override
    public final xda e(Executor executor, re7 re7Var) {
        this.b.a(new f(executor, re7Var));
        A();
        return this;
    }

    @Override
    public final xda f(lf7 lf7Var) {
        g(fea.a, lf7Var);
        return this;
    }

    @Override
    public final xda g(Executor executor, lf7 lf7Var) {
        this.b.a(new g(executor, lf7Var));
        A();
        return this;
    }

    @Override
    public final xda h(xh1 xh1Var) {
        return i(fea.a, xh1Var);
    }

    @Override
    public final xda i(Executor executor, xh1 xh1Var) {
        eoj eojVar = new eoj();
        this.b.a(new b(executor, xh1Var, eojVar));
        A();
        return eojVar;
    }

    @Override
    public final xda j(xh1 xh1Var) {
        return k(fea.a, xh1Var);
    }

    @Override
    public final xda k(Executor executor, xh1 xh1Var) {
        eoj eojVar = new eoj();
        this.b.a(new c(executor, xh1Var, eojVar));
        A();
        return eojVar;
    }

    @Override
    public final Exception l() {
        Exception exc;
        synchronized (this.a) {
            exc = this.f;
        }
        return exc;
    }

    @Override
    public final Object m() {
        Object obj;
        synchronized (this.a) {
            try {
                x();
                y();
                Exception exc = this.f;
                if (exc != null) {
                    throw new RuntimeExecutionException(exc);
                }
                obj = this.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    @Override
    public final Object n(Class cls) {
        Object obj;
        synchronized (this.a) {
            try {
                x();
                y();
                if (cls.isInstance(this.f)) {
                    throw ((Throwable) cls.cast(this.f));
                }
                Exception exc = this.f;
                if (exc != null) {
                    throw new RuntimeExecutionException(exc);
                }
                obj = this.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    @Override
    public final boolean o() {
        return this.d;
    }

    @Override
    public final boolean p() {
        boolean z;
        synchronized (this.a) {
            z = this.c;
        }
        return z;
    }

    @Override
    public final boolean q() {
        boolean z;
        synchronized (this.a) {
            try {
                z = false;
                if (this.c && !this.d && this.f == null) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override
    public final xda r(Executor executor, q6a q6aVar) {
        eoj eojVar = new eoj();
        this.b.a(new h(executor, q6aVar, eojVar));
        A();
        return eojVar;
    }

    public final void s(Exception exc) {
        wd8.m(exc, "Exception must not be null");
        synchronized (this.a) {
            z();
            this.c = true;
            this.f = exc;
        }
        this.b.b(this);
    }

    public final void t(Object obj) {
        synchronized (this.a) {
            z();
            this.c = true;
            this.e = obj;
        }
        this.b.b(this);
    }

    public final boolean u() {
        synchronized (this.a) {
            try {
                if (this.c) {
                    return false;
                }
                this.c = true;
                this.d = true;
                this.b.b(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean v(Exception exc) {
        wd8.m(exc, "Exception must not be null");
        synchronized (this.a) {
            try {
                if (this.c) {
                    return false;
                }
                this.c = true;
                this.f = exc;
                this.b.b(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean w(Object obj) {
        synchronized (this.a) {
            try {
                if (this.c) {
                    return false;
                }
                this.c = true;
                this.e = obj;
                this.b.b(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void x() {
        wd8.p(this.c, "Task is not yet complete");
    }

    public final void y() {
        if (this.d) {
            throw new CancellationException("Task is already canceled.");
        }
    }

    public final void z() {
        if (this.c) {
            throw DuplicateTaskCompletionException.of(this);
        }
    }
}
