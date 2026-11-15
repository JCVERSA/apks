package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.appset.zza;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class xve implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        String strP = null;
        String strP2 = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV != 2) {
                SafeParcelReader.K(parcel, iC);
            } else {
                strP2 = SafeParcelReader.p(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zza(strP, strP2);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zza[i];
    }
}
