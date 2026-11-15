package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.C;
import defpackage.poa;
import defpackage.qw7;
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

    public class a implements Parcelable.Creator {
        @Override
        public SpliceInsertCommand createFromParcel(Parcel parcel) {
            return new SpliceInsertCommand(parcel, null);
        }

        @Override
        public SpliceInsertCommand[] newArray(int i) {
            return new SpliceInsertCommand[i];
        }
    }

    public static final class b {
        public final int a;
        public final long b;
        public final long c;

        public b(int i, long j, long j2, a aVar) {
            this(i, j, j2);
        }

        public static b a(Parcel parcel) {
            return new b(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }

        public void b(Parcel parcel) {
            parcel.writeInt(this.a);
            parcel.writeLong(this.b);
            parcel.writeLong(this.c);
        }

        public b(int i, long j, long j2) {
            this.a = i;
            this.b = j;
            this.c = j2;
        }
    }

    public SpliceInsertCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    public static SpliceInsertCommand parseFromSection(qw7 qw7Var, long j, poa poaVar) {
        List list;
        boolean z;
        boolean z2;
        long j2;
        boolean z3;
        long j3;
        int I;
        int iC;
        int iC2;
        boolean z4;
        boolean z5;
        long jE;
        long jE2 = qw7Var.E();
        boolean z6 = (qw7Var.C() & 128) != 0;
        List listEmptyList = Collections.emptyList();
        if (z6) {
            list = listEmptyList;
            z = false;
            z2 = false;
            j2 = C.TIME_UNSET;
            z3 = false;
            j3 = C.TIME_UNSET;
            I = 0;
            iC = 0;
            iC2 = 0;
            z4 = false;
        } else {
            int iC3 = qw7Var.C();
            boolean z7 = (iC3 & 128) != 0;
            boolean z8 = (iC3 & 64) != 0;
            boolean z9 = (iC3 & 32) != 0;
            boolean z10 = (iC3 & 16) != 0;
            long spliceTime = (!z8 || z10) ? C.TIME_UNSET : TimeSignalCommand.parseSpliceTime(qw7Var, j);
            if (!z8) {
                int iC4 = qw7Var.C();
                ArrayList arrayList = new ArrayList(iC4);
                for (int i = 0; i < iC4; i++) {
                    int iC5 = qw7Var.C();
                    long spliceTime2 = !z10 ? TimeSignalCommand.parseSpliceTime(qw7Var, j) : C.TIME_UNSET;
                    arrayList.add(new b(iC5, spliceTime2, poaVar.b(spliceTime2), null));
                }
                listEmptyList = arrayList;
            }
            if (z9) {
                long jC = qw7Var.C();
                boolean z11 = (128 & jC) != 0;
                jE = ((((jC & 1) << 32) | qw7Var.E()) * 1000) / 90;
                z5 = z11;
            } else {
                z5 = false;
                jE = C.TIME_UNSET;
            }
            I = qw7Var.I();
            z4 = z8;
            iC = qw7Var.C();
            iC2 = qw7Var.C();
            list = listEmptyList;
            long j4 = spliceTime;
            z3 = z5;
            j3 = jE;
            z2 = z10;
            z = z7;
            j2 = j4;
        }
        return new SpliceInsertCommand(jE2, z6, z, z4, z2, j2, poaVar.b(j2), list, z3, j3, I, iC, iC2);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.spliceEventId);
        parcel.writeByte(this.spliceEventCancelIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.outOfNetworkIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.programSpliceFlag ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.spliceImmediateFlag ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.programSplicePts);
        parcel.writeLong(this.programSplicePlaybackPositionUs);
        int size = this.componentSpliceList.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.componentSpliceList.get(i2).b(parcel);
        }
        parcel.writeByte(this.autoReturn ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.breakDurationUs);
        parcel.writeInt(this.uniqueProgramId);
        parcel.writeInt(this.availNum);
        parcel.writeInt(this.availsExpected);
    }

    private SpliceInsertCommand(long j, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, List<b> list, boolean z5, long j4, int i, int i2, int i3) {
        this.spliceEventId = j;
        this.spliceEventCancelIndicator = z;
        this.outOfNetworkIndicator = z2;
        this.programSpliceFlag = z3;
        this.spliceImmediateFlag = z4;
        this.programSplicePts = j2;
        this.programSplicePlaybackPositionUs = j3;
        this.componentSpliceList = Collections.unmodifiableList(list);
        this.autoReturn = z5;
        this.breakDurationUs = j4;
        this.uniqueProgramId = i;
        this.availNum = i2;
        this.availsExpected = i3;
    }

    private SpliceInsertCommand(Parcel parcel) {
        this.spliceEventId = parcel.readLong();
        this.spliceEventCancelIndicator = parcel.readByte() == 1;
        this.outOfNetworkIndicator = parcel.readByte() == 1;
        this.programSpliceFlag = parcel.readByte() == 1;
        this.spliceImmediateFlag = parcel.readByte() == 1;
        this.programSplicePts = parcel.readLong();
        this.programSplicePlaybackPositionUs = parcel.readLong();
        int i = parcel.readInt();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
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
