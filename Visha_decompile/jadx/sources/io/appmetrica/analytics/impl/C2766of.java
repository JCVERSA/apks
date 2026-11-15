package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;

public final class C2766of implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        Bundle bundle = parcel.readBundle(I6.class.getClassLoader());
        return new C2791pf((ContentValues) bundle.getParcelable("CFG_KEY_PROCESS_ENVIRONMENT"), (ResultReceiver) bundle.getParcelable("CFG_KEY_PROCESS_ENVIRONMENT_RECEIVER"));
    }

    @Override
    public final Object[] newArray(int i) {
        return new C2791pf[i];
    }
}
