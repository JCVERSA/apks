package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

public final class zzpi implements q {
    private static zzpi zza = new zzpi();
    private final q zzb = Suppliers.b(new zzpk());

    public static boolean zza() {
        return ((zzpl) zza.get()).zza();
    }

    @Override
    public final Object get() {
        return (zzpl) this.zzb.get();
    }
}
