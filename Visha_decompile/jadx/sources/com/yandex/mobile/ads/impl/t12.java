package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class t12 extends r12 {
    public static final Parcelable.Creator<t12> CREATOR = new a();
    public final long b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final long g;
    public final long h;
    public final List<b> i;
    public final boolean j;
    public final long k;
    public final int l;
    public final int m;
    public final int n;

    public class a implements Parcelable.Creator<t12> {
        @Override
        public final t12 createFromParcel(Parcel parcel) {
            return new t12(parcel);
        }

        @Override
        public final t12[] newArray(int i) {
            return new t12[i];
        }
    }

    public static final class b {
        public final int a;
        public final long b;
        public final long c;

        public static b a(Parcel parcel) {
            return new b(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }

        private b(int i, long j, long j2) {
            this.a = i;
            this.b = j;
            this.c = j2;
        }
    }

    public static t12 a(ag1 ag1Var, long j, p52 p52Var) {
        List list;
        int iZ;
        boolean z;
        boolean z2;
        long j2;
        boolean z3;
        long j3;
        boolean z4;
        int iT;
        int iT2;
        boolean z5;
        long jV;
        ag1 ag1Var2 = ag1Var;
        long jV2 = ag1Var.v();
        boolean z6 = (ag1Var.t() & 128) != 0;
        List listEmptyList = Collections.emptyList();
        if (z6) {
            list = listEmptyList;
            iZ = 0;
            z = false;
            z2 = false;
            j2 = C.TIME_UNSET;
            z3 = false;
            j3 = C.TIME_UNSET;
            z4 = false;
            iT = 0;
            iT2 = 0;
        } else {
            int iT3 = ag1Var.t();
            boolean z7 = (iT3 & 128) != 0;
            boolean z8 = (iT3 & 64) != 0;
            boolean z9 = (iT3 & 32) != 0;
            boolean z10 = (iT3 & 16) != 0;
            long jA = (!z8 || z10) ? C.TIME_UNSET : g52.a(j, ag1Var2);
            if (!z8) {
                int iT4 = ag1Var.t();
                ArrayList arrayList = new ArrayList(iT4);
                int i = 0;
                while (i < iT4) {
                    int iT5 = ag1Var.t();
                    long jA2 = !z10 ? g52.a(j, ag1Var2) : C.TIME_UNSET;
                    arrayList.add(new b(iT5, jA2, p52Var.b(jA2)));
                    i++;
                    ag1Var2 = ag1Var;
                }
                listEmptyList = arrayList;
            }
            if (z9) {
                long jT = ag1Var.t();
                boolean z11 = (128 & jT) != 0;
                jV = ((((jT & 1) << 32) | ag1Var.v()) * 1000) / 90;
                z5 = z11;
            } else {
                z5 = false;
                jV = C.TIME_UNSET;
            }
            iZ = ag1Var.z();
            iT = ag1Var.t();
            iT2 = ag1Var.t();
            list = listEmptyList;
            z4 = z8;
            long j4 = jA;
            z3 = z5;
            j3 = jV;
            z2 = z10;
            z = z7;
            j2 = j4;
        }
        return new t12(jV2, z6, z, z4, z2, j2, p52Var.b(j2), list, z3, j3, iZ, iT, iT2);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.b);
        parcel.writeByte(this.c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.d ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.e ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.g);
        parcel.writeLong(this.h);
        int size = this.i.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.i.get(i2);
            parcel.writeInt(bVar.a);
            parcel.writeLong(bVar.b);
            parcel.writeLong(bVar.c);
        }
        parcel.writeByte(this.j ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.k);
        parcel.writeInt(this.l);
        parcel.writeInt(this.m);
        parcel.writeInt(this.n);
    }

    private t12(long j, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, List<b> list, boolean z5, long j4, int i, int i2, int i3) {
        this.b = j;
        this.c = z;
        this.d = z2;
        this.e = z3;
        this.f = z4;
        this.g = j2;
        this.h = j3;
        this.i = Collections.unmodifiableList(list);
        this.j = z5;
        this.k = j4;
        this.l = i;
        this.m = i2;
        this.n = i3;
    }

    private t12(Parcel parcel) {
        this.b = parcel.readLong();
        this.c = parcel.readByte() == 1;
        this.d = parcel.readByte() == 1;
        this.e = parcel.readByte() == 1;
        this.f = parcel.readByte() == 1;
        this.g = parcel.readLong();
        this.h = parcel.readLong();
        int i = parcel.readInt();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(b.a(parcel));
        }
        this.i = Collections.unmodifiableList(arrayList);
        this.j = parcel.readByte() == 1;
        this.k = parcel.readLong();
        this.l = parcel.readInt();
        this.m = parcel.readInt();
        this.n = parcel.readInt();
    }
}
