package defpackage;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class zve implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        int iE = 0;
        int iE2 = 0;
        int iE3 = 0;
        PendingIntent pendingIntent = null;
        Bundle bundleF = null;
        byte[] bArrG = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE2 = SafeParcelReader.E(parcel, iC);
            } else if (iV == 2) {
                pendingIntent = (PendingIntent) SafeParcelReader.o(parcel, iC, PendingIntent.CREATOR);
            } else if (iV == 3) {
                iE3 = SafeParcelReader.E(parcel, iC);
            } else if (iV == 4) {
                bundleF = SafeParcelReader.f(parcel, iC);
            } else if (iV == 5) {
                bArrG = SafeParcelReader.g(parcel, iC);
            } else if (iV != 1000) {
                SafeParcelReader.K(parcel, iC);
            } else {
                iE = SafeParcelReader.E(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new ProxyResponse(iE, iE2, pendingIntent, iE3, bundleF, bArrG);
    }

    @Override
    public final Object[] newArray(int i) {
        return new ProxyResponse[i];
    }
}
