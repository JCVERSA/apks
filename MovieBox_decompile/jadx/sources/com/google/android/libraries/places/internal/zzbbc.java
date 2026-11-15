package com.google.android.libraries.places.internal;

public final class zzbbc extends zzbbk {
    private final zzbbe zza;

    public zzbbc(zzbbe zzbbeVar) {
        zzmt.zzc(zzbbeVar, "result");
        this.zza = zzbbeVar;
    }

    public final String toString() {
        return "FixedResultPicker(" + this.zza.toString() + ")";
    }

    @Override
    public final zzbbe zza(zzbbf zzbbfVar) {
        return this.zza;
    }
}
