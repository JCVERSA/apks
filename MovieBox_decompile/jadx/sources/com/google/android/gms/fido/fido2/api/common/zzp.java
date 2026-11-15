package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;

final class zzp implements Parcelable.Creator {
    zzp() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        try {
            return COSEAlgorithmIdentifier.fromCoseValue(parcel.readInt());
        } catch (COSEAlgorithmIdentifier.UnsupportedAlgorithmIdentifierException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override
    public final Object[] newArray(int i10) {
        return new COSEAlgorithmIdentifier[i10];
    }
}
