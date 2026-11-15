package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.location.zzaa;

public final class a7e implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        Status status = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 1) {
                SafeParcelReader.K(parcel, iC);
            } else {
                status = (Status) SafeParcelReader.o(parcel, iC, Status.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzaa(status);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzaa[i];
    }
}
