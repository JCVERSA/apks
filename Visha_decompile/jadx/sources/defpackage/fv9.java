package defpackage;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.scte35.PrivateCommand;
import com.google.android.exoplayer2.metadata.scte35.SpliceInsertCommand;
import com.google.android.exoplayer2.metadata.scte35.SpliceNullCommand;
import com.google.android.exoplayer2.metadata.scte35.SpliceScheduleCommand;
import com.google.android.exoplayer2.metadata.scte35.TimeSignalCommand;
import java.nio.ByteBuffer;

public final class fv9 extends jm9 {
    public final qw7 a = new qw7();
    public final pw7 b = new pw7();
    public poa c;

    @Override
    public Metadata b(eo6 eo6Var, ByteBuffer byteBuffer) {
        Metadata.Entry spliceNullCommand;
        poa poaVar = this.c;
        if (poaVar == null || eo6Var.j != poaVar.e()) {
            poa poaVar2 = new poa(eo6Var.f);
            this.c = poaVar2;
            poaVar2.a(eo6Var.f - eo6Var.j);
        }
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        this.a.M(bArrArray, iLimit);
        this.b.o(bArrArray, iLimit);
        this.b.r(39);
        long jH = (((long) this.b.h(1)) << 32) | ((long) this.b.h(32));
        this.b.r(20);
        int iH = this.b.h(12);
        int iH2 = this.b.h(8);
        this.a.P(14);
        if (iH2 == 0) {
            spliceNullCommand = new SpliceNullCommand();
        } else if (iH2 == 255) {
            spliceNullCommand = PrivateCommand.parseFromSection(this.a, iH, jH);
        } else if (iH2 == 4) {
            spliceNullCommand = SpliceScheduleCommand.parseFromSection(this.a);
        } else if (iH2 != 5) {
            spliceNullCommand = iH2 != 6 ? null : TimeSignalCommand.parseFromSection(this.a, jH, this.c);
        } else {
            spliceNullCommand = SpliceInsertCommand.parseFromSection(this.a, jH, this.c);
        }
        return spliceNullCommand == null ? new Metadata(new Metadata.Entry[0]) : new Metadata(spliceNullCommand);
    }
}
