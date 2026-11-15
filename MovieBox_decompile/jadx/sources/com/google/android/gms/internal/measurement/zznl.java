package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

public final class zznl implements q {
    private static zznl zza = new zznl();
    private final q zzb = Suppliers.b(new zznn());

    public static long zza() {
        return ((zznk) zza.get()).zza();
    }

    @Override
    public final Object get() {
        return (zznk) this.zzb.get();
    }
}
