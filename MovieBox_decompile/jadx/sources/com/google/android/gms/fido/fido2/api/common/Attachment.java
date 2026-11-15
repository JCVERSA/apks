package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.hisavana.common.tracking.TrackingKey;

public enum Attachment implements Parcelable {
    PLATFORM(TrackingKey.PLATFORM),
    CROSS_PLATFORM("cross-platform");


    @NonNull
    public static final Parcelable.Creator<Attachment> CREATOR = new Parcelable.Creator() {
        @Override
        public final Object createFromParcel(Parcel parcel) {
            try {
                return Attachment.fromString(parcel.readString());
            } catch (Attachment.UnsupportedAttachmentException e10) {
                throw new RuntimeException(e10);
            }
        }

        @Override
        public final Object[] newArray(int i10) {
            return new Attachment[i10];
        }
    };

    @NonNull
    private final String zzb;

    public static class UnsupportedAttachmentException extends Exception {
        public UnsupportedAttachmentException(@NonNull String str) {
            super(String.format("Attachment %s not supported", str));
        }
    }

    Attachment(String str) {
        this.zzb = str;
    }

    @NonNull
    public static Attachment fromString(@NonNull String str) throws UnsupportedAttachmentException {
        for (Attachment attachment : values()) {
            if (str.equals(attachment.zzb)) {
                return attachment;
            }
        }
        throw new UnsupportedAttachmentException(str);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    @NonNull
    public String toString() {
        return this.zzb;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeString(this.zzb);
    }
}
