package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.converter.StringToIntConverter;
import com.google.android.gms.common.server.converter.zaa;

public final class vzd implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        StringToIntConverter stringToIntConverter = null;
        int iE = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV != 2) {
                SafeParcelReader.K(parcel, iC);
            } else {
                stringToIntConverter = (StringToIntConverter) SafeParcelReader.o(parcel, iC, StringToIntConverter.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zaa(iE, stringToIntConverter);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zaa[i];
    }
}
