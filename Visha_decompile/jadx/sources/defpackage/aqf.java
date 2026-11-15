package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.measurement.zzcl;

public final class aqf implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        long jG = 0;
        long jG2 = 0;
        boolean zW = false;
        String strP = null;
        String strP2 = null;
        String strP3 = null;
        Bundle bundleF = null;
        String strP4 = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 2:
                    jG2 = SafeParcelReader.G(parcel, iC);
                    break;
                case 3:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 4:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 5:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 6:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 7:
                    bundleF = SafeParcelReader.f(parcel, iC);
                    break;
                case 8:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzcl(jG, jG2, zW, strP, strP2, strP3, bundleF, strP4);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzcl[i];
    }
}
