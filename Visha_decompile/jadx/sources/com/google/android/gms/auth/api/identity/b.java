package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class b implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        boolean zW = false;
        boolean zW2 = false;
        boolean zW3 = false;
        String strP = null;
        String strP2 = null;
        String strP3 = null;
        ArrayList arrayListR = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 4:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 5:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 6:
                    arrayListR = SafeParcelReader.r(parcel, iC);
                    break;
                case 7:
                    zW3 = SafeParcelReader.w(parcel, iC);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new BeginSignInRequest.GoogleIdTokenRequestOptions(zW, strP, strP2, zW2, strP3, arrayListR, zW3);
    }

    @Override
    public final Object[] newArray(int i) {
        return new BeginSignInRequest.GoogleIdTokenRequestOptions[i];
    }
}
