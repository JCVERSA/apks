package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;

public final class il extends ti0 {
    public static final Parcelable.Creator<il> CREATOR = new a();
    public final byte[] c;

    public class a implements Parcelable.Creator<il> {
        @Override
        public final il createFromParcel(Parcel parcel) {
            return new il(parcel);
        }

        @Override
        public final il[] newArray(int i) {
            return new il[i];
        }
    }

    public il(Parcel parcel) {
        super((String) f92.a(parcel.readString()));
        this.c = (byte[]) f92.a(parcel.createByteArray());
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || il.class != obj.getClass()) {
            return false;
        }
        il ilVar = (il) obj;
        return this.b.equals(ilVar.b) && Arrays.equals(this.c, ilVar.c);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.c) + v3.a(this.b, 527, 31);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeByteArray(this.c);
    }

    public il(String str, byte[] bArr) {
        super(str);
        this.c = bArr;
    }
}
