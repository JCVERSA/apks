package com.google.android.libraries.places.api.model;

abstract class zzj extends zzby {
    private final int zza;
    private final int zzb;

    zzj(int i10, int i11) {
        this.zza = i10;
        this.zzb = i11;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzby) {
            zzby zzbyVar = (zzby) obj;
            if (this.zza == zzbyVar.zzb() && this.zzb == zzbyVar.zza()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zza ^ 1000003) * 1000003) ^ this.zzb;
    }

    public final String toString() {
        return "SubstringMatch{offset=" + this.zza + ", length=" + this.zzb + "}";
    }

    @Override
    final int zza() {
        return this.zzb;
    }

    @Override
    final int zzb() {
        return this.zza;
    }
}
