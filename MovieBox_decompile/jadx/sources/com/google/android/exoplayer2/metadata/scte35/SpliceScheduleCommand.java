package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.d0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class SpliceScheduleCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceScheduleCommand> CREATOR = new a();
    public final List<c> events;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public SpliceScheduleCommand createFromParcel(Parcel parcel) {
            return new SpliceScheduleCommand(parcel, null);
        }

        @Override
        public SpliceScheduleCommand[] newArray(int i10) {
            return new SpliceScheduleCommand[i10];
        }
    }

    public static final class b {

        public final int f24805a;

        public final long f24806b;

        b(int i10, long j10, a aVar) {
            this(i10, j10);
        }

        public static b c(Parcel parcel) {
            return new b(parcel.readInt(), parcel.readLong());
        }

        public void d(Parcel parcel) {
            parcel.writeInt(this.f24805a);
            parcel.writeLong(this.f24806b);
        }

        private b(int i10, long j10) {
            this.f24805a = i10;
            this.f24806b = j10;
        }
    }

    SpliceScheduleCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    static SpliceScheduleCommand parseFromSection(d0 d0Var) {
        int iD = d0Var.D();
        ArrayList arrayList = new ArrayList(iD);
        for (int i10 = 0; i10 < iD; i10++) {
            arrayList.add(c.e(d0Var));
        }
        return new SpliceScheduleCommand(arrayList);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        int size = this.events.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            this.events.get(i11).f(parcel);
        }
    }

    private SpliceScheduleCommand(List<c> list) {
        this.events = Collections.unmodifiableList(list);
    }

    private SpliceScheduleCommand(Parcel parcel) {
        int i10 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(c.d(parcel));
        }
        this.events = Collections.unmodifiableList(arrayList);
    }

    public static final class c {

        public final long f24807a;

        public final boolean f24808b;

        public final boolean f24809c;

        public final boolean f24810d;

        public final long f24811e;

        public final List f24812f;

        public final boolean f24813g;

        public final long f24814h;

        public final int f24815i;

        public final int f24816j;

        public final int f24817k;

        private c(long j10, boolean z10, boolean z11, boolean z12, List list, long j11, boolean z13, long j12, int i10, int i11, int i12) {
            this.f24807a = j10;
            this.f24808b = z10;
            this.f24809c = z11;
            this.f24810d = z12;
            this.f24812f = Collections.unmodifiableList(list);
            this.f24811e = j11;
            this.f24813g = z13;
            this.f24814h = j12;
            this.f24815i = i10;
            this.f24816j = i11;
            this.f24817k = i12;
        }

        public static c d(Parcel parcel) {
            return new c(parcel);
        }

        public static c e(d0 d0Var) {
            ArrayList arrayList;
            boolean z10;
            long j10;
            boolean z11;
            long j11;
            int i10;
            int i11;
            int iD;
            boolean z12;
            boolean z13;
            long jF;
            long jF2 = d0Var.F();
            boolean z14 = (d0Var.D() & 128) != 0;
            ArrayList arrayList2 = new ArrayList();
            if (z14) {
                arrayList = arrayList2;
                z10 = false;
                j10 = C.TIME_UNSET;
                z11 = false;
                j11 = C.TIME_UNSET;
                i10 = 0;
                i11 = 0;
                iD = 0;
                z12 = false;
            } else {
                int iD2 = d0Var.D();
                boolean z15 = (iD2 & 128) != 0;
                boolean z16 = (iD2 & 64) != 0;
                boolean z17 = (iD2 & 32) != 0;
                long jF3 = z16 ? d0Var.F() : C.TIME_UNSET;
                if (!z16) {
                    int iD3 = d0Var.D();
                    ArrayList arrayList3 = new ArrayList(iD3);
                    for (int i12 = 0; i12 < iD3; i12++) {
                        arrayList3.add(new b(d0Var.D(), d0Var.F(), null));
                    }
                    arrayList2 = arrayList3;
                }
                if (z17) {
                    long jD = d0Var.D();
                    boolean z18 = (128 & jD) != 0;
                    jF = ((((jD & 1) << 32) | d0Var.F()) * 1000) / 90;
                    z13 = z18;
                } else {
                    z13 = false;
                    jF = C.TIME_UNSET;
                }
                int iJ = d0Var.J();
                int iD4 = d0Var.D();
                z12 = z16;
                iD = d0Var.D();
                j11 = jF;
                arrayList = arrayList2;
                long j12 = jF3;
                i10 = iJ;
                i11 = iD4;
                j10 = j12;
                boolean z19 = z15;
                z11 = z13;
                z10 = z19;
            }
            return new c(jF2, z14, z10, z12, arrayList, j10, z11, j11, i10, i11, iD);
        }

        public void f(Parcel parcel) {
            parcel.writeLong(this.f24807a);
            parcel.writeByte(this.f24808b ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f24809c ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f24810d ? (byte) 1 : (byte) 0);
            int size = this.f24812f.size();
            parcel.writeInt(size);
            for (int i10 = 0; i10 < size; i10++) {
                ((b) this.f24812f.get(i10)).d(parcel);
            }
            parcel.writeLong(this.f24811e);
            parcel.writeByte(this.f24813g ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.f24814h);
            parcel.writeInt(this.f24815i);
            parcel.writeInt(this.f24816j);
            parcel.writeInt(this.f24817k);
        }

        private c(Parcel parcel) {
            this.f24807a = parcel.readLong();
            this.f24808b = parcel.readByte() == 1;
            this.f24809c = parcel.readByte() == 1;
            this.f24810d = parcel.readByte() == 1;
            int i10 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                arrayList.add(b.c(parcel));
            }
            this.f24812f = Collections.unmodifiableList(arrayList);
            this.f24811e = parcel.readLong();
            this.f24813g = parcel.readByte() == 1;
            this.f24814h = parcel.readLong();
            this.f24815i = parcel.readInt();
            this.f24816j = parcel.readInt();
            this.f24817k = parcel.readInt();
        }
    }
}
