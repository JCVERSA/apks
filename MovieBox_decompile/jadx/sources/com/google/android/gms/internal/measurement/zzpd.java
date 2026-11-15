package com.google.android.gms.internal.measurement;

public final class zzpd implements zzpa {
    private static final zzhj<Boolean> zza;

    static {
        zzhr zzhrVarZza = new zzhr(zzhk.zza("com.google.android.gms.measurement")).zzb().zza();
        zza = zzhrVarZza.zza("measurement.gmscore_network_migration", false);
        zzhrVarZza.zza("measurement.id.gmscore_network_migration", 0L);
    }

    @Override
    public final boolean zza() {
        return true;
    }

    @Override
    public final boolean zzb() {
        return zza.zza().booleanValue();
    }
}
