package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.zzbkw;

public final class v4f implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        long jG = 0;
        boolean zW = false;
        int iE = 0;
        boolean zW2 = false;
        String strP = null;
        byte[] bArrG = null;
        String[] strArrQ = null;
        String[] strArrQ2 = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 4:
                    bArrG = SafeParcelReader.g(parcel, iC);
                    break;
                case 5:
                    strArrQ = SafeParcelReader.q(parcel, iC);
                    break;
                case 6:
                    strArrQ2 = SafeParcelReader.q(parcel, iC);
                    break;
                case 7:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 8:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzbkw(zW, strP, iE, bArrG, strArrQ, strArrQ2, zW2, jG);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzbkw[i];
    }
}
