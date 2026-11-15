package defpackage;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.internal.ads.s3;

public final class c5f implements a.InterfaceC0093a {
    public final eff b;
    public final s3 c;

    public c5f(s3 s3Var, eff effVar) {
        this.b = effVar;
        this.c = s3Var;
    }

    @Override
    public final void onConnected(Bundle bundle) {
        try {
            this.b.c(this.c.a.I());
        } catch (DeadObjectException e) {
            this.b.d(e);
        }
    }

    @Override
    public final void onConnectionSuspended(int i) {
        this.b.d(new RuntimeException("onConnectionSuspended: " + i));
    }
}
