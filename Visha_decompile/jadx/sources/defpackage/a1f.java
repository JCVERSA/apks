package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.client.zzfw;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.zzbfi;

public final class a1f implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        int iE = 0;
        boolean zW = false;
        int iE2 = 0;
        boolean zW2 = false;
        int iE3 = 0;
        boolean zW3 = false;
        int iE4 = 0;
        int iE5 = 0;
        boolean zW4 = false;
        int iE6 = 0;
        zzfw zzfwVar = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 2:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 3:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                case 4:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 5:
                    iE3 = SafeParcelReader.E(parcel, iC);
                    break;
                case 6:
                    zzfwVar = (zzfw) SafeParcelReader.o(parcel, iC, zzfw.CREATOR);
                    break;
                case 7:
                    zW3 = SafeParcelReader.w(parcel, iC);
                    break;
                case 8:
                    iE4 = SafeParcelReader.E(parcel, iC);
                    break;
                case 9:
                    iE5 = SafeParcelReader.E(parcel, iC);
                    break;
                case 10:
                    zW4 = SafeParcelReader.w(parcel, iC);
                    break;
                case 11:
                    iE6 = SafeParcelReader.E(parcel, iC);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzbfi(iE, zW, iE2, zW2, iE3, zzfwVar, zW3, iE4, iE5, zW4, iE6);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzbfi[i];
    }
}
