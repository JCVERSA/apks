package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.a;

public final class xwe implements a.b {
    public final eff b;
    public final ywe c;

    public xwe(ywe yweVar, eff effVar) {
        this.b = effVar;
        this.c = yweVar;
    }

    @Override
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        synchronized (this.c.d) {
            this.b.d(new RuntimeException("Connection failed."));
        }
    }
}
