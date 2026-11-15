package defpackage;

import com.google.android.gms.common.ConnectionResult;

public final class b2e {
    public final int a;
    public final ConnectionResult b;

    public b2e(ConnectionResult connectionResult, int i) {
        wd8.l(connectionResult);
        this.b = connectionResult;
        this.a = i;
    }

    public final int a() {
        return this.a;
    }

    public final ConnectionResult b() {
        return this.b;
    }
}
