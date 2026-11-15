package com.google.android.libraries.places.api.model;

import androidx.annotation.Nullable;

abstract class zzv extends PhotoMetadata {
    private final String zza;
    private final int zzb;
    private final int zzc;
    private final String zzd;

    @Nullable
    private final String zze;

    @Nullable
    private final AuthorAttributions zzf;

    zzv(String str, int i10, int i11, String str2, @Nullable String str3, @Nullable AuthorAttributions authorAttributions) {
        if (str == null) {
            throw new NullPointerException("Null attributions");
        }
        this.zza = str;
        this.zzb = i10;
        this.zzc = i11;
        if (str2 == null) {
            throw new NullPointerException("Null photoReference");
        }
        this.zzd = str2;
        this.zze = str3;
        this.zzf = authorAttributions;
    }

    public final boolean equals(Object obj) {
        String str;
        AuthorAttributions authorAttributions;
        if (obj == this) {
            return true;
        }
        if (obj instanceof PhotoMetadata) {
            PhotoMetadata photoMetadata = (PhotoMetadata) obj;
            if (this.zza.equals(photoMetadata.getAttributions()) && this.zzb == photoMetadata.getHeight() && this.zzc == photoMetadata.getWidth() && this.zzd.equals(photoMetadata.zzb()) && ((str = this.zze) != null ? str.equals(photoMetadata.zza()) : photoMetadata.zza() == null) && ((authorAttributions = this.zzf) != null ? authorAttributions.equals(photoMetadata.getAuthorAttributions()) : photoMetadata.getAuthorAttributions() == null)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public String getAttributions() {
        return this.zza;
    }

    @Override
    @Nullable
    public AuthorAttributions getAuthorAttributions() {
        return this.zzf;
    }

    @Override
    public int getHeight() {
        return this.zzb;
    }

    @Override
    public int getWidth() {
        return this.zzc;
    }

    public final int hashCode() {
        int iHashCode = ((((((this.zza.hashCode() ^ 1000003) * 1000003) ^ this.zzb) * 1000003) ^ this.zzc) * 1000003) ^ this.zzd.hashCode();
        String str = this.zze;
        int iHashCode2 = ((iHashCode * 1000003) ^ (str == null ? 0 : str.hashCode())) * 1000003;
        AuthorAttributions authorAttributions = this.zzf;
        return iHashCode2 ^ (authorAttributions != null ? authorAttributions.hashCode() : 0);
    }

    public final String toString() {
        return "PhotoMetadata{attributions=" + this.zza + ", height=" + this.zzb + ", width=" + this.zzc + ", photoReference=" + this.zzd + ", name=" + this.zze + ", authorAttributions=" + String.valueOf(this.zzf) + "}";
    }

    @Override
    @Nullable
    public final String zza() {
        return this.zze;
    }

    @Override
    public final String zzb() {
        return this.zzd;
    }
}
