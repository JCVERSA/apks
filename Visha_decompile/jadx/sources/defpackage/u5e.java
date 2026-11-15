package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class u5e implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        int iE = 0;
        int iE2 = 0;
        String strP = null;
        byte[] bArrG = null;
        Bundle bundleF = null;
        long jG = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 2) {
                iE2 = SafeParcelReader.E(parcel, iC);
            } else if (iV == 3) {
                jG = SafeParcelReader.G(parcel, iC);
            } else if (iV == 4) {
                bArrG = SafeParcelReader.g(parcel, iC);
            } else if (iV == 5) {
                bundleF = SafeParcelReader.f(parcel, iC);
            } else if (iV != 1000) {
                SafeParcelReader.K(parcel, iC);
            } else {
                iE = SafeParcelReader.E(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new ProxyRequest(iE, strP, iE2, jG, bArrG, bundleF);
    }

    @Override
    public final Object[] newArray(int i) {
        return new ProxyRequest[i];
    }
}
