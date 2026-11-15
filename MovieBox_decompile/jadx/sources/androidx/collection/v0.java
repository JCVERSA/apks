package androidx.collection;

import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

public abstract class v0 {

    public static final long[] f2044a = {-9187201950435737345L, -1};

    private static final n0 f2045b = new n0(0);

    public static final void a(long[] metadata, int i10) {
        Intrinsics.h(metadata, "metadata");
        int i11 = (i10 + 7) >> 3;
        for (int i12 = 0; i12 < i11; i12++) {
            long j10 = metadata[i12] & (-9187201950435737472L);
            metadata[i12] = (-72340172838076674L) & ((~j10) + (j10 >>> 7));
        }
        int iX = ArraysKt.X(metadata);
        int i13 = iX - 1;
        metadata[i13] = (metadata[i13] & 72057594037927935L) | (-72057594037927936L);
        metadata[iX] = metadata[0];
    }

    public static final int b(long[] metadata, int i10, int i11) {
        Intrinsics.h(metadata, "metadata");
        while (i10 < i11) {
            if (((metadata[i10 >> 3] >> ((i10 & 7) << 3)) & 255) == 128) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static final int c(int i10) {
        if (i10 == 7) {
            return 6;
        }
        return i10 - (i10 / 8);
    }

    public static final n0 d() {
        return new n0(0, 1, null);
    }

    public static final int e(int i10) {
        if (i10 == 0) {
            return 6;
        }
        return (i10 * 2) + 1;
    }

    public static final int f(int i10) {
        if (i10 > 0) {
            return (-1) >>> Integer.numberOfLeadingZeros(i10);
        }
        return 0;
    }

    public static final int g(int i10) {
        if (i10 == 7) {
            return 8;
        }
        return i10 + ((i10 - 1) / 7);
    }
}
