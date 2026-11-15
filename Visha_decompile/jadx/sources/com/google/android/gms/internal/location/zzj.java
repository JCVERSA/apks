package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.location.zzs;
import defpackage.jc7;
import defpackage.z09;
import java.util.Collections;
import java.util.List;

public final class zzj extends AbstractSafeParcelable {
    final zzs zzc;
    final List<ClientIdentity> zzd;

    @Nullable
    final String zze;

    @VisibleForTesting
    static final List<ClientIdentity> zza = Collections.emptyList();
    static final zzs zzb = new zzs();
    public static final Parcelable.Creator<zzj> CREATOR = new f();

    public zzj(zzs zzsVar, List<ClientIdentity> list, String str) {
        this.zzc = zzsVar;
        this.zzd = list;
        this.zze = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzj)) {
            return false;
        }
        zzj zzjVar = (zzj) obj;
        return jc7.a(this.zzc, zzjVar.zzc) && jc7.a(this.zzd, zzjVar.zzd) && jc7.a(this.zze, zzjVar.zze);
    }

    public final int hashCode() {
        return this.zzc.hashCode();
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.zzc);
        String strValueOf2 = String.valueOf(this.zzd);
        String str = this.zze;
        int length = strValueOf.length();
        StringBuilder sb = new StringBuilder(length + 77 + strValueOf2.length() + String.valueOf(str).length());
        sb.append("DeviceOrientationRequestInternal{deviceOrientationRequest=");
        sb.append(strValueOf);
        sb.append(", clients=");
        sb.append(strValueOf2);
        sb.append(", tag='");
        sb.append(str);
        sb.append("'}");
        return sb.toString();
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.B(parcel, 1, this.zzc, i, false);
        z09.H(parcel, 2, this.zzd, false);
        z09.D(parcel, 3, this.zze, false);
        z09.b(parcel, iA);
    }
}
