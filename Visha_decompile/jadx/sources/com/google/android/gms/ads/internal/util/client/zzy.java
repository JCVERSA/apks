package com.google.android.gms.ads.internal.util.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class zzy implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        int iE = 0;
        int iE2 = 0;
        boolean zW = false;
        boolean zW2 = false;
        String strP = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 3) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 4) {
                iE2 = SafeParcelReader.E(parcel, iC);
            } else if (iV == 5) {
                zW = SafeParcelReader.w(parcel, iC);
            } else if (iV != 6) {
                SafeParcelReader.K(parcel, iC);
            } else {
                zW2 = SafeParcelReader.w(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new VersionInfoParcel(strP, iE, iE2, zW, zW2);
    }

    @Override
    public final Object[] newArray(int i) {
        return new VersionInfoParcel[i];
    }
}
