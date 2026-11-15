package defpackage;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.m;

public abstract class y0e extends l0e {
    public final zda b;

    public y0e(int i, zda zdaVar) {
        super(i);
        this.b = zdaVar;
    }

    @Override
    public final void a(Status status) {
        this.b.d(new ApiException(status));
    }

    @Override
    public final void b(Exception exc) {
        this.b.d(exc);
    }

    @Override
    public final void c(m mVar) throws DeadObjectException {
        try {
            h(mVar);
        } catch (DeadObjectException e) {
            a(w1e.e(e));
            throw e;
        } catch (RemoteException e2) {
            a(w1e.e(e2));
        } catch (RuntimeException e3) {
            this.b.d(e3);
        }
    }

    public abstract void h(m mVar);
}
