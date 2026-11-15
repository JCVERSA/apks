package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class a implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        BeginSignInRequest.PasswordRequestOptions passwordRequestOptions = null;
        BeginSignInRequest.GoogleIdTokenRequestOptions googleIdTokenRequestOptions = null;
        String strP = null;
        boolean zW = false;
        int iE = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                passwordRequestOptions = (BeginSignInRequest.PasswordRequestOptions) SafeParcelReader.o(parcel, iC, BeginSignInRequest.PasswordRequestOptions.CREATOR);
            } else if (iV == 2) {
                googleIdTokenRequestOptions = (BeginSignInRequest.GoogleIdTokenRequestOptions) SafeParcelReader.o(parcel, iC, BeginSignInRequest.GoogleIdTokenRequestOptions.CREATOR);
            } else if (iV == 3) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 4) {
                zW = SafeParcelReader.w(parcel, iC);
            } else if (iV != 5) {
                SafeParcelReader.K(parcel, iC);
            } else {
                iE = SafeParcelReader.E(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new BeginSignInRequest(passwordRequestOptions, googleIdTokenRequestOptions, strP, zW, iE);
    }

    @Override
    public final Object[] newArray(int i) {
        return new BeginSignInRequest[i];
    }
}
