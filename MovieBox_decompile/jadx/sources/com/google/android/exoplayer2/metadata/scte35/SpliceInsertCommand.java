package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.l0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class SpliceInsertCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new a();
    public final boolean autoReturn;
    public final int availNum;
    public final int availsExpected;
    public final long breakDurationUs;
    public final List<b> componentSpliceList;
    public final boolean outOfNetworkIndicator;
    public final boolean programSpliceFlag;
    public final long programSplicePlaybackPositionUs;
    public final long programSplicePts;
    public final boolean spliceEventCancelIndicator;
    public final long spliceEventId;
    public final boolean spliceImmediateFlag;
    public final int uniqueProgramId;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public SpliceInsertCommand createFromParcel(Parcel parcel) {
            return new SpliceInsertCommand(parcel, null);
        }

        @Override
        public SpliceInsertCommand[] newArray(int i10) {
            return new SpliceInsertCommand[i10];
        }
    }

    public static final class b {

        public final int f24802a;

        public final long f24803b;

        public final long f24804c;

        b(int i10, long j10, long j11, a aVar) {
            this(i10, j10, j11);
        }

        public static b a(Parcel parcel) {
            return new b(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }

        public void b(Parcel parcel) {
            parcel.writeInt(this.f24802a);
            parcel.writeLong(this.f24803b);
            parcel.writeLong(this.f24804c);
        }

        private b(int i10, long j10, long j11) {
            this.f24802a = i10;
            this.f24803b = j10;
            this.f24804c = j11;
        }
    }

    SpliceInsertCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    static SpliceInsertCommand parseFromSection(d0 d0Var, long j10, l0 l0Var) {
        List list;
        boolean z10;
        boolean z11;
        long j11;
        boolean z12;
        long j12;
        int iJ;
        int iD;
        int iD2;
        boolean z13;
        boolean z14;
        long jF;
        long jF2 = d0Var.F();
        boolean z15 = (d0Var.D() & 128) != 0;
        List listEmptyList = Collections.emptyList();
        if (z15) {
            list = listEmptyList;
            z10 = false;
            z11 = false;
            j11 = C.TIME_UNSET;
            z12 = false;
            j12 = C.TIME_UNSET;
            iJ = 0;
            iD = 0;
            iD2 = 0;
            z13 = false;
        } else {
            int iD3 = d0Var.D();
            boolean z16 = (iD3 & 128) != 0;
            boolean z17 = (iD3 & 64) != 0;
            boolean z18 = (iD3 & 32) != 0;
            boolean z19 = (iD3 & 16) != 0;
            long spliceTime = (!z17 || z19) ? C.TIME_UNSET : TimeSignalCommand.parseSpliceTime(d0Var, j10);
            if (!z17) {
                int iD4 = d0Var.D();
                ArrayList arrayList = new ArrayList(iD4);
                for (int i10 = 0; i10 < iD4; i10++) {
                    int iD5 = d0Var.D();
                    long spliceTime2 = !z19 ? TimeSignalCommand.parseSpliceTime(d0Var, j10) : C.TIME_UNSET;
                    arrayList.add(new b(iD5, spliceTime2, l0Var.b(spliceTime2), null));
                }
                listEmptyList = arrayList;
            }
            if (z18) {
                long jD = d0Var.D();
                boolean z20 = (128 & jD) != 0;
                jF = ((((jD & 1) << 32) | d0Var.F()) * 1000) / 90;
                z14 = z20;
            } else {
                z14 = false;
                jF = C.TIME_UNSET;
            }
            iJ = d0Var.J();
            z13 = z17;
            iD = d0Var.D();
            iD2 = d0Var.D();
            list = listEmptyList;
            long j13 = spliceTime;
            z12 = z14;
            j12 = jF;
            z11 = z19;
            z10 = z16;
            j11 = j13;
        }
        return new SpliceInsertCommand(jF2, z15, z10, z13, z11, j11, l0Var.b(j11), list, z12, j12, iJ, iD, iD2);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.spliceEventId);
        parcel.writeByte(this.spliceEventCancelIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.outOfNetworkIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.programSpliceFlag ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.spliceImmediateFlag ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.programSplicePts);
        parcel.writeLong(this.programSplicePlaybackPositionUs);
        int size = this.componentSpliceList.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            this.componentSpliceList.get(i11).b(parcel);
        }
        parcel.writeByte(this.autoReturn ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.breakDurationUs);
        parcel.writeInt(this.uniqueProgramId);
        parcel.writeInt(this.availNum);
        parcel.writeInt(this.availsExpected);
    }

    private SpliceInsertCommand(long j10, boolean z10, boolean z11, boolean z12, boolean z13, long j11, long j12, List<b> list, boolean z14, long j13, int i10, int i11, int i12) {
        this.spliceEventId = j10;
        this.spliceEventCancelIndicator = z10;
        this.outOfNetworkIndicator = z11;
        this.programSpliceFlag = z12;
        this.spliceImmediateFlag = z13;
        this.programSplicePts = j11;
        this.programSplicePlaybackPositionUs = j12;
        this.componentSpliceList = Collections.unmodifiableList(list);
        this.autoReturn = z14;
        this.breakDurationUs = j13;
        this.uniqueProgramId = i10;
        this.availNum = i11;
        this.availsExpected = i12;
    }

    private SpliceInsertCommand(Parcel parcel) {
        this.spliceEventId = parcel.readLong();
        this.spliceEventCancelIndicator = parcel.readByte() == 1;
        this.outOfNetworkIndicator = parcel.readByte() == 1;
        this.programSpliceFlag = parcel.readByte() == 1;
        this.spliceImmediateFlag = parcel.readByte() == 1;
        this.programSplicePts = parcel.readLong();
        this.programSplicePlaybackPositionUs = parcel.readLong();
        int i10 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(b.a(parcel));
        }
        this.componentSpliceList = Collections.unmodifiableList(arrayList);
        this.autoReturn = parcel.readByte() == 1;
        this.breakDurationUs = parcel.readLong();
        this.uniqueProgramId = parcel.readInt();
        this.availNum = parcel.readInt();
        this.availsExpected = parcel.readInt();
    }
}
