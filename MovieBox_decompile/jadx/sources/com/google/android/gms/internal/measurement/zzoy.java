package com.google.android.gms.internal.measurement;

public final class zzoy implements zzoz {
    private static final zzhj<Boolean> zza;
    private static final zzhj<Boolean> zzb;

    static {
        zzhr zzhrVarZza = new zzhr(zzhk.zza("com.google.android.gms.measurement")).zzb().zza();
        zza = zzhrVarZza.zza("measurement.gmscore_feature_tracking", true);
        zzb = zzhrVarZza.zza("measurement.gmscore_client_telemetry", false);
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
