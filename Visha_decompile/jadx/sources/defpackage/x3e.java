package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.identity.SavePasswordRequest;
import com.google.android.gms.auth.api.identity.SignInPassword;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class x3e implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        SignInPassword signInPassword = null;
        int iE = 0;
        String strP = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                signInPassword = (SignInPassword) SafeParcelReader.o(parcel, iC, SignInPassword.CREATOR);
            } else if (iV == 2) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV != 3) {
                SafeParcelReader.K(parcel, iC);
            } else {
                iE = SafeParcelReader.E(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new SavePasswordRequest(signInPassword, strP, iE);
    }

    @Override
    public final Object[] newArray(int i) {
        return new SavePasswordRequest[i];
    }
}
