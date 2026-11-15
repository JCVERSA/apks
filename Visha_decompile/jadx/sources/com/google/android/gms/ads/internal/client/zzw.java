package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class zzw implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        String strP = null;
        zze zzeVar = null;
        Bundle bundleF = null;
        String strP2 = null;
        String strP3 = null;
        String strP4 = null;
        String strP5 = null;
        long jG = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 2:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 3:
                    zzeVar = (zze) SafeParcelReader.o(parcel, iC, zze.CREATOR);
                    break;
                case 4:
                    bundleF = SafeParcelReader.f(parcel, iC);
                    break;
                case 5:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 6:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 7:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 8:
                    strP5 = SafeParcelReader.p(parcel, iC);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzv(strP, jG, zzeVar, bundleF, strP2, strP3, strP4, strP5);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzv[i];
    }
}
