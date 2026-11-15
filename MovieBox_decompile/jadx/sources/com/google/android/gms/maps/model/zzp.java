package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class zzp implements Parcelable.Creator<StreetViewPanoramaOrientation> {
    @Override
    public final StreetViewPanoramaOrientation createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        float f10 = 0.0f;
        float f11 = 0.0f;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId == 2) {
                f10 = SafeParcelReader.readFloat(parcel, header);
            } else if (fieldId != 3) {
                SafeParcelReader.skipUnknownField(parcel, header);
            } else {
                f11 = SafeParcelReader.readFloat(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new StreetViewPanoramaOrientation(f10, f11);
    }

    @Override
    public final StreetViewPanoramaOrientation[] newArray(int i10) {
        return new StreetViewPanoramaOrientation[i10];
    }
}
