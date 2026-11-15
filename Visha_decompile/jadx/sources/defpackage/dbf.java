package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.SleepClassifyEvent;

public final class dbf implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        int iE = 0;
        int iE2 = 0;
        int iE3 = 0;
        int iE4 = 0;
        int iE5 = 0;
        int iE6 = 0;
        int iE7 = 0;
        boolean zW = false;
        int iE8 = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 2:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                case 3:
                    iE3 = SafeParcelReader.E(parcel, iC);
                    break;
                case 4:
                    iE4 = SafeParcelReader.E(parcel, iC);
                    break;
                case 5:
                    iE5 = SafeParcelReader.E(parcel, iC);
                    break;
                case 6:
                    iE6 = SafeParcelReader.E(parcel, iC);
                    break;
                case 7:
                    iE7 = SafeParcelReader.E(parcel, iC);
                    break;
                case 8:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 9:
                    iE8 = SafeParcelReader.E(parcel, iC);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new SleepClassifyEvent(iE, iE2, iE3, iE4, iE5, iE6, iE7, zW, iE8);
    }

    @Override
    public final Object[] newArray(int i) {
        return new SleepClassifyEvent[i];
    }
}
