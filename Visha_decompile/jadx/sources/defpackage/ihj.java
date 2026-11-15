package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.zzp;

public final class ihj implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        boolean zW = false;
        boolean zW2 = false;
        boolean zW3 = false;
        boolean zW4 = false;
        boolean zW5 = false;
        String strP = null;
        IBinder iBinderD = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 2:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 3:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 4:
                    iBinderD = SafeParcelReader.D(parcel, iC);
                    break;
                case 5:
                    zW3 = SafeParcelReader.w(parcel, iC);
                    break;
                case 6:
                    zW4 = SafeParcelReader.w(parcel, iC);
                    break;
                case 7:
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
                case 8:
                    zW5 = SafeParcelReader.w(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzp(strP, zW, zW2, iBinderD, zW3, zW4, zW5);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzp[i];
    }
}
