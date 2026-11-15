package com.google.android.libraries.places.internal;

public enum zzaov implements zzatw {
    BUSINESS_STATUS_UNSPECIFIED(0),
    OPERATIONAL(1),
    CLOSED_TEMPORARILY(2),
    CLOSED_PERMANENTLY(3),
    FUTURE_OPENING(4),
    UNRECOGNIZED(-1);

    private static final zzatx zzg = new zzatx() {
    };
    private final int zzi;

    zzaov(int i10) {
        this.zzi = i10;
    }

    @Override
    public final String toString() {
        return Integer.toString(this.zzi);
    }
}
