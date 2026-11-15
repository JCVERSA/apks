package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class zzf implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        String strP = null;
        String strP2 = null;
        zze zzeVar = null;
        IBinder iBinderD = null;
        int iE = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 2) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 3) {
                strP2 = SafeParcelReader.p(parcel, iC);
            } else if (iV == 4) {
                zzeVar = (zze) SafeParcelReader.o(parcel, iC, zze.CREATOR);
            } else if (iV != 5) {
                SafeParcelReader.K(parcel, iC);
            } else {
                iBinderD = SafeParcelReader.D(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zze(iE, strP, strP2, zzeVar, iBinderD);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zze[i];
    }
}
