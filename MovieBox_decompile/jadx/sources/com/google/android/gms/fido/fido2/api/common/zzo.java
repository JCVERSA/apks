package com.google.android.gms.fido.fido2.api.common;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class zzo implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions = null;
        Uri uri = null;
        byte[] bArrCreateByteArray = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId == 2) {
                publicKeyCredentialRequestOptions = (PublicKeyCredentialRequestOptions) SafeParcelReader.createParcelable(parcel, header, PublicKeyCredentialRequestOptions.CREATOR);
            } else if (fieldId == 3) {
                uri = (Uri) SafeParcelReader.createParcelable(parcel, header, Uri.CREATOR);
            } else if (fieldId != 4) {
                SafeParcelReader.skipUnknownField(parcel, header);
            } else {
                bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new BrowserPublicKeyCredentialRequestOptions(publicKeyCredentialRequestOptions, uri, bArrCreateByteArray);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new BrowserPublicKeyCredentialRequestOptions[i10];
    }
}
