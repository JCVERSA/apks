package com.yandex.mobile.ads.impl;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class a40 implements Parcelable {
    public static final Parcelable.Creator<a40> CREATOR = new a();
    public final String b;
    public final Uri c;

    @Nullable
    public final String d;
    public final List<w22> e;

    @Nullable
    public final byte[] f;

    @Nullable
    public final String g;
    public final byte[] h;

    public class a implements Parcelable.Creator<a40> {
        @Override
        public final a40 createFromParcel(Parcel parcel) {
            return new a40(parcel);
        }

        @Override
        public final a40[] newArray(int i) {
            return new a40[i];
        }
    }

    public static class b {
        private final String a;
        private final Uri b;

        @Nullable
        private String c;

        @Nullable
        private List<w22> d;

        @Nullable
        private byte[] e;

        @Nullable
        private String f;

        @Nullable
        private byte[] g;

        public b(Uri uri, String str) {
            this.a = str;
            this.b = uri;
        }

        public final a40 a() {
            String str = this.a;
            Uri uri = this.b;
            String str2 = this.c;
            List listH = this.d;
            if (listH == null) {
                listH = kk0.h();
            }
            return new a40(str, uri, str2, listH, this.e, this.f, this.g);
        }

        public final b b(@Nullable byte[] bArr) {
            this.e = bArr;
            return this;
        }

        public final b b(@Nullable String str) {
            this.c = str;
            return this;
        }

        public final b a(@Nullable String str) {
            this.f = str;
            return this;
        }

        public final b a(@Nullable byte[] bArr) {
            this.g = bArr;
            return this;
        }

        public final b a(@Nullable ArrayList arrayList) {
            this.d = arrayList;
            return this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.List] */
    public final a40 a(a40 a40Var) {
        ?? EmptyList;
        if (!this.b.equals(a40Var.b)) {
            throw new IllegalArgumentException();
        }
        if (this.e.isEmpty() || a40Var.e.isEmpty()) {
            EmptyList = Collections.emptyList();
        } else {
            EmptyList = new ArrayList(this.e);
            for (int i = 0; i < a40Var.e.size(); i++) {
                w22 w22Var = a40Var.e.get(i);
                if (!EmptyList.contains(w22Var)) {
                    EmptyList.add(w22Var);
                }
            }
        }
        return new a40(this.b, a40Var.c, a40Var.d, EmptyList, a40Var.f, a40Var.g, a40Var.h);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof a40)) {
            return false;
        }
        a40 a40Var = (a40) obj;
        return this.b.equals(a40Var.b) && this.c.equals(a40Var.c) && f92.a(this.d, a40Var.d) && this.e.equals(a40Var.e) && Arrays.equals(this.f, a40Var.f) && f92.a(this.g, a40Var.g) && Arrays.equals(this.h, a40Var.h);
    }

    public final int hashCode() {
        int iHashCode = (this.c.hashCode() + (this.b.hashCode() * 961)) * 31;
        String str = this.d;
        int iHashCode2 = (Arrays.hashCode(this.f) + ((this.e.hashCode() + ((iHashCode + (str != null ? str.hashCode() : 0)) * 31)) * 31)) * 31;
        String str2 = this.g;
        return Arrays.hashCode(this.h) + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return this.d + StringUtils.PROCESS_POSTFIX_DELIMITER + this.b;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c.toString());
        parcel.writeString(this.d);
        parcel.writeInt(this.e.size());
        for (int i2 = 0; i2 < this.e.size(); i2++) {
            parcel.writeParcelable(this.e.get(i2), 0);
        }
        parcel.writeByteArray(this.f);
        parcel.writeString(this.g);
        parcel.writeByteArray(this.h);
    }

    public a40(Parcel parcel) {
        this.b = (String) f92.a(parcel.readString());
        this.c = Uri.parse((String) f92.a(parcel.readString()));
        this.d = parcel.readString();
        int i = parcel.readInt();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add((w22) parcel.readParcelable(w22.class.getClassLoader()));
        }
        this.e = Collections.unmodifiableList(arrayList);
        this.f = parcel.createByteArray();
        this.g = parcel.readString();
        this.h = (byte[]) f92.a(parcel.createByteArray());
    }

    private a40(String str, Uri uri, @Nullable String str2, List<w22> list, @Nullable byte[] bArr, @Nullable String str3, @Nullable byte[] bArr2) {
        int iA = f92.a(uri, str2);
        if (iA == 0 || iA == 2 || iA == 1) {
            hg.a("customCacheKey must be null for type: " + iA, str3 == null);
        }
        this.b = str;
        this.c = uri;
        this.d = str2;
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        this.e = Collections.unmodifiableList(arrayList);
        this.f = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
        this.g = str3;
        this.h = bArr2 != null ? Arrays.copyOf(bArr2, bArr2.length) : f92.f;
    }
}
