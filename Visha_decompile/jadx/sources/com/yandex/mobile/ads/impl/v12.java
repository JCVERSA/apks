package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class v12 extends r12 {
    public static final Parcelable.Creator<v12> CREATOR = new a();
    public final List<c> b;

    public class a implements Parcelable.Creator<v12> {
        @Override
        public final v12 createFromParcel(Parcel parcel) {
            return new v12(parcel);
        }

        @Override
        public final v12[] newArray(int i) {
            return new v12[i];
        }
    }

    public static final class b {
        public final int a;
        public final long b;

        public static b a(Parcel parcel) {
            return new b(parcel.readInt(), parcel.readLong());
        }

        private b(int i, long j) {
            this.a = i;
            this.b = j;
        }
    }

    public static final class c {
        public final long a;
        public final boolean b;
        public final boolean c;
        public final boolean d;
        public final long e;
        public final List<b> f;
        public final boolean g;
        public final long h;
        public final int i;
        public final int j;
        public final int k;

        public static c a(Parcel parcel) {
            return new c(parcel);
        }

        private c(long j, boolean z, boolean z2, boolean z3, ArrayList arrayList, long j2, boolean z4, long j3, int i, int i2, int i3) {
            this.a = j;
            this.b = z;
            this.c = z2;
            this.d = z3;
            this.f = Collections.unmodifiableList(arrayList);
            this.e = j2;
            this.g = z4;
            this.h = j3;
            this.i = i;
            this.j = i2;
            this.k = i3;
        }

        private c(Parcel parcel) {
            this.a = parcel.readLong();
            this.b = parcel.readByte() == 1;
            this.c = parcel.readByte() == 1;
            this.d = parcel.readByte() == 1;
            int i = parcel.readInt();
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(b.a(parcel));
            }
            this.f = Collections.unmodifiableList(arrayList);
            this.e = parcel.readLong();
            this.g = parcel.readByte() == 1;
            this.h = parcel.readLong();
            this.i = parcel.readInt();
            this.j = parcel.readInt();
            this.k = parcel.readInt();
        }
    }

    public static v12 a(ag1 ag1Var) {
        int i;
        ArrayList arrayList;
        boolean z;
        boolean z2;
        long j;
        boolean z3;
        long j2;
        int iZ;
        int iT;
        int iT2;
        boolean z4;
        boolean z5;
        long jV;
        int iT3 = ag1Var.t();
        ArrayList arrayList2 = new ArrayList(iT3);
        int i2 = 0;
        while (i2 < iT3) {
            long jV2 = ag1Var.v();
            boolean z6 = (ag1Var.t() & 128) != 0;
            ArrayList arrayList3 = new ArrayList();
            if (z6) {
                i = iT3;
                arrayList = arrayList3;
                z = false;
                z2 = false;
                j = C.TIME_UNSET;
                z3 = false;
                j2 = C.TIME_UNSET;
                iZ = 0;
                iT = 0;
                iT2 = 0;
            } else {
                int iT4 = ag1Var.t();
                boolean z7 = (iT4 & 128) != 0;
                boolean z8 = (iT4 & 64) != 0;
                boolean z9 = (iT4 & 32) != 0;
                long jV3 = z8 ? ag1Var.v() : C.TIME_UNSET;
                if (z8) {
                    i = iT3;
                    z2 = z7;
                    z4 = z8;
                } else {
                    int iT5 = ag1Var.t();
                    ArrayList arrayList4 = new ArrayList(iT5);
                    int i3 = 0;
                    while (i3 < iT5) {
                        arrayList4.add(new b(ag1Var.t(), ag1Var.v()));
                        i3++;
                        z7 = z7;
                        z8 = z8;
                        iT3 = iT3;
                        iT5 = iT5;
                    }
                    i = iT3;
                    z2 = z7;
                    z4 = z8;
                    arrayList3 = arrayList4;
                }
                if (z9) {
                    long jT = ag1Var.t();
                    z5 = (jT & 128) != 0;
                    jV = ((((jT & 1) << 32) | ag1Var.v()) * 1000) / 90;
                } else {
                    z5 = false;
                    jV = C.TIME_UNSET;
                }
                iZ = ag1Var.z();
                arrayList = arrayList3;
                z3 = z5;
                j = jV3;
                j2 = jV;
                iT = ag1Var.t();
                iT2 = ag1Var.t();
                z = z4;
            }
            arrayList2.add(new c(jV2, z6, z2, z, arrayList, j, z3, j2, iZ, iT, iT2));
            i2++;
            iT3 = i;
        }
        return new v12(arrayList2);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int size = this.b.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            c cVar = this.b.get(i2);
            parcel.writeLong(cVar.a);
            parcel.writeByte(cVar.b ? (byte) 1 : (byte) 0);
            parcel.writeByte(cVar.c ? (byte) 1 : (byte) 0);
            parcel.writeByte(cVar.d ? (byte) 1 : (byte) 0);
            int size2 = cVar.f.size();
            parcel.writeInt(size2);
            for (int i3 = 0; i3 < size2; i3++) {
                b bVar = cVar.f.get(i3);
                parcel.writeInt(bVar.a);
                parcel.writeLong(bVar.b);
            }
            parcel.writeLong(cVar.e);
            parcel.writeByte(cVar.g ? (byte) 1 : (byte) 0);
            parcel.writeLong(cVar.h);
            parcel.writeInt(cVar.i);
            parcel.writeInt(cVar.j);
            parcel.writeInt(cVar.k);
        }
    }

    private v12(Parcel parcel) {
        int i = parcel.readInt();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(c.a(parcel));
        }
        this.b = Collections.unmodifiableList(arrayList);
    }

    private v12(ArrayList arrayList) {
        this.b = Collections.unmodifiableList(arrayList);
    }
}
