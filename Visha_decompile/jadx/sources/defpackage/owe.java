package defpackage;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.zzbap;

public final class owe implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        boolean zW = false;
        boolean zW2 = false;
        boolean zW3 = false;
        long jG = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.o(parcel, iC, ParcelFileDescriptor.CREATOR);
            } else if (iV == 3) {
                zW = SafeParcelReader.w(parcel, iC);
            } else if (iV == 4) {
                zW2 = SafeParcelReader.w(parcel, iC);
            } else if (iV == 5) {
                jG = SafeParcelReader.G(parcel, iC);
            } else if (iV != 6) {
                SafeParcelReader.K(parcel, iC);
            } else {
                zW3 = SafeParcelReader.w(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzbap(parcelFileDescriptor, zW, zW2, jG, zW3);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzbap[i];
    }
}
