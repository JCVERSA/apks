package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.zzbo;

public final class oze implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        int iE = 1000;
        int iE2 = 1;
        int iE3 = 1;
        long jG = 0;
        zzbo[] zzboVarArr = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE2 = SafeParcelReader.E(parcel, iC);
            } else if (iV == 2) {
                iE3 = SafeParcelReader.E(parcel, iC);
            } else if (iV == 3) {
                jG = SafeParcelReader.G(parcel, iC);
            } else if (iV == 4) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV != 5) {
                SafeParcelReader.K(parcel, iC);
            } else {
                zzboVarArr = (zzbo[]) SafeParcelReader.s(parcel, iC, zzbo.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new LocationAvailability(iE, iE2, iE3, jG, zzboVarArr);
    }

    @Override
    public final Object[] newArray(int i) {
        return new LocationAvailability[i];
    }
}
