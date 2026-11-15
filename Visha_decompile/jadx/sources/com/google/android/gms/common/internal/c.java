package com.google.android.gms.common.internal;

import android.os.Bundle;
import defpackage.bf1;

public final class c implements a.InterfaceC0093a {
    public final bf1 b;

    public c(bf1 bf1Var) {
        this.b = bf1Var;
    }

    @Override
    public final void onConnected(Bundle bundle) {
        this.b.onConnected(bundle);
    }

    @Override
    public final void onConnectionSuspended(int i) {
        this.b.onConnectionSuspended(i);
    }
}
