package kotlin.uuid;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.HexExtensionsKt;

class b extends a {
    public static final void d(long j10, byte[] dst, int i10, int i11, int i12) {
        Intrinsics.h(dst, "dst");
        int i13 = 7 - i11;
        int i14 = 8 - i12;
        if (i14 > i13) {
            return;
        }
        while (true) {
            int i15 = HexExtensionsKt.a()[(int) ((j10 >> (i13 << 3)) & 255)];
            int i16 = i10 + 1;
            dst[i10] = (byte) (i15 >> 8);
            i10 += 2;
            dst[i16] = (byte) i15;
            if (i13 == i14) {
                return;
            } else {
                i13--;
            }
        }
    }

    public static final void e(byte[] bArr, int i10, long j10) {
        Intrinsics.h(bArr, "<this>");
        int i11 = 7;
        while (-1 < i11) {
            bArr[i10] = (byte) (j10 >> (i11 << 3));
            i11--;
            i10++;
        }
    }
}
