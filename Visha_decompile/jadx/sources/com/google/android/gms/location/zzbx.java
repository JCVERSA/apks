package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.jc7;
import defpackage.wd8;
import defpackage.xdf;
import defpackage.z09;

public final class zzbx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbx> CREATOR = new xdf();
    private final int zza;
    private final int zzb;
    private final int zzc;
    private final int zzd;

    public zzbx(int i, int i2, int i3, int i4) {
        wd8.p(i >= 0 && i <= 23, "Start hour must be in range [0, 23].");
        wd8.p(i2 >= 0 && i2 <= 59, "Start minute must be in range [0, 59].");
        wd8.p(i3 >= 0 && i3 <= 23, "End hour must be in range [0, 23].");
        wd8.p(i4 >= 0 && i4 <= 59, "End minute must be in range [0, 59].");
        wd8.p(((i + i2) + i3) + i4 > 0, "Parameters can't be all 0.");
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = i4;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbx)) {
            return false;
        }
        zzbx zzbxVar = (zzbx) obj;
        return this.zza == zzbxVar.zza && this.zzb == zzbxVar.zzb && this.zzc == zzbxVar.zzc && this.zzd == zzbxVar.zzd;
    }

    public final int hashCode() {
        return jc7.b(Integer.valueOf(this.zza), Integer.valueOf(this.zzb), Integer.valueOf(this.zzc), Integer.valueOf(this.zzd));
    }

    public final String toString() {
        int i = this.zza;
        int i2 = this.zzb;
        int i3 = this.zzc;
        int i4 = this.zzd;
        StringBuilder sb = new StringBuilder(117);
        sb.append("UserPreferredSleepWindow [startHour=");
        sb.append(i);
        sb.append(", startMinute=");
        sb.append(i2);
        sb.append(", endHour=");
        sb.append(i3);
        sb.append(", endMinute=");
        sb.append(i4);
        sb.append(']');
        return sb.toString();
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        wd8.l(parcel);
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zza);
        z09.s(parcel, 2, this.zzb);
        z09.s(parcel, 3, this.zzc);
        z09.s(parcel, 4, this.zzd);
        z09.b(parcel, iA);
    }
}
