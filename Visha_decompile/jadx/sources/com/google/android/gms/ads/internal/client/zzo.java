package com.google.android.gms.ads.internal.client;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class zzo implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        long jG = 0;
        long jG2 = 0;
        int iE = 0;
        int iE2 = 0;
        boolean zW = false;
        int iE3 = 0;
        boolean zW2 = false;
        boolean zW3 = false;
        int iE4 = 0;
        int iE5 = 0;
        int iE6 = 0;
        Bundle bundleF = null;
        ArrayList arrayListR = null;
        String strP = null;
        zzft zzftVar = null;
        Location location = null;
        String strP2 = null;
        Bundle bundleF2 = null;
        Bundle bundleF3 = null;
        ArrayList arrayListR2 = null;
        String strP3 = null;
        String strP4 = null;
        zzc zzcVar = null;
        String strP5 = null;
        ArrayList arrayListR3 = null;
        String strP6 = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 2:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 3:
                    bundleF = SafeParcelReader.f(parcel, iC);
                    break;
                case 4:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                case 5:
                    arrayListR = SafeParcelReader.r(parcel, iC);
                    break;
                case 6:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 7:
                    iE3 = SafeParcelReader.E(parcel, iC);
                    break;
                case 8:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 9:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 10:
                    zzftVar = (zzft) SafeParcelReader.o(parcel, iC, zzft.CREATOR);
                    break;
                case 11:
                    location = (Location) SafeParcelReader.o(parcel, iC, Location.CREATOR);
                    break;
                case 12:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 13:
                    bundleF2 = SafeParcelReader.f(parcel, iC);
                    break;
                case 14:
                    bundleF3 = SafeParcelReader.f(parcel, iC);
                    break;
                case 15:
                    arrayListR2 = SafeParcelReader.r(parcel, iC);
                    break;
                case 16:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 17:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 18:
                    zW3 = SafeParcelReader.w(parcel, iC);
                    break;
                case 19:
                    zzcVar = (zzc) SafeParcelReader.o(parcel, iC, zzc.CREATOR);
                    break;
                case 20:
                    iE4 = SafeParcelReader.E(parcel, iC);
                    break;
                case 21:
                    strP5 = SafeParcelReader.p(parcel, iC);
                    break;
                case 22:
                    arrayListR3 = SafeParcelReader.r(parcel, iC);
                    break;
                case 23:
                    iE5 = SafeParcelReader.E(parcel, iC);
                    break;
                case 24:
                    strP6 = SafeParcelReader.p(parcel, iC);
                    break;
                case 25:
                    iE6 = SafeParcelReader.E(parcel, iC);
                    break;
                case 26:
                    jG2 = SafeParcelReader.G(parcel, iC);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzm(iE, jG, bundleF, iE2, arrayListR, zW, iE3, zW2, strP, zzftVar, location, strP2, bundleF2, bundleF3, arrayListR2, strP3, strP4, zW3, zzcVar, iE4, strP5, arrayListR3, iE5, strP6, iE6, jG2);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzm[i];
    }
}
