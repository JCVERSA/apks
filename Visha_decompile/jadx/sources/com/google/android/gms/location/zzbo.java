package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.d8f;
import defpackage.jc7;
import defpackage.z09;

public final class zzbo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbo> CREATOR = new d8f();
    public final int zza;
    public final int zzb;
    public final long zzc;
    public final long zzd;

    public zzbo(int i, int i2, long j, long j2) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = j;
        this.zzd = j2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof zzbo) {
            zzbo zzboVar = (zzbo) obj;
            if (this.zza == zzboVar.zza && this.zzb == zzboVar.zzb && this.zzc == zzboVar.zzc && this.zzd == zzboVar.zzd) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return jc7.b(Integer.valueOf(this.zzb), Integer.valueOf(this.zza), Long.valueOf(this.zzd), Long.valueOf(this.zzc));
    }

    public final String toString() {
        return "NetworkLocationStatus: Wifi status: " + this.zza + " Cell status: " + this.zzb + " elapsed time NS: " + this.zzd + " system time ms: " + this.zzc;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zza);
        z09.s(parcel, 2, this.zzb);
        z09.w(parcel, 3, this.zzc);
        z09.w(parcel, 4, this.zzd);
        z09.b(parcel, iA);
    }
}
