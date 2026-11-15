package com.google.android.libraries.places.internal;

final class zzjz extends zzkb {
    private final String zza;
    private final int zzb;
    private final int zzc;

    zzjz(String str, int i10, int i11, zzjy zzjyVar) {
        this.zza = str;
        this.zzb = i10;
        this.zzc = i11;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzkb) {
            zzkb zzkbVar = (zzkb) obj;
            if (this.zza.equals(zzkbVar.zzb()) && this.zzb == zzkbVar.zza() && this.zzc == zzkbVar.zzc()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.zza.hashCode() ^ 1000003) * 1000003) ^ this.zzb) * 1000003) ^ this.zzc;
    }

    public final String toString() {
        String str = this.zzc != 1 ? "AUTOCOMPLETE_WIDGET" : "PROGRAMMATIC_API";
        int i10 = this.zzb;
        return "ClientProfile{packageName=" + this.zza + ", versionCode=" + i10 + ", requestSource=" + str + "}";
    }

    @Override
    public final int zza() {
        return this.zzb;
    }

    @Override
    public final String zzb() {
        return this.zza;
    }

    @Override
    public final int zzc() {
        return this.zzc;
    }
}
