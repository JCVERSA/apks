package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

@Deprecated
public enum ErrorCode implements Parcelable {
    OK(0),
    OTHER_ERROR(1),
    BAD_REQUEST(2),
    CONFIGURATION_UNSUPPORTED(3),
    DEVICE_INELIGIBLE(4),
    TIMEOUT(5);

    private final int zzc;
    private static final String zza = ErrorCode.class.getSimpleName();

    @NonNull
    public static final Parcelable.Creator<ErrorCode> CREATOR = new Parcelable.Creator() {
        @Override
        public final Object createFromParcel(Parcel parcel) {
            return ErrorCode.toErrorCode(parcel.readInt());
        }

        @Override
        public final Object[] newArray(int i10) {
            return new ErrorCode[i10];
        }
    };

    ErrorCode(int i10) {
        this.zzc = i10;
    }

    @NonNull
    public static ErrorCode toErrorCode(int i10) {
        for (ErrorCode errorCode : values()) {
            if (i10 == errorCode.zzc) {
                return errorCode;
            }
        }
        return OTHER_ERROR;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public int getCode() {
        return this.zzc;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeInt(this.zzc);
    }
}
