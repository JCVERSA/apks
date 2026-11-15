package defpackage;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.m;

public final class q1e extends l0e {
    public final yda b;
    public final zda c;
    public final qx9 d;

    public q1e(int i, yda ydaVar, zda zdaVar, qx9 qx9Var) {
        super(i);
        this.c = zdaVar;
        this.b = ydaVar;
        this.d = qx9Var;
        if (i == 2 && ydaVar.c()) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }

    @Override
    public final void a(Status status) {
        this.c.d(this.d.a(status));
    }

    @Override
    public final void b(Exception exc) {
        this.c.d(exc);
    }

    @Override
    public final void c(m mVar) throws DeadObjectException {
        try {
            this.b.b(mVar.s(), this.c);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            a(w1e.e(e2));
        } catch (RuntimeException e3) {
            this.c.d(e3);
        }
    }

    @Override
    public final void d(ozd ozdVar, boolean z) {
        ozdVar.d(this.c, z);
    }

    @Override
    public final boolean f(m mVar) {
        return this.b.c();
    }

    @Override
    public final Feature[] g(m mVar) {
        return this.b.e();
    }
}
