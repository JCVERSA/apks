package com.google.android.gms.internal.measurement;

public final class zzox implements zzou {
    private static final zzhj<Boolean> zza;
    private static final zzhj<Boolean> zzb;

    static {
        zzhr zzhrVarZza = new zzhr(zzhk.zza("com.google.android.gms.measurement")).zzb().zza();
        zza = zzhrVarZza.zza("measurement.gbraid_campaign.gbraid.client", true);
        zzb = zzhrVarZza.zza("measurement.gbraid_campaign.gbraid.service", true);
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
