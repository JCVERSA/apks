package org.proninyaroslav.libretorrent.core.model.data;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.UUID;

public abstract class AbstractInfoParcel implements Parcelable, Comparable {
    public String parcelId;

    public AbstractInfoParcel() {
        this.parcelId = UUID.randomUUID().toString();
    }

    public abstract boolean equals(Object obj);

    public abstract int hashCode();

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.parcelId);
    }

    public AbstractInfoParcel(String str) {
        this.parcelId = str;
    }

    public AbstractInfoParcel(Parcel parcel) {
        this.parcelId = parcel.readString();
    }
}
