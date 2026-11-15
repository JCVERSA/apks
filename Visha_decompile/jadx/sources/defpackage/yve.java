package defpackage;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class yve implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        int iE = 0;
        String strP = null;
        Account account = null;
        int iE2 = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 2) {
                iE2 = SafeParcelReader.E(parcel, iC);
            } else if (iV == 3) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV != 4) {
                SafeParcelReader.K(parcel, iC);
            } else {
                account = (Account) SafeParcelReader.o(parcel, iC, Account.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new AccountChangeEventsRequest(iE, iE2, strP, account);
    }

    @Override
    public final Object[] newArray(int i) {
        return new AccountChangeEventsRequest[i];
    }
}
