package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class j extends p1 {

    private byte[] f65187a;

    private int f65188b;

    public j(byte[] bufferWithData) {
        Intrinsics.h(bufferWithData, "bufferWithData");
        this.f65187a = bufferWithData;
        this.f65188b = bufferWithData.length;
        b(10);
    }

    @Override
    public void b(int i10) {
        byte[] bArr = this.f65187a;
        if (bArr.length < i10) {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, RangesKt.e(i10, bArr.length * 2));
            Intrinsics.g(bArrCopyOf, "copyOf(this, newSize)");
            this.f65187a = bArrCopyOf;
        }
    }

    @Override
    public int d() {
        return this.f65188b;
    }

    public final void e(byte b10) {
        p1.c(this, 0, 1, null);
        byte[] bArr = this.f65187a;
        int iD = d();
        this.f65188b = iD + 1;
        bArr[iD] = b10;
    }

    @Override
    public byte[] a() {
        byte[] bArrCopyOf = Arrays.copyOf(this.f65187a, d());
        Intrinsics.g(bArrCopyOf, "copyOf(this, newSize)");
        return bArrCopyOf;
    }
}
