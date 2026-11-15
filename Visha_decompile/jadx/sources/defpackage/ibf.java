package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.zzbug;
import java.util.ArrayList;

public final class ibf implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        ArrayList arrayListR = null;
        boolean zW = false;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                zW = SafeParcelReader.w(parcel, iC);
            } else if (iV != 3) {
                SafeParcelReader.K(parcel, iC);
            } else {
                arrayListR = SafeParcelReader.r(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzbug(zW, arrayListR);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzbug[i];
    }
}
