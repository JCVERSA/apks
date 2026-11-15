package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zav;

public final class u2e implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        int iE = 0;
        boolean zW = false;
        boolean zW2 = false;
        IBinder iBinderD = null;
        ConnectionResult connectionResult = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 2) {
                iBinderD = SafeParcelReader.D(parcel, iC);
            } else if (iV == 3) {
                connectionResult = (ConnectionResult) SafeParcelReader.o(parcel, iC, ConnectionResult.CREATOR);
            } else if (iV == 4) {
                zW = SafeParcelReader.w(parcel, iC);
            } else if (iV != 5) {
                SafeParcelReader.K(parcel, iC);
            } else {
                zW2 = SafeParcelReader.w(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zav(iE, iBinderD, connectionResult, zW, zW2);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zav[i];
    }
}
