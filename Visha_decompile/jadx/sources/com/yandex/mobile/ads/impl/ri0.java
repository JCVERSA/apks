package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;

public final class ri0 implements k01.b {
    public static final Parcelable.Creator<ri0> CREATOR = new a();
    public final byte[] b;

    @Nullable
    public final String c;

    @Nullable
    public final String d;

    public class a implements Parcelable.Creator<ri0> {
        @Override
        public final ri0 createFromParcel(Parcel parcel) {
            return new ri0(parcel);
        }

        @Override
        public final ri0[] newArray(int i) {
            return new ri0[i];
        }
    }

    public ri0(Parcel parcel) {
        this.b = (byte[]) hg.a(parcel.createByteArray());
        this.c = parcel.readString();
        this.d = parcel.readString();
    }

    @Override
    public final void a(mw0.a aVar) {
        String str = this.c;
        if (str != null) {
            aVar.i(str);
        }
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ri0.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.b, ((ri0) obj).b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b);
    }

    public final String toString() {
        return "ICY: title=\"" + this.c + "\", url=\"" + this.d + "\", rawMetadata.length=\"" + this.b.length + "\"";
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeByteArray(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
    }

    public ri0(byte[] bArr, @Nullable String str, @Nullable String str2) {
        this.b = bArr;
        this.c = str;
        this.d = str2;
    }
}
