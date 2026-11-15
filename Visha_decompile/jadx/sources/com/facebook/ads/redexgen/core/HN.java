package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.emsg.EventMessage;

public class HN implements Parcelable.Creator<EventMessage> {
    @Override
    public final EventMessage createFromParcel(Parcel parcel) {
        return new EventMessage(parcel);
    }

    @Override
    public final EventMessage[] newArray(int i) {
        return new EventMessage[i];
    }
}
