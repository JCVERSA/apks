package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.alibaba.android.arouter.utils.Consts;
import com.google.android.gms.ads.VersionInfo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.k9f;
import defpackage.z09;
import java.util.Arrays;

public final class zzbrm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbrm> CREATOR = new k9f();
    public final int zza;
    public final int zzb;
    public final int zzc;

    public zzbrm(int i, int i2, int i3) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
    }

    public static zzbrm zza(VersionInfo versionInfo) {
        return new zzbrm(versionInfo.getMajorVersion(), versionInfo.getMinorVersion(), versionInfo.getMicroVersion());
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzbrm)) {
            zzbrm zzbrmVar = (zzbrm) obj;
            if (zzbrmVar.zzc == this.zzc && zzbrmVar.zzb == this.zzb && zzbrmVar.zza == this.zza) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new int[]{this.zza, this.zzb, this.zzc});
    }

    public final String toString() {
        return this.zza + Consts.DOT + this.zzb + Consts.DOT + this.zzc;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.s(parcel, 2, this.zzb);
        z09.s(parcel, 3, this.zzc);
        z09.b(parcel, iA);
    }
}
