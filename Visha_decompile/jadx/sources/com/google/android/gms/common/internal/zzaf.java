package com.google.android.gms.common.internal;

import com.google.android.gms.common.ConnectionResult;
import defpackage.wd8;

public final class zzaf extends Exception {
    public final ConnectionResult zza;

    public zzaf(ConnectionResult connectionResult) {
        wd8.b(connectionResult.hasResolution(), "ResolvableConnectionException can only be created with a connection result containing a resolution.");
        this.zza = connectionResult;
    }
}
