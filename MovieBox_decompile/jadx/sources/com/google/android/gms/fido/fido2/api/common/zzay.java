package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ShowFirstParty;

@ShowFirstParty
public enum zzay implements Parcelable {
    USER_VERIFICATION_REQUIRED("required"),
    USER_VERIFICATION_PREFERRED("preferred"),
    USER_VERIFICATION_DISCOURAGED("discouraged");

    public static final Parcelable.Creator<zzay> CREATOR = new Parcelable.Creator() {
        @Override
        public final Object createFromParcel(Parcel parcel) {
            try {
                return zzay.zza(parcel.readString());
            } catch (zzax e10) {
                throw new RuntimeException(e10);
            }
        }

        @Override
        public final Object[] newArray(int i10) {
            return new zzay[i10];
        }
    };

    @NonNull
    private final String zze;

    zzay(String str) {
        this.zze = str;
    }

    public static zzay zza(String str) throws zzax {
        for (zzay zzayVar : values()) {
            if (str.equals(zzayVar.zze)) {
                return zzayVar;
            }
        }
        throw new zzax(str);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final String toString() {
        return this.zze;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.zze);
    }
}
