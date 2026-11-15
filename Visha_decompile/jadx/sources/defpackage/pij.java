package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.measurement.internal.zzq;
import java.util.ArrayList;

public final class pij implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        String strP = "";
        String strP2 = strP;
        String strP3 = null;
        String strP4 = null;
        String strP5 = null;
        String strP6 = null;
        String strP7 = null;
        String strP8 = null;
        String strP9 = null;
        Boolean boolX = null;
        ArrayList arrayListR = null;
        String strP10 = null;
        String strP11 = null;
        long jG = 0;
        long jG2 = 0;
        long jG3 = 0;
        long jG4 = 0;
        long jG5 = 0;
        boolean zW = true;
        boolean zW2 = true;
        boolean zW3 = false;
        int iE = 0;
        boolean zW4 = false;
        long jG6 = -2147483648L;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 2:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 4:
                    strP5 = SafeParcelReader.p(parcel, iC);
                    break;
                case 5:
                    strP6 = SafeParcelReader.p(parcel, iC);
                    break;
                case 6:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 7:
                    jG2 = SafeParcelReader.G(parcel, iC);
                    break;
                case 8:
                    strP7 = SafeParcelReader.p(parcel, iC);
                    break;
                case 9:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 10:
                    zW3 = SafeParcelReader.w(parcel, iC);
                    break;
                case 11:
                    jG6 = SafeParcelReader.G(parcel, iC);
                    break;
                case 12:
                    strP8 = SafeParcelReader.p(parcel, iC);
                    break;
                case 13:
                    jG3 = SafeParcelReader.G(parcel, iC);
                    break;
                case 14:
                    jG4 = SafeParcelReader.G(parcel, iC);
                    break;
                case 15:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 16:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 17:
                case 20:
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
                case 18:
                    zW4 = SafeParcelReader.w(parcel, iC);
                    break;
                case 19:
                    strP9 = SafeParcelReader.p(parcel, iC);
                    break;
                case 21:
                    boolX = SafeParcelReader.x(parcel, iC);
                    break;
                case 22:
                    jG5 = SafeParcelReader.G(parcel, iC);
                    break;
                case 23:
                    arrayListR = SafeParcelReader.r(parcel, iC);
                    break;
                case 24:
                    strP10 = SafeParcelReader.p(parcel, iC);
                    break;
                case 25:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 26:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 27:
                    strP11 = SafeParcelReader.p(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzq(strP3, strP4, strP5, strP6, jG, jG2, strP7, zW, zW3, jG6, strP8, jG3, jG4, iE, zW2, zW4, strP9, boolX, jG5, arrayListR, strP10, strP, strP2, strP11);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzq[i];
    }
}
