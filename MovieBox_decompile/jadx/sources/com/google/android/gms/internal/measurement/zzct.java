package com.google.android.gms.internal.measurement;

final class zzct extends ThreadLocal<Boolean> {
    zzct() {
    }

    @Override
    protected final Boolean initialValue() {
        return Boolean.TRUE;
    }
}
