package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.zzbxf;
import java.util.ArrayList;

public final class bdf implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        String strP = null;
        String strP2 = null;
        ArrayList arrayListR = null;
        ArrayList arrayListR2 = null;
        boolean zW = false;
        boolean zW2 = false;
        boolean zW3 = false;
        boolean zW4 = false;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    strP2 = SafeParcelReader.p(parcel, iC);
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
                    zW3 = SafeParcelReader.w(parcel, iC);
                    break;
                case 8:
                    zW4 = SafeParcelReader.w(parcel, iC);
                    break;
                case 9:
                    arrayListR2 = SafeParcelReader.r(parcel, iC);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzbxf(strP, strP2, zW, zW2, arrayListR, zW3, zW4, arrayListR2);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzbxf[i];
    }
}
