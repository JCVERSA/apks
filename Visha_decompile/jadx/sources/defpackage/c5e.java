package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.stats.WakeLockEvent;
import java.util.ArrayList;

public final class c5e implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        int iE = 0;
        int iE2 = 0;
        int iE3 = 0;
        int iE4 = 0;
        boolean zW = false;
        String strP = null;
        ArrayList arrayListR = null;
        String strP2 = null;
        String strP3 = null;
        String strP4 = null;
        String strP5 = null;
        long jG = 0;
        long jG2 = 0;
        long jG3 = 0;
        float fA = 0.0f;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 2:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 3:
                case 7:
                case 9:
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
                case 4:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 5:
                    iE3 = SafeParcelReader.E(parcel, iC);
                    break;
                case 6:
                    arrayListR = SafeParcelReader.r(parcel, iC);
                    break;
                case 8:
                    jG2 = SafeParcelReader.G(parcel, iC);
                    break;
                case 10:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 11:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                case 12:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 13:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 14:
                    iE4 = SafeParcelReader.E(parcel, iC);
                    break;
                case 15:
                    fA = SafeParcelReader.A(parcel, iC);
                    break;
                case 16:
                    jG3 = SafeParcelReader.G(parcel, iC);
                    break;
                case 17:
                    strP5 = SafeParcelReader.p(parcel, iC);
                    break;
                case 18:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new WakeLockEvent(iE, jG, iE2, strP, iE3, arrayListR, strP2, jG2, iE4, strP3, strP4, fA, jG3, strP5, zW);
    }

    @Override
    public final Object[] newArray(int i) {
        return new WakeLockEvent[i];
    }
}
