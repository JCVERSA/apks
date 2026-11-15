package com.google.android.libraries.places.internal;

import java.io.Closeable;

public final class zzrt implements Closeable {
    private static final ThreadLocal zza = new zzrs();
    private int zzb = 0;

    public static int zza() {
        return ((zzrt) zza.get()).zzb;
    }

    @Override
    public final void close() {
        int i10 = this.zzb;
        if (i10 <= 0) {
            throw new AssertionError("Mismatched calls to RecursionDepth (possible error in core library)");
        }
        this.zzb = i10 - 1;
    }
}
