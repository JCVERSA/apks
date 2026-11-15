package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.List;

public final class z9h implements olg {
    public static final List b = new ArrayList(50);
    public final Handler a;

    public z9h(Handler handler) {
        this.a = handler;
    }

    public static void h(y7h y7hVar) {
        List list = b;
        synchronized (list) {
            try {
                if (list.size() < 50) {
                    list.add(y7hVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static y7h i() {
        y7h y7hVar;
        List list = b;
        synchronized (list) {
            try {
                y7hVar = list.isEmpty() ? new y7h(null) : (y7h) list.remove(list.size() - 1);
            } catch (Throwable th) {
                throw th;
            }
        }
        return y7hVar;
    }

    @Override
    public final void a(Object obj) {
        this.a.removeCallbacksAndMessages(null);
    }

    @Override
    public final nkg b(int i, Object obj) {
        Handler handler = this.a;
        y7h y7hVarI = i();
        y7hVarI.a(handler.obtainMessage(i, obj), this);
        return y7hVarI;
    }

    @Override
    public final boolean c(nkg nkgVar) {
        return ((y7h) nkgVar).b(this.a);
    }

    @Override
    public final boolean d(int i, long j) {
        return this.a.sendEmptyMessageAtTime(2, j);
    }

    @Override
    public final nkg e(int i, int i2, int i3, Object obj) {
        Handler handler = this.a;
        y7h y7hVarI = i();
        y7hVarI.a(handler.obtainMessage(31, 0, 0, obj), this);
        return y7hVarI;
    }

    @Override
    public final boolean f(Runnable runnable) {
        return this.a.post(runnable);
    }

    @Override
    public final nkg g(int i, int i2, int i3) {
        Handler handler = this.a;
        y7h y7hVarI = i();
        y7hVarI.a(handler.obtainMessage(i, i2, i3), this);
        return y7hVarI;
    }

    @Override
    public final Looper zza() {
        return this.a.getLooper();
    }

    @Override
    public final nkg zzb(int i) {
        Handler handler = this.a;
        y7h y7hVarI = i();
        y7hVarI.a(handler.obtainMessage(i), this);
        return y7hVarI;
    }

    @Override
    public final void zzg(int i) {
        this.a.removeMessages(i);
    }

    @Override
    public final boolean zzh(int i) {
        return this.a.hasMessages(1);
    }

    @Override
    public final boolean zzj(int i) {
        return this.a.sendEmptyMessage(i);
    }
}
