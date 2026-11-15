package defpackage;

import android.os.DeadObjectException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.b;
import com.google.android.gms.common.api.internal.m;

public final class g1e extends w1e {
    public final b b;

    public g1e(int i, b bVar) {
        super(i);
        this.b = (b) wd8.m(bVar, "Null methods are not runnable.");
    }

    @Override
    public final void a(Status status) {
        try {
            this.b.q(status);
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override
    public final void b(Exception exc) {
        try {
            this.b.q(new Status(10, exc.getClass().getSimpleName() + ": " + exc.getLocalizedMessage()));
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override
    public final void c(m mVar) throws DeadObjectException {
        try {
            this.b.o(mVar.s());
        } catch (RuntimeException e) {
            b(e);
        }
    }

    @Override
    public final void d(ozd ozdVar, boolean z) {
        ozdVar.c(this.b, z);
    }
}
