package com.google.android.gms.internal.measurement;

public final class zzoa implements zzob {
    private static final zzhj<Boolean> zza;
    private static final zzhj<Boolean> zzb;

    static {
        zzhr zzhrVarZza = new zzhr(zzhk.zza("com.google.android.gms.measurement")).zzb().zza();
        zzhrVarZza.zza("measurement.collection.event_safelist", true);
        zza = zzhrVarZza.zza("measurement.service.store_null_safelist", true);
        zzb = zzhrVarZza.zza("measurement.service.store_safelist", true);
    }

    @Override
    public final boolean zza() {
        return true;
    }

    @Override
    public final boolean zzb() {
        return zza.zza().booleanValue();
    }

    @Override
    public final boolean zzc() {
        return zzb.zza().booleanValue();
    }
}
