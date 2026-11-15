package com.google.android.gms.internal.play_billing;

import defpackage.hni;

public enum zzjz implements hni {
    BROADCAST_ACTION_UNSPECIFIED(0),
    PURCHASES_UPDATED_ACTION(1),
    LOCAL_PURCHASES_UPDATED_ACTION(2),
    ALTERNATIVE_BILLING_ACTION(3),
    IN_APP_BILLING_RESULT_UPDATE_ACTION(4),
    PLAY_BILLING_ACTIVITY_CREATED_ACTION(5);

    private final int zzh;

    zzjz(int i) {
        this.zzh = i;
    }

    @Override
    public final String toString() {
        return Integer.toString(this.zzh);
    }

    @Override
    public final int zza() {
        return this.zzh;
    }
}
