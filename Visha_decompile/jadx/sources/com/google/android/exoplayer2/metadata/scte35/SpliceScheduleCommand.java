package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.C;
import defpackage.qw7;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class SpliceScheduleCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceScheduleCommand> CREATOR = new a();
    public final List<c> events;

    public class a implements Parcelable.Creator {
        @Override
        public SpliceScheduleCommand createFromParcel(Parcel parcel) {
            return new SpliceScheduleCommand(parcel, null);
        }

        @Override
        public SpliceScheduleCommand[] newArray(int i) {
            return new SpliceScheduleCommand[i];
        }
    }

    public static final class b {
        public final int a;
        public final long b;

        public b(int i, long j, a aVar) {
            this(i, j);
        }

        public static b c(Parcel parcel) {
            return new b(parcel.readInt(), parcel.readLong());
        }

        public final void d(Parcel parcel) {
            parcel.writeInt(this.a);
            parcel.writeLong(this.b);
        }

        public b(int i, long j) {
            this.a = i;
            this.b = j;
        }
    }

    public SpliceScheduleCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    public static SpliceScheduleCommand parseFromSection(qw7 qw7Var) {
        int iC = qw7Var.C();
        ArrayList arrayList = new ArrayList(iC);
        for (int i = 0; i < iC; i++) {
            arrayList.add(c.e(qw7Var));
        }
        return new SpliceScheduleCommand(arrayList);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        int size = this.events.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.events.get(i2).f(parcel);
        }
    }

    private SpliceScheduleCommand(List<c> list) {
        this.events = Collections.unmodifiableList(list);
    }

    private SpliceScheduleCommand(Parcel parcel) {
        int i = parcel.readInt();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(c.d(parcel));
        }
        this.events = Collections.unmodifiableList(arrayList);
    }

    public static final class c {
        public final long a;
        public final boolean b;
        public final boolean c;
        public final boolean d;
        public final long e;
        public final List f;
        public final boolean g;
        public final long h;
        public final int i;
        public final int j;
        public final int k;

        public c(long j, boolean z, boolean z2, boolean z3, List list, long j2, boolean z4, long j3, int i, int i2, int i3) {
            this.a = j;
            this.b = z;
            this.c = z2;
            this.d = z3;
            this.f = Collections.unmodifiableList(list);
            this.e = j2;
            this.g = z4;
            this.h = j3;
            this.i = i;
            this.j = i2;
            this.k = i3;
        }

        public static c d(Parcel parcel) {
            return new c(parcel);
        }

        public static c e(qw7 qw7Var) {
            ArrayList arrayList;
            boolean z;
            long j;
            boolean z2;
            long j2;
            int i;
            int i2;
            int iC;
            boolean z3;
            boolean z4;
            long jE;
            long jE2 = qw7Var.E();
            boolean z5 = (qw7Var.C() & 128) != 0;
            ArrayList arrayList2 = new ArrayList();
            if (z5) {
                arrayList = arrayList2;
                z = false;
                j = C.TIME_UNSET;
                z2 = false;
                j2 = C.TIME_UNSET;
                i = 0;
                i2 = 0;
                iC = 0;
                z3 = false;
            } else {
                int iC2 = qw7Var.C();
                boolean z6 = (iC2 & 128) != 0;
                boolean z7 = (iC2 & 64) != 0;
                boolean z8 = (iC2 & 32) != 0;
                long jE3 = z7 ? qw7Var.E() : C.TIME_UNSET;
                if (!z7) {
                    int iC3 = qw7Var.C();
                    ArrayList arrayList3 = new ArrayList(iC3);
                    for (int i3 = 0; i3 < iC3; i3++) {
                        arrayList3.add(new b(qw7Var.C(), qw7Var.E(), null));
                    }
                    arrayList2 = arrayList3;
                }
                if (z8) {
                    long jC = qw7Var.C();
                    boolean z9 = (128 & jC) != 0;
                    jE = ((((jC & 1) << 32) | qw7Var.E()) * 1000) / 90;
                    z4 = z9;
                } else {
                    z4 = false;
                    jE = C.TIME_UNSET;
                }
                int I = qw7Var.I();
                int iC4 = qw7Var.C();
                z3 = z7;
                iC = qw7Var.C();
                j2 = jE;
                arrayList = arrayList2;
                long j3 = jE3;
                i = I;
                i2 = iC4;
                j = j3;
                boolean z10 = z6;
                z2 = z4;
                z = z10;
            }
            return new c(jE2, z5, z, z3, arrayList, j, z2, j2, i, i2, iC);
        }

        public final void f(Parcel parcel) {
            parcel.writeLong(this.a);
            parcel.writeByte(this.b ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.c ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.d ? (byte) 1 : (byte) 0);
            int size = this.f.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; i++) {
                ((b) this.f.get(i)).d(parcel);
            }
            parcel.writeLong(this.e);
            parcel.writeByte(this.g ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.h);
            parcel.writeInt(this.i);
            parcel.writeInt(this.j);
            parcel.writeInt(this.k);
        }

        public c(Parcel parcel) {
            this.a = parcel.readLong();
            this.b = parcel.readByte() == 1;
            this.c = parcel.readByte() == 1;
            this.d = parcel.readByte() == 1;
            int i = parcel.readInt();
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(b.c(parcel));
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
}
