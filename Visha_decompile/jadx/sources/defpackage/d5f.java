package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.internal.ads.s3;

public final class d5f implements a.b {
    public final eff b;

    public d5f(s3 s3Var, eff effVar) {
        this.b = effVar;
    }

    @Override
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.b.d(new RuntimeException("Connection failed."));
    }
}
