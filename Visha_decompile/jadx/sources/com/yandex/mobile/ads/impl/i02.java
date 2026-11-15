package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.i02;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

public final class i02 implements k01.b {
    public static final Parcelable.Creator<i02> CREATOR = new a();
    public final List<b> b;

    public class a implements Parcelable.Creator<i02> {
        @Override
        public final i02 createFromParcel(Parcel parcel) {
            ArrayList arrayList = new ArrayList();
            parcel.readList(arrayList, b.class.getClassLoader());
            return new i02(arrayList);
        }

        @Override
        public final i02[] newArray(int i) {
            return new i02[i];
        }
    }

    public static final class b implements Parcelable {
        public static final Parcelable.Creator<b> CREATOR;
        public final long b;
        public final long c;
        public final int d;

        public class a implements Parcelable.Creator<b> {
            @Override
            public final b createFromParcel(Parcel parcel) {
                return new b(parcel.readInt(), parcel.readLong(), parcel.readLong());
            }

            @Override
            public final b[] newArray(int i) {
                return new b[i];
            }
        }

        static {
            new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return i02.b.a((i02.b) obj, (i02.b) obj2);
                }
            };
            CREATOR = new a();
        }

        public b(int i, long j, long j2) {
            hg.a(j < j2);
            this.b = j;
            this.c = j2;
            this.d = i;
        }

        public static int a(b bVar, b bVar2) {
            return yq.b().a(bVar.b, bVar2.b).a(bVar.c, bVar2.c).a(bVar.d, bVar2.d).a();
        }

        @Override
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.b == bVar.b && this.c == bVar.c && this.d == bVar.d;
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{Long.valueOf(this.b), Long.valueOf(this.c), Integer.valueOf(this.d)});
        }

        public final String toString() {
            long j = this.b;
            long j2 = this.c;
            int i = this.d;
            int i2 = f92.a;
            Locale locale = Locale.US;
            return "Segment: startTimeMs=" + j + ", endTimeMs=" + j2 + ", speedDivisor=" + i;
        }

        @Override
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.b);
            parcel.writeLong(this.c);
            parcel.writeInt(this.d);
        }
    }

    public i02(ArrayList arrayList) {
        this.b = arrayList;
        hg.a(!a(arrayList));
    }

    private static boolean a(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return false;
        }
        long j = ((b) arrayList.get(0)).c;
        for (int i = 1; i < arrayList.size(); i++) {
            if (((b) arrayList.get(i)).b < j) {
                return true;
            }
            j = ((b) arrayList.get(i)).c;
        }
        return false;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i02.class != obj.getClass()) {
            return false;
        }
        return this.b.equals(((i02) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "SlowMotion: segments=" + this.b;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.b);
    }
}
