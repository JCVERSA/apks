package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.UUID;

public final class f40 implements Comparator<b>, Parcelable {
    public static final Parcelable.Creator<f40> CREATOR = new a();
    private final b[] b;
    private int c;

    @Nullable
    public final String d;
    public final int e;

    public class a implements Parcelable.Creator<f40> {
        @Override
        public final f40 createFromParcel(Parcel parcel) {
            return new f40(parcel);
        }

        @Override
        public final f40[] newArray(int i) {
            return new f40[i];
        }
    }

    public f40(Parcel parcel) {
        this.d = parcel.readString();
        b[] bVarArr = (b[]) f92.a((b[]) parcel.createTypedArray(b.CREATOR));
        this.b = bVarArr;
        this.e = bVarArr.length;
    }

    @CheckResult
    public final f40 a(@Nullable String str) {
        return f92.a(this.d, str) ? this : new f40(str, false, this.b);
    }

    @Override
    public final int compare(b bVar, b bVar2) {
        b bVar3 = bVar;
        b bVar4 = bVar2;
        UUID uuid = rm.a;
        if (uuid.equals(bVar3.c)) {
            return uuid.equals(bVar4.c) ? 0 : 1;
        }
        return bVar3.c.compareTo(bVar4.c);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f40.class != obj.getClass()) {
            return false;
        }
        f40 f40Var = (f40) obj;
        return f92.a(this.d, f40Var.d) && Arrays.equals(this.b, f40Var.b);
    }

    public final int hashCode() {
        if (this.c == 0) {
            String str = this.d;
            this.c = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.b);
        }
        return this.c;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.d);
        parcel.writeTypedArray(this.b, 0);
    }

    public final b a(int i) {
        return this.b[i];
    }

    public static final class b implements Parcelable {
        public static final Parcelable.Creator<b> CREATOR = new a();
        private int b;
        public final UUID c;

        @Nullable
        public final String d;
        public final String e;

        @Nullable
        public final byte[] f;

        public class a implements Parcelable.Creator<b> {
            @Override
            public final b createFromParcel(Parcel parcel) {
                return new b(parcel);
            }

            @Override
            public final b[] newArray(int i) {
                return new b[i];
            }
        }

        public b(Parcel parcel) {
            this.c = new UUID(parcel.readLong(), parcel.readLong());
            this.d = parcel.readString();
            this.e = (String) f92.a(parcel.readString());
            this.f = parcel.createByteArray();
        }

        @Override
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            b bVar = (b) obj;
            return f92.a(this.d, bVar.d) && f92.a(this.e, bVar.e) && f92.a(this.c, bVar.c) && Arrays.equals(this.f, bVar.f);
        }

        public final int hashCode() {
            if (this.b == 0) {
                int iHashCode = this.c.hashCode() * 31;
                String str = this.d;
                this.b = Arrays.hashCode(this.f) + v3.a(this.e, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31);
            }
            return this.b;
        }

        @Override
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.c.getMostSignificantBits());
            parcel.writeLong(this.c.getLeastSignificantBits());
            parcel.writeString(this.d);
            parcel.writeString(this.e);
            parcel.writeByteArray(this.f);
        }

        public b(UUID uuid, @Nullable String str, String str2, @Nullable byte[] bArr) {
            this.c = (UUID) hg.a(uuid);
            this.d = str;
            this.e = (String) hg.a(str2);
            this.f = bArr;
        }
    }

    private f40(@Nullable String str, boolean z, b... bVarArr) {
        this.d = str;
        bVarArr = z ? (b[]) bVarArr.clone() : bVarArr;
        this.b = bVarArr;
        this.e = bVarArr.length;
        Arrays.sort(bVarArr, this);
    }

    public f40(ArrayList arrayList) {
        this(null, false, (b[]) arrayList.toArray(new b[0]));
    }

    public f40(b... bVarArr) {
        this(null, true, bVarArr);
    }
}
