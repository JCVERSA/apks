package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;

public final class zzaa implements Parcelable.Creator<GoogleMapOptions> {
    @Override
    public final GoogleMapOptions createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        byte b10 = -1;
        byte b11 = -1;
        byte b12 = -1;
        byte b13 = -1;
        byte b14 = -1;
        byte b15 = -1;
        byte b16 = -1;
        byte b17 = -1;
        byte b18 = -1;
        byte b19 = -1;
        byte b20 = -1;
        byte b21 = -1;
        int i10 = 0;
        CameraPosition cameraPosition = null;
        Float floatObject = null;
        Float floatObject2 = null;
        LatLngBounds latLngBounds = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 2:
                    b10 = SafeParcelReader.readByte(parcel, header);
                    break;
                case 3:
                    b11 = SafeParcelReader.readByte(parcel, header);
                    break;
                case 4:
                    i10 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 5:
                    cameraPosition = (CameraPosition) SafeParcelReader.createParcelable(parcel, header, CameraPosition.CREATOR);
                    break;
                case 6:
                    b12 = SafeParcelReader.readByte(parcel, header);
                    break;
                case 7:
                    b13 = SafeParcelReader.readByte(parcel, header);
                    break;
                case 8:
                    b14 = SafeParcelReader.readByte(parcel, header);
                    break;
                case 9:
                    b15 = SafeParcelReader.readByte(parcel, header);
                    break;
                case 10:
                    b16 = SafeParcelReader.readByte(parcel, header);
                    break;
                case 11:
                    b17 = SafeParcelReader.readByte(parcel, header);
                    break;
                case 12:
                    b18 = SafeParcelReader.readByte(parcel, header);
                    break;
                case 13:
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
                case 14:
                    b19 = SafeParcelReader.readByte(parcel, header);
                    break;
                case 15:
                    b20 = SafeParcelReader.readByte(parcel, header);
                    break;
                case 16:
                    floatObject = SafeParcelReader.readFloatObject(parcel, header);
                    break;
                case 17:
                    floatObject2 = SafeParcelReader.readFloatObject(parcel, header);
                    break;
                case 18:
                    latLngBounds = (LatLngBounds) SafeParcelReader.createParcelable(parcel, header, LatLngBounds.CREATOR);
                    break;
                case 19:
                    b21 = SafeParcelReader.readByte(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new GoogleMapOptions(b10, b11, i10, cameraPosition, b12, b13, b14, b15, b16, b17, b18, b19, b20, floatObject, floatObject2, latLngBounds, b21);
    }

    @Override
    public final GoogleMapOptions[] newArray(int i10) {
        return new GoogleMapOptions[i10];
    }
}
