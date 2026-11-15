package com.google.android.gms.internal.measurement;

final class zzcd extends zzcl {
    private String zza;
    private zzco zzb;
    private zzcn zzc;
    private byte zzd;

    zzcd() {
    }

    @Override
    final zzcl zza(zzco zzcoVar) {
        if (zzcoVar == null) {
            throw new NullPointerException("Null fileChecks");
        }
        this.zzb = zzcoVar;
        return this;
    }

    public final zzcl zza(String str) {
        this.zza = str;
        return this;
    }

    @Override
    public final zzcl zza(zzcn zzcnVar) {
        if (zzcnVar != null) {
            this.zzc = zzcnVar;
            return this;
        }
        throw new NullPointerException("Null filePurpose");
    }

    @Override
    public final zzcl zza(boolean z10) {
        this.zzd = (byte) (this.zzd | 1);
        return this;
    }

    @Override
    public final zzcm zza() {
        if (this.zzd == 1 && this.zza != null && this.zzb != null && this.zzc != null) {
            return new zzce(this.zza, this.zzb, this.zzc);
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.zza == null) {
            sb2.append(" fileOwner");
        }
        if ((1 & this.zzd) == 0) {
            sb2.append(" hasDifferentDmaOwner");
        }
        if (this.zzb == null) {
            sb2.append(" fileChecks");
        }
        if (this.zzc == null) {
            sb2.append(" filePurpose");
        }
        throw new IllegalStateException("Missing required properties:" + String.valueOf(sb2));
    }
}
