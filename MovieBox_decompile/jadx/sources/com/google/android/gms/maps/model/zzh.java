package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class zzh implements Parcelable.Creator<MarkerOptions> {
    @Override
    public final MarkerOptions createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        LatLng latLng = null;
        String strCreateString = null;
        String strCreateString2 = null;
        IBinder iBinder = null;
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        float f15 = 0.5f;
        float f16 = 1.0f;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 2:
                    latLng = (LatLng) SafeParcelReader.createParcelable(parcel, header, LatLng.CREATOR);
                    break;
                case 3:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 4:
                    strCreateString2 = SafeParcelReader.createString(parcel, header);
                    break;
                case 5:
                    iBinder = SafeParcelReader.readIBinder(parcel, header);
                    break;
                case 6:
                    f10 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 7:
                    f11 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 8:
                    z10 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 9:
                    z11 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 10:
                    z12 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 11:
                    f12 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 12:
                    f15 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 13:
                    f13 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 14:
                    f16 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 15:
                    f14 = SafeParcelReader.readFloat(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new MarkerOptions(latLng, strCreateString, strCreateString2, iBinder, f10, f11, z10, z11, z12, f12, f15, f13, f16, f14);
    }

    @Override
    public final MarkerOptions[] newArray(int i10) {
        return new MarkerOptions[i10];
    }
}
