package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.ComplianceOptions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class ggf implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        int iE = 0;
        boolean zW = true;
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
                zW = SafeParcelReader.w(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new ComplianceOptions(iE, iE2, iE3, zW);
    }

    @Override
    public final Object[] newArray(int i) {
        return new ComplianceOptions[i];
    }
}
