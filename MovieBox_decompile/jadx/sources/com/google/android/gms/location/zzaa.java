package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.identity.ClientIdentity;

public final class zzaa implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        ClientIdentity clientIdentity = null;
        int i10 = 0;
        boolean z10 = false;
        long j10 = Long.MAX_VALUE;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId == 1) {
                j10 = SafeParcelReader.readLong(parcel, header);
            } else if (fieldId == 2) {
                i10 = SafeParcelReader.readInt(parcel, header);
            } else if (fieldId == 3) {
                z10 = SafeParcelReader.readBoolean(parcel, header);
            } else if (fieldId != 5) {
                SafeParcelReader.skipUnknownField(parcel, header);
            } else {
                clientIdentity = (ClientIdentity) SafeParcelReader.createParcelable(parcel, header, ClientIdentity.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new LastLocationRequest(j10, i10, z10, clientIdentity);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new LastLocationRequest[i10];
    }
}
