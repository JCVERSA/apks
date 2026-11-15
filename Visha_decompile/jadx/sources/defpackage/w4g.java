package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.appset.zzc;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class w4g implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        String strP = null;
        int iE = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV != 2) {
                SafeParcelReader.K(parcel, iC);
            } else {
                iE = SafeParcelReader.E(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzc(strP, iE);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzc[i];
    }
}
