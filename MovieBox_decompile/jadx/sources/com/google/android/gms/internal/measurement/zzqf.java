package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

public final class zzqf implements q {
    private static zzqf zza = new zzqf();
    private final q zzb = Suppliers.b(new zzqg());

    public static boolean zza() {
        return ((zzqe) zza.get()).zza();
    }

    @Override
    public final Object get() {
        return (zzqe) this.zzb.get();
    }
}
