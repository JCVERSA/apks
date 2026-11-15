package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

public final class zzpt implements q {
    private static zzpt zza = new zzpt();
    private final q zzb = Suppliers.b(new zzpv());

    public static boolean zza() {
        return ((zzps) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzps) zza.get()).zzb();
    }

    @Override
    public final Object get() {
        return (zzps) this.zzb.get();
    }
}
