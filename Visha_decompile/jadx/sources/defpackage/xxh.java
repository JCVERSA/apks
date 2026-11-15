package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.zzfnz;

public final class xxh implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        byte[] bArrG = null;
        int iE = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV != 2) {
                SafeParcelReader.K(parcel, iC);
            } else {
                bArrG = SafeParcelReader.g(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzfnz(iE, bArrG);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzfnz[i];
    }
}
