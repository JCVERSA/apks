package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

final class zzbs extends zzae {
    public static final Parcelable.Creator<zzbs> CREATOR = new zzbr();

    zzbs(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, Double d10, AuthorAttribution authorAttribution, String str6, @Nullable String str7) {
        super(str, str2, str3, str4, str5, d10, authorAttribution, str6, str7);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        if (getRelativePublishTimeDescription() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeString(getRelativePublishTimeDescription());
        }
        if (getText() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeString(getText());
        }
        if (getTextLanguageCode() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeString(getTextLanguageCode());
        }
        if (getOriginalText() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeString(getOriginalText());
        }
        if (getOriginalTextLanguageCode() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeString(getOriginalTextLanguageCode());
        }
        parcel.writeDouble(getRating().doubleValue());
        parcel.writeParcelable(getAuthorAttribution(), i10);
        parcel.writeString(getAttribution());
        if (getPublishTime() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeString(getPublishTime());
        }
    }
}
