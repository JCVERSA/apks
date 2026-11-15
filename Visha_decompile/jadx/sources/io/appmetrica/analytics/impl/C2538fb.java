package io.appmetrica.analytics.impl;

import android.os.Parcel;
import android.os.Parcelable;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.internal.IdentifiersResult;

public final class C2538fb implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new IdentifiersResult(parcel.readString(), IdentifierStatus.from(parcel.readString()), parcel.readString());
    }

    @Override
    public final Object[] newArray(int i) {
        return new IdentifiersResult[i];
    }
}
