package com.google.android.gms.common;

import java.util.concurrent.Callable;

final class zzv extends zzx {
    private final Callable zze;

    zzv(Callable callable, zzu zzuVar) {
        super();
        this.zze = callable;
    }

    @Override
    final String zza() {
        try {
            return (String) this.zze.call();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }
}
