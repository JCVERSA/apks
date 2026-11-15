package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zax;

public final class w2e implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        Scope[] scopeArr = null;
        int iE = 0;
        int iE2 = 0;
        int iE3 = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 2) {
                iE2 = SafeParcelReader.E(parcel, iC);
            } else if (iV == 3) {
                iE3 = SafeParcelReader.E(parcel, iC);
            } else if (iV != 4) {
                SafeParcelReader.K(parcel, iC);
            } else {
                scopeArr = (Scope[]) SafeParcelReader.s(parcel, iC, Scope.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zax(iE, iE2, iE3, scopeArr);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zax[i];
    }
}
