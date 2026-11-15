package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class zzs implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        int iE = 0;
        int iE2 = 0;
        boolean zW = false;
        int iE3 = 0;
        int iE4 = 0;
        boolean zW2 = false;
        boolean zW3 = false;
        boolean zW4 = false;
        boolean zW5 = false;
        boolean zW6 = false;
        boolean zW7 = false;
        boolean zW8 = false;
        boolean zW9 = false;
        String strP = null;
        zzr[] zzrVarArr = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 4:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                case 5:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 6:
                    iE3 = SafeParcelReader.E(parcel, iC);
                    break;
                case 7:
                    iE4 = SafeParcelReader.E(parcel, iC);
                    break;
                case 8:
                    zzrVarArr = (zzr[]) SafeParcelReader.s(parcel, iC, zzr.CREATOR);
                    break;
                case 9:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 10:
                    zW3 = SafeParcelReader.w(parcel, iC);
                    break;
                case 11:
                    zW4 = SafeParcelReader.w(parcel, iC);
                    break;
                case 12:
                    zW5 = SafeParcelReader.w(parcel, iC);
                    break;
                case 13:
                    zW6 = SafeParcelReader.w(parcel, iC);
                    break;
                case 14:
                    zW7 = SafeParcelReader.w(parcel, iC);
                    break;
                case 15:
                    zW8 = SafeParcelReader.w(parcel, iC);
                    break;
                case 16:
                    zW9 = SafeParcelReader.w(parcel, iC);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzr(strP, iE, iE2, zW, iE3, iE4, zzrVarArr, zW2, zW3, zW4, zW5, zW6, zW7, zW8, zW9);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzr[i];
    }
}
