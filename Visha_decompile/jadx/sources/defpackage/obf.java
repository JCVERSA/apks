package defpackage;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzfdj;
import java.util.ArrayList;

public final class obf implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        boolean zW = false;
        boolean zW2 = false;
        int iE = 0;
        Bundle bundleF = null;
        VersionInfoParcel versionInfoParcel = null;
        ApplicationInfo applicationInfo = null;
        String strP = null;
        ArrayList arrayListR = null;
        PackageInfo packageInfo = null;
        String strP2 = null;
        String strP3 = null;
        zzfdj zzfdjVar = null;
        String strP4 = null;
        Bundle bundleF2 = null;
        Bundle bundleF3 = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    bundleF = SafeParcelReader.f(parcel, iC);
                    break;
                case 2:
                    versionInfoParcel = (VersionInfoParcel) SafeParcelReader.o(parcel, iC, VersionInfoParcel.CREATOR);
                    break;
                case 3:
                    applicationInfo = (ApplicationInfo) SafeParcelReader.o(parcel, iC, ApplicationInfo.CREATOR);
                    break;
                case 4:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 5:
                    arrayListR = SafeParcelReader.r(parcel, iC);
                    break;
                case 6:
                    packageInfo = (PackageInfo) SafeParcelReader.o(parcel, iC, PackageInfo.CREATOR);
                    break;
                case 7:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 8:
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
                case 9:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 10:
                    zzfdjVar = (zzfdj) SafeParcelReader.o(parcel, iC, zzfdj.CREATOR);
                    break;
                case 11:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 12:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 13:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 14:
                    bundleF2 = SafeParcelReader.f(parcel, iC);
                    break;
                case 15:
                    bundleF3 = SafeParcelReader.f(parcel, iC);
                    break;
                case 16:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzbuy(bundleF, versionInfoParcel, applicationInfo, strP, arrayListR, packageInfo, strP2, strP3, zzfdjVar, strP4, zW, zW2, bundleF2, bundleF3, iE);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzbuy[i];
    }
}
