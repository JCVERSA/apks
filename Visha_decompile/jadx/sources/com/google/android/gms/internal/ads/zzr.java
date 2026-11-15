package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import defpackage.bue;
import defpackage.kfh;
import defpackage.khj;
import java.util.Arrays;
import java.util.Objects;
import java.util.UUID;

public final class zzr implements Parcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new khj();
    public final UUID zza;

    @Nullable
    public final String zzb;
    public final String zzc;

    @Nullable
    public final byte[] zzd;
    private int zze;

    public zzr(Parcel parcel) {
        this.zza = new UUID(parcel.readLong(), parcel.readLong());
        this.zzb = parcel.readString();
        String string = parcel.readString();
        int i = kfh.a;
        this.zzc = string;
        this.zzd = parcel.createByteArray();
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof zzr)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzr zzrVar = (zzr) obj;
        return Objects.equals(this.zzb, zzrVar.zzb) && Objects.equals(this.zzc, zzrVar.zzc) && Objects.equals(this.zza, zzrVar.zza) && Arrays.equals(this.zzd, zzrVar.zzd);
    }

    public final int hashCode() {
        int i = this.zze;
        if (i != 0) {
            return i;
        }
        int iHashCode = this.zza.hashCode() * 31;
        String str = this.zzb;
        int iHashCode2 = ((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.zzc.hashCode()) * 31) + Arrays.hashCode(this.zzd);
        this.zze = iHashCode2;
        return iHashCode2;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        UUID uuid = this.zza;
        parcel.writeLong(uuid.getMostSignificantBits());
        parcel.writeLong(uuid.getLeastSignificantBits());
        parcel.writeString(this.zzb);
        parcel.writeString(this.zzc);
        parcel.writeByteArray(this.zzd);
    }

    public zzr(UUID uuid, @Nullable String str, String str2, @Nullable byte[] bArr) {
        uuid.getClass();
        this.zza = uuid;
        this.zzb = null;
        this.zzc = bue.e(str2);
        this.zzd = bArr;
    }
}
