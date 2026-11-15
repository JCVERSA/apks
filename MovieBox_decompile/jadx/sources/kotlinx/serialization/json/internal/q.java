package kotlinx.serialization.json.internal;

import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;

public final class q extends j {

    private final boolean f65371c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(h0 writer, boolean z10) {
        super(writer);
        Intrinsics.h(writer, "writer");
        this.f65371c = z10;
    }

    @Override
    public void d(byte b10) {
        boolean z10 = this.f65371c;
        String strF = UByte.f(UByte.b(b10));
        if (z10) {
            m(strF);
        } else {
            j(strF);
        }
    }

    @Override
    public void h(int i10) {
        boolean z10 = this.f65371c;
        int iB = UInt.b(i10);
        if (z10) {
            m(Long.toString(((long) iB) & 4294967295L, 10));
        } else {
            j(Long.toString(((long) iB) & 4294967295L, 10));
        }
    }

    @Override
    public void i(long j10) {
        boolean z10 = this.f65371c;
        long jB = ULong.b(j10);
        if (z10) {
            m(o.a(jB, 10));
        } else {
            j(p.a(jB, 10));
        }
    }

    @Override
    public void k(short s10) {
        boolean z10 = this.f65371c;
        String strF = UShort.f(UShort.b(s10));
        if (z10) {
            m(strF);
        } else {
            j(strF);
        }
    }
}
