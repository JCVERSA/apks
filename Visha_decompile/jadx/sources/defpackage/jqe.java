package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.location.zzbe;
import com.google.android.gms.location.GeofencingRequest;
import java.util.ArrayList;

public final class jqe implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        String strP = "";
        ArrayList arrayListT = null;
        int iE = 0;
        String strP2 = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                arrayListT = SafeParcelReader.t(parcel, iC, zzbe.CREATOR);
            } else if (iV == 2) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 3) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV != 4) {
                SafeParcelReader.K(parcel, iC);
            } else {
                strP2 = SafeParcelReader.p(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new GeofencingRequest(arrayListT, iE, strP, strP2);
    }

    @Override
    public final Object[] newArray(int i) {
        return new GeofencingRequest[i];
    }
}
