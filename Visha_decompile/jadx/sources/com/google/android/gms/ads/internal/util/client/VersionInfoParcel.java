package com.google.android.gms.ads.internal.util.client;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.alibaba.android.arouter.utils.Consts;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.z09;

public final class VersionInfoParcel extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<VersionInfoParcel> CREATOR = new zzy();

    @NonNull
    public String afmaVersion;
    public int buddyApkVersion;
    public int clientJarVersion;
    public boolean isClientJar;
    public boolean isLiteSdk;

    public VersionInfoParcel(int i, int i2, boolean z) {
        this(i, i2, z, false, false);
    }

    @NonNull
    public static VersionInfoParcel forPackage() {
        return new VersionInfoParcel(12451000, 12451000, true);
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.D(parcel, 2, this.afmaVersion, false);
        z09.s(parcel, 3, this.buddyApkVersion);
        z09.s(parcel, 4, this.clientJarVersion);
        z09.g(parcel, 5, this.isClientJar);
        z09.g(parcel, 6, this.isLiteSdk);
        z09.b(parcel, iA);
    }

    public VersionInfoParcel(int i, int i2, boolean z, boolean z2) {
        this(i, i2, z, false, z2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public VersionInfoParcel(int i, int i2, boolean z, boolean z2, boolean z3) {
        String str;
        if (z) {
            str = "0";
        } else {
            str = z2 ? "2" : "1";
        }
        this("afma-sdk-a-v" + i + Consts.DOT + i2 + Consts.DOT + str, i, i2, z, z3);
    }

    public VersionInfoParcel(String str, int i, int i2, boolean z, boolean z2) {
        this.afmaVersion = str;
        this.buddyApkVersion = i;
        this.clientJarVersion = i2;
        this.isClientJar = z;
        this.isLiteSdk = z2;
    }
}
