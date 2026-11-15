package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class z0 extends p1 {

    private long[] f65252a;

    private int f65253b;

    public z0(long[] bufferWithData) {
        Intrinsics.h(bufferWithData, "bufferWithData");
        this.f65252a = bufferWithData;
        this.f65253b = bufferWithData.length;
        b(10);
    }

    @Override
    public void b(int i10) {
        long[] jArr = this.f65252a;
        if (jArr.length < i10) {
            long[] jArrCopyOf = Arrays.copyOf(jArr, RangesKt.e(i10, jArr.length * 2));
            Intrinsics.g(jArrCopyOf, "copyOf(this, newSize)");
            this.f65252a = jArrCopyOf;
        }
    }

    @Override
    public int d() {
        return this.f65253b;
    }

    public final void e(long j10) {
        p1.c(this, 0, 1, null);
        long[] jArr = this.f65252a;
        int iD = d();
        this.f65253b = iD + 1;
        jArr[iD] = j10;
    }

    @Override
    public long[] a() {
        long[] jArrCopyOf = Arrays.copyOf(this.f65252a, d());
        Intrinsics.g(jArrCopyOf, "copyOf(this, newSize)");
        return jArrCopyOf;
    }
}
