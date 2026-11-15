package com.google.android.libraries.places.internal;

public final class zzbsx {
    private final boolean zza;
    private String[] zzb;
    private String[] zzc;
    private boolean zzd;

    public zzbsx(boolean z10) {
        this.zza = z10;
    }

    public final zzbsx zza(zzbsw... zzbswVarArr) {
        if (!this.zza) {
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }
        String[] strArr = new String[zzbswVarArr.length];
        for (int i10 = 0; i10 < zzbswVarArr.length; i10++) {
            strArr[i10] = zzbswVarArr[i10].zzbb;
        }
        this.zzb = strArr;
        return this;
    }

    public final zzbsx zzb(String... strArr) throws CloneNotSupportedException {
        if (!this.zza) {
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }
        if (strArr == null) {
            this.zzb = null;
        } else {
            this.zzb = (String[]) strArr.clone();
        }
        return this;
    }

    public final zzbsx zzc(boolean z10) {
        if (!this.zza) {
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }
        this.zzd = true;
        return this;
    }

    public final zzbsx zzd(zzbtn... zzbtnVarArr) {
        if (!this.zza) {
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }
        String[] strArr = new String[zzbtnVarArr.length];
        for (int i10 = 0; i10 < zzbtnVarArr.length; i10++) {
            strArr[i10] = zzbtnVarArr[i10].zzf;
        }
        this.zzc = strArr;
        return this;
    }

    public final zzbsx zze(String... strArr) throws CloneNotSupportedException {
        if (!this.zza) {
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }
        if (strArr == null) {
            this.zzc = null;
        } else {
            this.zzc = (String[]) strArr.clone();
        }
        return this;
    }

    public final zzbsz zzf() {
        return new zzbsz(this);
    }

    public zzbsx(zzbsz zzbszVar) {
        this.zza = zzbszVar.zzd;
        this.zzb = zzbszVar.zzg;
        this.zzc = zzbszVar.zzh;
        this.zzd = zzbszVar.zze;
    }
}
