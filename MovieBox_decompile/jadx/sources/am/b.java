package am;

import android.os.Looper;
import androidx.p009lifecycle.b0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t1;

public abstract class b {

    private final String f402a = getClass().getSimpleName();

    private volatile Object f403b;

    private volatile b0 f404c;

    private volatile io.reactivex.rxjava3.disposables.c f405d;

    private volatile t1 f406e;

    private final boolean e(b0 b0Var) {
        if (this.f403b == null) {
            this.f404c = b0Var;
            return true;
        }
        if (b0Var == null) {
            return false;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.f402a;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "load data from preload", false, 4, null);
        b0Var.q(this.f403b);
        this.f403b = null;
        return false;
    }

    public static void g(b bVar, b0 b0Var, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadData");
        }
        if ((i10 & 1) != 0) {
            b0Var = null;
        }
        bVar.f(b0Var);
    }

    public final synchronized Object a() {
        Object obj;
        obj = this.f403b;
        this.f403b = null;
        return obj;
    }

    public final String b() {
        return this.f402a;
    }

    public final void c(Object obj) {
        if (this.f404c == null) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String TAG = this.f402a;
            Intrinsics.g(TAG, "TAG");
            wf.a.C0922a.f(c0922a, TAG, "load data handleFailureResult :", false, 4, null);
        } else {
            wf.a.C0922a c0922a2 = wf.a.f74274a;
            String TAG2 = this.f402a;
            Intrinsics.g(TAG2, "TAG");
            wf.a.C0922a.f(c0922a2, TAG2, "load data handleFailureResult : return to ui", false, 4, null);
            if (Intrinsics.c(Thread.currentThread(), Looper.getMainLooper().getThread())) {
                b0 b0Var = this.f404c;
                if (b0Var != null) {
                    b0Var.q(obj);
                }
            } else {
                b0 b0Var2 = this.f404c;
                if (b0Var2 != null) {
                    b0Var2.n(obj);
                }
            }
        }
        io.reactivex.rxjava3.disposables.c cVar = this.f405d;
        if (cVar != null) {
            d.a(cVar);
        }
    }

    public final void d(Object obj) {
        if (this.f404c == null) {
            this.f403b = obj;
            wf.a.C0922a c0922a = wf.a.f74274a;
            String TAG = this.f402a;
            Intrinsics.g(TAG, "TAG");
            wf.a.C0922a.f(c0922a, TAG, "load data handleSuccessResult : cache data", false, 4, null);
        } else {
            wf.a.C0922a c0922a2 = wf.a.f74274a;
            String TAG2 = this.f402a;
            Intrinsics.g(TAG2, "TAG");
            wf.a.C0922a.f(c0922a2, TAG2, "load data handleSuccessResult : return to ui", false, 4, null);
            if (Intrinsics.c(Thread.currentThread(), Looper.getMainLooper().getThread())) {
                b0 b0Var = this.f404c;
                if (b0Var != null) {
                    b0Var.q(obj);
                }
            } else {
                b0 b0Var2 = this.f404c;
                if (b0Var2 != null) {
                    b0Var2.n(obj);
                }
            }
        }
        io.reactivex.rxjava3.disposables.c cVar = this.f405d;
        if (cVar != null) {
            d.a(cVar);
        }
    }

    public final void f(b0 b0Var) {
        t1 t1Var;
        if (e(b0Var)) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String TAG = this.f402a;
            Intrinsics.g(TAG, "TAG");
            wf.a.C0922a.f(c0922a, TAG, "loadData  disposable:" + this.f405d + "  this:" + this, false, 4, null);
            io.reactivex.rxjava3.disposables.c cVar = this.f405d;
            if ((cVar != null && !cVar.isDisposed()) || ((t1Var = this.f406e) != null && t1Var.isActive())) {
                String TAG2 = this.f402a;
                Intrinsics.g(TAG2, "TAG");
                wf.a.C0922a.f(c0922a, TAG2, "load data ing .. wait", false, 4, null);
            } else {
                String TAG3 = this.f402a;
                Intrinsics.g(TAG3, "TAG");
                wf.a.C0922a.f(c0922a, TAG3, "loadDataFromService", false, 4, null);
                h(b0Var);
            }
        }
    }

    public abstract void h(b0 b0Var);

    public final void i(io.reactivex.rxjava3.disposables.c cVar) {
        this.f405d = cVar;
    }

    public final void j(t1 t1Var) {
        this.f406e = t1Var;
    }
}
