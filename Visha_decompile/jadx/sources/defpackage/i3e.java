package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class i3e implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        String strP = "";
        GoogleSignInAccount googleSignInAccount = null;
        String strP2 = "";
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 4) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 7) {
                googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.o(parcel, iC, GoogleSignInAccount.CREATOR);
            } else if (iV != 8) {
                SafeParcelReader.K(parcel, iC);
            } else {
                strP2 = SafeParcelReader.p(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new SignInAccount(strP, googleSignInAccount, strP2);
    }

    @Override
    public final Object[] newArray(int i) {
        return new SignInAccount[i];
    }
}
