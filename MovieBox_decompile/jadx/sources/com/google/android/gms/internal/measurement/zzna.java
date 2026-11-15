package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

public final class zzna implements q {
    private static zzna zza = new zzna();
    private final q zzb = Suppliers.b(new zznc());

    public static boolean zza() {
        return ((zznd) zza.get()).zza();
    }

    @Override
    public final Object get() {
        return (zznd) this.zzb.get();
    }
}
