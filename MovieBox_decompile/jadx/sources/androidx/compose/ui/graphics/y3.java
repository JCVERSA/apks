package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class y3 implements Comparable {

    public static final a f4596a = new a(null);

    private static final short f4597b = b(5120);

    private static final short f4598c = b(-1025);

    private static final short f4599d = b(31743);

    private static final short f4600e = b(1024);

    private static final short f4601f = b(1);

    private static final short f4602g = b(32256);

    private static final short f4603h = b(-1024);

    private static final short f4604i = b(Short.MIN_VALUE);

    private static final short f4605j = b(31744);

    private static final short f4606k = b(0);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static short a(float f10) {
        int i10;
        int iFloatToRawIntBits = Float.floatToRawIntBits(f10);
        int i11 = iFloatToRawIntBits >>> 31;
        int i12 = (iFloatToRawIntBits >>> 23) & 255;
        int i13 = 8388607 & iFloatToRawIntBits;
        int i14 = 31;
        int i15 = 0;
        if (i12 != 255) {
            int i16 = i12 - 112;
            if (i16 >= 31) {
                i14 = 49;
            } else {
                if (i16 > 0) {
                    i15 = i13 >> 13;
                    if ((iFloatToRawIntBits & 4096) != 0) {
                        i10 = (((i16 << 10) | i15) + 1) | (i11 << 15);
                    } else {
                        i14 = i16;
                    }
                    return b((short) i10);
                }
                if (i16 >= -10) {
                    int i17 = (8388608 | i13) >> (1 - i16);
                    if ((i17 & 4096) != 0) {
                        i17 += 8192;
                    }
                    i14 = 0;
                    i15 = i17 >> 13;
                } else {
                    i14 = 0;
                }
            }
        } else if (i13 != 0) {
            i15 = 512;
        }
        i10 = (i11 << 15) | (i14 << 10) | i15;
        return b((short) i10);
    }

    public static short b(short s10) {
        return s10;
    }
}
