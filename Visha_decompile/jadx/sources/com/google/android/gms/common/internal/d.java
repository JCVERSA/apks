package com.google.android.gms.common.internal;

import com.google.android.gms.common.ConnectionResult;
import defpackage.qe7;

public final class d implements a.b {
    public final qe7 b;

    public d(qe7 qe7Var) {
        this.b = qe7Var;
    }

    @Override
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.b.onConnectionFailed(connectionResult);
    }
}
