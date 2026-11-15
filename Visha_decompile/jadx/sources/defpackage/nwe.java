package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.internal.ads.m0;

public final class nwe implements a.b {
    public final m0 b;

    public nwe(m0 m0Var) {
        this.b = m0Var;
    }

    @Override
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        m0 m0Var = this.b;
        synchronized (m0Var.c) {
            try {
                m0Var.f = null;
                if (m0Var.d != null) {
                    m0Var.d = null;
                }
                m0Var.c.notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
