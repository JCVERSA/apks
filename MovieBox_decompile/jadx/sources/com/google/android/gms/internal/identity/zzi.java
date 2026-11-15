package com.google.android.gms.internal.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.DeviceOrientationRequest;
import java.util.List;

public final class zzi implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        DeviceOrientationRequest deviceOrientationRequest = zzh.zzb;
        List listCreateTypedList = zzh.zza;
        String strCreateString = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId == 1) {
                deviceOrientationRequest = (DeviceOrientationRequest) SafeParcelReader.createParcelable(parcel, header, DeviceOrientationRequest.CREATOR);
            } else if (fieldId == 2) {
                listCreateTypedList = SafeParcelReader.createTypedList(parcel, header, ClientIdentity.CREATOR);
            } else if (fieldId != 3) {
                SafeParcelReader.skipUnknownField(parcel, header);
            } else {
                strCreateString = SafeParcelReader.createString(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzh(deviceOrientationRequest, listCreateTypedList, strCreateString);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzh[i10];
    }
}
