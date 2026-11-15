package defpackage;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class evg implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        String strP = null;
        ConnectionResult connectionResult = null;
        int iE = 0;
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 2) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 3) {
                pendingIntent = (PendingIntent) SafeParcelReader.o(parcel, iC, PendingIntent.CREATOR);
            } else if (iV != 4) {
                SafeParcelReader.K(parcel, iC);
            } else {
                connectionResult = (ConnectionResult) SafeParcelReader.o(parcel, iC, ConnectionResult.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new Status(iE, strP, pendingIntent, connectionResult);
    }

    @Override
    public final Object[] newArray(int i) {
        return new Status[i];
    }
}
