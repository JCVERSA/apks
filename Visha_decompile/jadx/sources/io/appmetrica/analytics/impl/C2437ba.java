package io.appmetrica.analytics.impl;

import android.os.Parcel;
import android.os.Parcelable;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;

public final class C2437ba implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        Object value = parcel.readValue(Boolean.TYPE.getClassLoader());
        return new C2462ca(value instanceof Boolean ? (Boolean) value : null, IdentifierStatus.INSTANCE.from(parcel.readString()), parcel.readString());
    }

    @Override
    public final Object[] newArray(int i) {
        return new C2462ca[i];
    }
}
