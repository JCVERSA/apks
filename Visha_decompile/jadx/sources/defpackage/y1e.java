package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zav;
import com.google.android.gms.signin.internal.zak;

public final class y1e implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        ConnectionResult connectionResult = null;
        int iE = 0;
        zav zavVar = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 2) {
                connectionResult = (ConnectionResult) SafeParcelReader.o(parcel, iC, ConnectionResult.CREATOR);
            } else if (iV != 3) {
                SafeParcelReader.K(parcel, iC);
            } else {
                zavVar = (zav) SafeParcelReader.o(parcel, iC, zav.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zak(iE, connectionResult, zavVar);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zak[i];
    }
}
