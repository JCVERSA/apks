package defpackage;

import com.google.android.gms.internal.ads.e0;
import com.google.android.gms.internal.ads.t;
import com.google.android.gms.internal.ads.zzgyk;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;

public final class xse implements Callable {
    public final e0 b;
    public final ooe c;

    public xse(e0 e0Var, ooe ooeVar) {
        this.b = e0Var;
        this.c = ooeVar;
    }

    @Override
    public final Object call() throws ExecutionException, InterruptedException {
        e0 e0Var = this.b;
        if (e0Var.k() != null) {
            e0Var.k().get();
        }
        t tVarC = e0Var.c();
        if (tVarC == null) {
            return null;
        }
        try {
            ooe ooeVar = this.c;
            synchronized (ooeVar) {
                try {
                    ooeVar.f(tVarC.l(), esi.a());
                } catch (Throwable th) {
                    throw th;
                }
            }
            return null;
        } catch (zzgyk | NullPointerException unused) {
            return null;
        }
    }
}
