package com.google.android.gms.internal.play_billing;

final class zzdb extends ThreadLocal {
    zzdb() {
    }

    @Override
    protected final Object initialValue() {
        return new zzdc();
    }
}
