package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.zzbtq;

public final class raf implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        IBinder iBinderD = null;
        IBinder iBinderD2 = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iBinderD = SafeParcelReader.D(parcel, iC);
            } else if (iV != 2) {
                SafeParcelReader.K(parcel, iC);
            } else {
                iBinderD2 = SafeParcelReader.D(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzbtq(iBinderD, iBinderD2);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzbtq[i];
    }
}
