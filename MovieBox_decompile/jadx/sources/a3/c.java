package a3;

import androidx.media3.common.util.i0;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.p0;
import androidx.media3.common.x;
import java.nio.ByteBuffer;

public final class c extends t2.c {

    private final j0 f88a = new j0();

    private final i0 f89b = new i0();

    private p0 f90c;

    @Override
    protected x b(t2.b bVar, ByteBuffer byteBuffer) {
        x.a eVar;
        p0 p0Var = this.f90c;
        if (p0Var == null || bVar.f72467i != p0Var.f()) {
            p0 p0Var2 = new p0(bVar.f10608e);
            this.f90c = p0Var2;
            p0Var2.a(bVar.f10608e - bVar.f72467i);
        }
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        this.f88a.U(bArrArray, iLimit);
        this.f89b.o(bArrArray, iLimit);
        this.f89b.r(39);
        long jH = (((long) this.f89b.h(1)) << 32) | ((long) this.f89b.h(32));
        this.f89b.r(20);
        int iH = this.f89b.h(12);
        int iH2 = this.f89b.h(8);
        this.f88a.X(14);
        if (iH2 == 0) {
            eVar = new e();
        } else if (iH2 == 255) {
            eVar = a.b(this.f88a, iH, jH);
        } else if (iH2 == 4) {
            eVar = f.b(this.f88a);
        } else if (iH2 != 5) {
            eVar = iH2 != 6 ? null : g.b(this.f88a, jH, this.f90c);
        } else {
            eVar = d.b(this.f88a, jH, this.f90c);
        }
        return eVar == null ? new x(new x.a[0]) : new x(eVar);
    }
}
