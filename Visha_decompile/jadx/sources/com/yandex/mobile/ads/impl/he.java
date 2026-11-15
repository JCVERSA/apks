package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;

public final class he extends ti0 {
    public static final Parcelable.Creator<he> CREATOR = new a();
    public final String c;

    @Nullable
    public final String d;
    public final int e;
    public final byte[] f;

    public class a implements Parcelable.Creator<he> {
        @Override
        public final he createFromParcel(Parcel parcel) {
            return new he(parcel);
        }

        @Override
        public final he[] newArray(int i) {
            return new he[i];
        }
    }

    public he(Parcel parcel) {
        super("APIC");
        this.c = (String) f92.a(parcel.readString());
        this.d = parcel.readString();
        this.e = parcel.readInt();
        this.f = (byte[]) f92.a(parcel.createByteArray());
    }

    @Override
    public final void a(mw0.a aVar) {
        aVar.a(this.e, this.f);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || he.class != obj.getClass()) {
            return false;
        }
        he heVar = (he) obj;
        return this.e == heVar.e && f92.a(this.c, heVar.c) && f92.a(this.d, heVar.d) && Arrays.equals(this.f, heVar.f);
    }

    public final int hashCode() {
        int i = (this.e + 527) * 31;
        String str = this.c;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.d;
        return Arrays.hashCode(this.f) + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override
    public final String toString() {
        return this.b + ": mimeType=" + this.c + ", description=" + this.d;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.e);
        parcel.writeByteArray(this.f);
    }

    public he(String str, @Nullable String str2, int i, byte[] bArr) {
        super("APIC");
        this.c = str;
        this.d = str2;
        this.e = i;
        this.f = bArr;
    }
}
