package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.ComplianceOptions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class cwe implements Parcelable.Creator {
    public static final ApiMetadata a(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        boolean zW = false;
        ComplianceOptions complianceOptions = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                complianceOptions = (ComplianceOptions) SafeParcelReader.o(parcel, iC, ComplianceOptions.CREATOR);
            } else if (iV != 2) {
                SafeParcelReader.K(parcel, iC);
            } else {
                zW = SafeParcelReader.w(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new ApiMetadata(complianceOptions, zW);
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    @Override
    public final Object[] newArray(int i) {
        return new ApiMetadata[i];
    }
}
