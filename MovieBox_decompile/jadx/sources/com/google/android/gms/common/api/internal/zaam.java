package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

final class zaam extends zabg {
    final ConnectionResult zaa;
    final zaao zab;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zaam(zaao zaaoVar, zabf zabfVar, ConnectionResult connectionResult) {
        super(zabfVar);
        this.zab = zaaoVar;
        this.zaa = connectionResult;
    }

    @Override
    public final void zaa() {
        this.zab.zaa.zaD(this.zaa);
    }
}
