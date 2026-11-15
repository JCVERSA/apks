package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.zzs;

public final class wkj implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        boolean zW = true;
        long jG = 50;
        float fA = 0.0f;
        long jG2 = Long.MAX_VALUE;
        int iE = Integer.MAX_VALUE;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                zW = SafeParcelReader.w(parcel, iC);
            } else if (iV == 2) {
                jG = SafeParcelReader.G(parcel, iC);
            } else if (iV == 3) {
                fA = SafeParcelReader.A(parcel, iC);
            } else if (iV == 4) {
                jG2 = SafeParcelReader.G(parcel, iC);
            } else if (iV != 5) {
                SafeParcelReader.K(parcel, iC);
            } else {
                iE = SafeParcelReader.E(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzs(zW, jG, fA, jG2, iE);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzs[i];
    }
}
