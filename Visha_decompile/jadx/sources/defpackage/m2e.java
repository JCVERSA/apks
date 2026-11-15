package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.SafeParcelResponse;
import com.google.android.gms.common.server.response.zan;

public final class m2e implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        Parcel parcelM = null;
        int iE = 0;
        zan zanVar = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 2) {
                parcelM = SafeParcelReader.m(parcel, iC);
            } else if (iV != 3) {
                SafeParcelReader.K(parcel, iC);
            } else {
                zanVar = (zan) SafeParcelReader.o(parcel, iC, zan.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new SafeParcelResponse(iE, parcelM, zanVar);
    }

    @Override
    public final Object[] newArray(int i) {
        return new SafeParcelResponse[i];
    }
}
