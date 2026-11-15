package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zzj;

public final class g6j implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        Bundle bundleF = null;
        ConnectionTelemetryConfiguration connectionTelemetryConfiguration = null;
        int iE = 0;
        Feature[] featureArr = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                bundleF = SafeParcelReader.f(parcel, iC);
            } else if (iV == 2) {
                featureArr = (Feature[]) SafeParcelReader.s(parcel, iC, Feature.CREATOR);
            } else if (iV == 3) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV != 4) {
                SafeParcelReader.K(parcel, iC);
            } else {
                connectionTelemetryConfiguration = (ConnectionTelemetryConfiguration) SafeParcelReader.o(parcel, iC, ConnectionTelemetryConfiguration.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzj(bundleF, featureArr, iE, connectionTelemetryConfiguration);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzj[i];
    }
}
