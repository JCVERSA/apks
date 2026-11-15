package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.zzbku;

public final class u4f implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        String strP = null;
        String[] strArrQ = null;
        String[] strArrQ2 = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 2) {
                strArrQ = SafeParcelReader.q(parcel, iC);
            } else if (iV != 3) {
                SafeParcelReader.K(parcel, iC);
            } else {
                strArrQ2 = SafeParcelReader.q(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzbku(strP, strArrQ, strArrQ2);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzbku[i];
    }
}
