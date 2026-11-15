package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class p extends p1 {

    private char[] f65210a;

    private int f65211b;

    public p(char[] bufferWithData) {
        Intrinsics.h(bufferWithData, "bufferWithData");
        this.f65210a = bufferWithData;
        this.f65211b = bufferWithData.length;
        b(10);
    }

    @Override
    public void b(int i10) {
        char[] cArr = this.f65210a;
        if (cArr.length < i10) {
            char[] cArrCopyOf = Arrays.copyOf(cArr, RangesKt.e(i10, cArr.length * 2));
            Intrinsics.g(cArrCopyOf, "copyOf(this, newSize)");
            this.f65210a = cArrCopyOf;
        }
    }

    @Override
    public int d() {
        return this.f65211b;
    }

    public final void e(char c10) {
        p1.c(this, 0, 1, null);
        char[] cArr = this.f65210a;
        int iD = d();
        this.f65211b = iD + 1;
        cArr[iD] = c10;
    }

    @Override
    public char[] a() {
        char[] cArrCopyOf = Arrays.copyOf(this.f65210a, d());
        Intrinsics.g(cArrCopyOf, "copyOf(this, newSize)");
        return cArrCopyOf;
    }
}
