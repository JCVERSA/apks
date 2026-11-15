package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class zzo implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        long jG = 0;
        boolean zW = false;
        int iE = 0;
        int iE2 = 0;
        boolean zW2 = false;
        zzc zzcVar = null;
        IBinder iBinderD = null;
        IBinder iBinderD2 = null;
        IBinder iBinderD3 = null;
        IBinder iBinderD4 = null;
        String strP = null;
        String strP2 = null;
        IBinder iBinderD5 = null;
        String strP3 = null;
        VersionInfoParcel versionInfoParcel = null;
        String strP4 = null;
        com.google.android.gms.ads.internal.zzl zzlVar = null;
        IBinder iBinderD6 = null;
        String strP5 = null;
        String strP6 = null;
        String strP7 = null;
        IBinder iBinderD7 = null;
        IBinder iBinderD8 = null;
        IBinder iBinderD9 = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 2:
                    zzcVar = (zzc) SafeParcelReader.o(parcel, iC, zzc.CREATOR);
                    break;
                case 3:
                    iBinderD = SafeParcelReader.D(parcel, iC);
                    break;
                case 4:
                    iBinderD2 = SafeParcelReader.D(parcel, iC);
                    break;
                case 5:
                    iBinderD3 = SafeParcelReader.D(parcel, iC);
                    break;
                case 6:
                    iBinderD4 = SafeParcelReader.D(parcel, iC);
                    break;
                case 7:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 8:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 9:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 10:
                    iBinderD5 = SafeParcelReader.D(parcel, iC);
                    break;
                case 11:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 12:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                case 13:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 14:
                    versionInfoParcel = (VersionInfoParcel) SafeParcelReader.o(parcel, iC, VersionInfoParcel.CREATOR);
                    break;
                case 15:
                case 20:
                case 21:
                case 22:
                case 23:
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
                case 16:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 17:
                    zzlVar = (com.google.android.gms.ads.internal.zzl) SafeParcelReader.o(parcel, iC, com.google.android.gms.ads.internal.zzl.CREATOR);
                    break;
                case 18:
                    iBinderD6 = SafeParcelReader.D(parcel, iC);
                    break;
                case 19:
                    strP5 = SafeParcelReader.p(parcel, iC);
                    break;
                case 24:
                    strP6 = SafeParcelReader.p(parcel, iC);
                    break;
                case 25:
                    strP7 = SafeParcelReader.p(parcel, iC);
                    break;
                case 26:
                    iBinderD7 = SafeParcelReader.D(parcel, iC);
                    break;
                case 27:
                    iBinderD8 = SafeParcelReader.D(parcel, iC);
                    break;
                case 28:
                    iBinderD9 = SafeParcelReader.D(parcel, iC);
                    break;
                case 29:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 30:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new AdOverlayInfoParcel(zzcVar, iBinderD, iBinderD2, iBinderD3, iBinderD4, strP, zW, strP2, iBinderD5, iE, iE2, strP3, versionInfoParcel, strP4, zzlVar, iBinderD6, strP5, strP6, strP7, iBinderD7, iBinderD8, iBinderD9, zW2, jG);
    }

    @Override
    public final Object[] newArray(int i) {
        return new AdOverlayInfoParcel[i];
    }
}
