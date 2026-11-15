package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.TokenData;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class daj implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        int iE = 0;
        boolean zW = false;
        boolean zW2 = false;
        String strP = null;
        Long lH = null;
        ArrayList arrayListR = null;
        String strP2 = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    lH = SafeParcelReader.H(parcel, iC);
                    break;
                case 4:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 5:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 6:
                    arrayListR = SafeParcelReader.r(parcel, iC);
                    break;
                case 7:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new TokenData(iE, strP, lH, zW, zW2, arrayListR, strP2);
    }

    @Override
    public final Object[] newArray(int i) {
        return new TokenData[i];
    }
}
