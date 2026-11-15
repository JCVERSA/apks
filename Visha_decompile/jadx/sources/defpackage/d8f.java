package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.zzbo;

public final class d8f implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        int iE = 1;
        int iE2 = 1;
        long jG = -1;
        long jG2 = -1;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 2) {
                iE2 = SafeParcelReader.E(parcel, iC);
            } else if (iV == 3) {
                jG = SafeParcelReader.G(parcel, iC);
            } else if (iV != 4) {
                SafeParcelReader.K(parcel, iC);
            } else {
                jG2 = SafeParcelReader.G(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzbo(iE, iE2, jG, jG2);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzbo[i];
    }
}
