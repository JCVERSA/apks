package com.google.android.libraries.places.internal;

public final class zzayw {
    private final zzayj zza;
    private final int zzb;
    private final boolean zzc;

    zzayw(zzayj zzayjVar, int i10, boolean z10) {
        zzmt.zzc(zzayjVar, "callOptions");
        this.zza = zzayjVar;
        this.zzb = i10;
        this.zzc = z10;
    }

    public static zzayv zza() {
        return new zzayv();
    }

    public final String toString() {
        zzmm zzmmVarZzb = zzmn.zzb(this);
        zzmmVarZzb.zzd("callOptions", this.zza);
        zzmmVarZzb.zzb("previousAttempts", this.zzb);
        zzmmVarZzb.zze("isTransparentRetry", this.zzc);
        return zzmmVarZzb.toString();
    }
}
