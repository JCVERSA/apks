package defpackage;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.zzbuw;

public final class nbf implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 2) {
                SafeParcelReader.K(parcel, iC);
            } else {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.o(parcel, iC, ParcelFileDescriptor.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzbuw(parcelFileDescriptor);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzbuw[i];
    }
}
