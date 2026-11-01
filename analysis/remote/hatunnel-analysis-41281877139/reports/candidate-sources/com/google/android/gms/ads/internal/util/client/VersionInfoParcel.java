package com.google.android.gms.ads.internal.util.client;

import android.os.Parcel;
import android.os.Parcelable;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

public final class VersionInfoParcel extends AbstractSafeParcelable {
    public static final Parcelable.Creator<VersionInfoParcel> CREATOR = new zzy();
    public String afmaVersion;
    public int buddyApkVersion;
    public int clientJarVersion;
    public boolean isClientJar;
    public boolean isLiteSdk;

    public VersionInfoParcel(int i, int i2, boolean z) {
        this(i, i2, z, false, false);
    }

    public VersionInfoParcel(int i, int i2, boolean z, boolean z2) {
        this(i, i2, z, false, z2);
    }

    public VersionInfoParcel(int i, int i2, boolean z, boolean z2, boolean z3) {
        String strS = z ? ProtectedFastSSH.s("㧇") : z2 ? ProtectedFastSSH.s("㧈") : ProtectedFastSSH.s("㧉");
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 13 + String.valueOf(i2).length() + 2);
        sb.append(ProtectedFastSSH.s("㧊"));
        sb.append(i);
        String strS2 = ProtectedFastSSH.s("㧋");
        sb.append(strS2);
        sb.append(i2);
        sb.append(strS2);
        sb.append(strS);
        this(sb.toString(), i, i2, z, z3);
    }

    VersionInfoParcel(String str, int i, int i2, boolean z, boolean z2) {
        this.afmaVersion = str;
        this.buddyApkVersion = i;
        this.clientJarVersion = i2;
        this.isClientJar = z;
        this.isLiteSdk = z2;
    }

    public static VersionInfoParcel forPackage() {
        return new VersionInfoParcel(12451000, 12451000, true);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.afmaVersion, false);
        SafeParcelWriter.writeInt(parcel, 3, this.buddyApkVersion);
        SafeParcelWriter.writeInt(parcel, 4, this.clientJarVersion);
        SafeParcelWriter.writeBoolean(parcel, 5, this.isClientJar);
        SafeParcelWriter.writeBoolean(parcel, 6, this.isLiteSdk);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
