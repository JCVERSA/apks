package com.google.android.exoplayer2.metadata.scte35;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.d;
import com.google.android.exoplayer2.metadata.g;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.l0;
import java.nio.ByteBuffer;

public final class a extends g {

    private final d0 f24818a = new d0();

    private final c0 f24819b = new c0();

    private l0 f24820c;

    @Override
    protected Metadata b(d dVar, ByteBuffer byteBuffer) {
        Metadata.Entry spliceNullCommand;
        l0 l0Var = this.f24820c;
        if (l0Var == null || dVar.f24779i != l0Var.e()) {
            l0 l0Var2 = new l0(dVar.f24204e);
            this.f24820c = l0Var2;
            l0Var2.a(dVar.f24204e - dVar.f24779i);
        }
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        this.f24818a.N(bArrArray, iLimit);
        this.f24819b.o(bArrArray, iLimit);
        this.f24819b.r(39);
        long jH = (((long) this.f24819b.h(1)) << 32) | ((long) this.f24819b.h(32));
        this.f24819b.r(20);
        int iH = this.f24819b.h(12);
        int iH2 = this.f24819b.h(8);
        this.f24818a.Q(14);
        if (iH2 == 0) {
            spliceNullCommand = new SpliceNullCommand();
        } else if (iH2 == 255) {
            spliceNullCommand = PrivateCommand.parseFromSection(this.f24818a, iH, jH);
        } else if (iH2 == 4) {
            spliceNullCommand = SpliceScheduleCommand.parseFromSection(this.f24818a);
        } else if (iH2 != 5) {
            spliceNullCommand = iH2 != 6 ? null : TimeSignalCommand.parseFromSection(this.f24818a, jH, this.f24820c);
        } else {
            spliceNullCommand = SpliceInsertCommand.parseFromSection(this.f24818a, jH, this.f24820c);
        }
        return spliceNullCommand == null ? new Metadata(new Metadata.Entry[0]) : new Metadata(spliceNullCommand);
    }
}
