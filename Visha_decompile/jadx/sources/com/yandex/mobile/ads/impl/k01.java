package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.List;

public final class k01 implements Parcelable {
    public static final Parcelable.Creator<k01> CREATOR = new a();
    private final b[] b;

    public class a implements Parcelable.Creator<k01> {
        @Override
        public final k01 createFromParcel(Parcel parcel) {
            return new k01(parcel);
        }

        @Override
        public final k01[] newArray(int i) {
            return new k01[i];
        }
    }

    public interface b extends Parcelable {
        @Nullable
        default jc0 a() {
            return null;
        }

        @Nullable
        default byte[] b() {
            return null;
        }

        default void a(mw0.a aVar) {
        }
    }

    public k01(Parcel parcel) {
        this.b = new b[parcel.readInt()];
        int i = 0;
        while (true) {
            b[] bVarArr = this.b;
            if (i >= bVarArr.length) {
                return;
            }
            bVarArr[i] = (b) parcel.readParcelable(b.class.getClassLoader());
            i++;
        }
    }

    public final k01 a(b... bVarArr) {
        return bVarArr.length == 0 ? this : new k01((b[]) f92.a((Object[]) this.b, (Object[]) bVarArr));
    }

    public final int c() {
        return this.b.length;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k01.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.b, ((k01) obj).b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b);
    }

    public final String toString() {
        return "entries=" + Arrays.toString(this.b);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b.length);
        for (b bVar : this.b) {
            parcel.writeParcelable(bVar, 0);
        }
    }

    public final k01 a(@Nullable k01 k01Var) {
        return k01Var == null ? this : a(k01Var.b);
    }

    public final b a(int i) {
        return this.b[i];
    }

    public k01(List<? extends b> list) {
        this.b = (b[]) list.toArray(new b[0]);
    }

    public k01(b... bVarArr) {
        this.b = bVarArr;
    }
}
