package com.google.android.gms.measurement.internal;

public enum zzjh {
    UNINITIALIZED("uninitialized"),
    POLICY("eu_consent_policy"),
    DENIED("denied"),
    GRANTED("granted");

    private final String zzf;

    zzjh(String str) {
        this.zzf = str;
    }

    @Override
    public final String toString() {
        return this.zzf;
    }
}
