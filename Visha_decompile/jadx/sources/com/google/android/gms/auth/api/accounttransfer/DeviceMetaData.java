package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.cqj;
import defpackage.z09;

public class DeviceMetaData extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<DeviceMetaData> CREATOR = new cqj();
    final int zza;
    private boolean zzb;
    private long zzc;
    private final boolean zzd;

    public DeviceMetaData(int i, boolean z, long j, boolean z2) {
        this.zza = i;
        this.zzb = z;
        this.zzc = j;
        this.zzd = z2;
    }

    public long getMinAgeOfLockScreen() {
        return this.zzc;
    }

    public boolean isChallengeAllowed() {
        return this.zzd;
    }

    public boolean isLockScreenSolved() {
        return this.zzb;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zza);
        z09.g(parcel, 2, isLockScreenSolved());
        z09.w(parcel, 3, getMinAgeOfLockScreen());
        z09.g(parcel, 4, isChallengeAllowed());
        z09.b(parcel, iA);
    }
}
