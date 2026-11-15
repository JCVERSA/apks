package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class e2e implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        int iE = -1;
        int iE2 = 0;
        int iE3 = 0;
        int iE4 = 0;
        int iE5 = 0;
        String strP = null;
        String strP2 = null;
        long jG = 0;
        long jG2 = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                case 2:
                    iE3 = SafeParcelReader.E(parcel, iC);
                    break;
                case 3:
                    iE4 = SafeParcelReader.E(parcel, iC);
                    break;
                case 4:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 5:
                    jG2 = SafeParcelReader.G(parcel, iC);
                    break;
                case 6:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 7:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 8:
                    iE5 = SafeParcelReader.E(parcel, iC);
                    break;
                case 9:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new MethodInvocation(iE2, iE3, iE4, jG, jG2, strP, strP2, iE5, iE);
    }

    @Override
    public final Object[] newArray(int i) {
        return new MethodInvocation[i];
    }
}
