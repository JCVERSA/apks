package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

public final class zzqa implements q {
    private static zzqa zza = new zzqa();
    private final q zzb = Suppliers.b(new zzqc());

    public static boolean zza() {
        return ((zzqd) zza.get()).zza();
    }

    @Override
    public final Object get() {
        return (zzqd) this.zzb.get();
    }
}
