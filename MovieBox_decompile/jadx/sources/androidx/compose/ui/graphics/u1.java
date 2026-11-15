package androidx.compose.ui.graphics;

import kotlin.ULong;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.ws.WebSocketProtocol;

public final class u1 {

    public static final a f4349b = new a(null);

    private static final long f4350c = w1.d(4278190080L);

    private static final long f4351d = w1.d(4282664004L);

    private static final long f4352e = w1.d(4287137928L);

    private static final long f4353f = w1.d(4291611852L);

    private static final long f4354g = w1.d(4294967295L);

    private static final long f4355h = w1.d(4294901760L);

    private static final long f4356i = w1.d(4278255360L);

    private static final long f4357j = w1.d(4278190335L);

    private static final long f4358k = w1.d(4294967040L);

    private static final long f4359l = w1.d(4278255615L);

    private static final long f4360m = w1.d(4294902015L);

    private static final long f4361n = w1.b(0);

    private static final long f4362o = w1.a(0.0f, 0.0f, 0.0f, 0.0f, androidx.compose.ui.graphics.colorspace.g.f4044a.y());

    private final long f4363a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return u1.f4350c;
        }

        public final long b() {
            return u1.f4357j;
        }

        public final long c() {
            return u1.f4355h;
        }

        public final long d() {
            return u1.f4361n;
        }

        public final long e() {
            return u1.f4362o;
        }

        public final long f() {
            return u1.f4354g;
        }

        private a() {
        }
    }

    private u1(long j10) {
        this.f4363a = j10;
    }

    public static final u1 g(long j10) {
        return new u1(j10);
    }

    public static final long i(long j10, androidx.compose.ui.graphics.colorspace.c cVar) {
        return androidx.compose.ui.graphics.colorspace.d.i(p(j10), cVar, 0, 2, null).a(j10);
    }

    public static final long j(long j10, float f10, float f11, float f12, float f13) {
        return w1.a(f11, f12, f13, f10, p(j10));
    }

    public static long k(long j10, float f10, float f11, float f12, float f13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = n(j10);
        }
        float f14 = f10;
        if ((i10 & 2) != 0) {
            f11 = r(j10);
        }
        float f15 = f11;
        if ((i10 & 4) != 0) {
            f12 = q(j10);
        }
        float f16 = f12;
        if ((i10 & 8) != 0) {
            f13 = o(j10);
        }
        return j(j10, f14, f15, f16, f13);
    }

    public static boolean l(long j10, Object obj) {
        return (obj instanceof u1) && j10 == ((u1) obj).u();
    }

    public static final boolean m(long j10, long j11) {
        return ULong.e(j10, j11);
    }

    public static final float n(long j10) {
        float fC;
        float f10;
        if (ULong.b(63 & j10) == 0) {
            fC = (float) UnsignedKt.c(ULong.b(ULong.b(j10 >>> 56) & 255));
            f10 = 255.0f;
        } else {
            fC = (float) UnsignedKt.c(ULong.b(ULong.b(j10 >>> 6) & 1023));
            f10 = 1023.0f;
        }
        return fC / f10;
    }

    public static final float o(long j10) {
        int i10;
        int i11;
        int i12;
        if (ULong.b(63 & j10) == 0) {
            return ((float) UnsignedKt.c(ULong.b(ULong.b(j10 >>> 32) & 255))) / 255.0f;
        }
        short sB = (short) ULong.b(ULong.b(j10 >>> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
        int i13 = Short.MIN_VALUE & sB;
        int i14 = ((65535 & sB) >>> 10) & 31;
        int i15 = sB & 1023;
        if (i14 != 0) {
            int i16 = i15 << 13;
            if (i14 == 31) {
                i10 = 255;
                if (i16 != 0) {
                    i16 |= 4194304;
                }
            } else {
                i10 = i14 + 112;
            }
            int i17 = i10;
            i11 = i16;
            i12 = i17;
        } else {
            if (i15 != 0) {
                float fIntBitsToFloat = Float.intBitsToFloat(i15 + 1056964608) - z3.f4611c;
                return i13 == 0 ? fIntBitsToFloat : -fIntBitsToFloat;
            }
            i12 = 0;
            i11 = 0;
        }
        return Float.intBitsToFloat((i12 << 23) | (i13 << 16) | i11);
    }

    public static final androidx.compose.ui.graphics.colorspace.c p(long j10) {
        androidx.compose.ui.graphics.colorspace.g gVar = androidx.compose.ui.graphics.colorspace.g.f4044a;
        return gVar.l()[(int) ULong.b(j10 & 63)];
    }

    public static final float q(long j10) {
        int i10;
        int i11;
        int i12;
        if (ULong.b(63 & j10) == 0) {
            return ((float) UnsignedKt.c(ULong.b(ULong.b(j10 >>> 40) & 255))) / 255.0f;
        }
        short sB = (short) ULong.b(ULong.b(j10 >>> 32) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
        int i13 = Short.MIN_VALUE & sB;
        int i14 = ((65535 & sB) >>> 10) & 31;
        int i15 = sB & 1023;
        if (i14 != 0) {
            int i16 = i15 << 13;
            if (i14 == 31) {
                i10 = 255;
                if (i16 != 0) {
                    i16 |= 4194304;
                }
            } else {
                i10 = i14 + 112;
            }
            int i17 = i10;
            i11 = i16;
            i12 = i17;
        } else {
            if (i15 != 0) {
                float fIntBitsToFloat = Float.intBitsToFloat(i15 + 1056964608) - z3.f4611c;
                return i13 == 0 ? fIntBitsToFloat : -fIntBitsToFloat;
            }
            i12 = 0;
            i11 = 0;
        }
        return Float.intBitsToFloat((i12 << 23) | (i13 << 16) | i11);
    }

    public static final float r(long j10) {
        int i10;
        int i11;
        int i12;
        if (ULong.b(63 & j10) == 0) {
            return ((float) UnsignedKt.c(ULong.b(ULong.b(j10 >>> 48) & 255))) / 255.0f;
        }
        short sB = (short) ULong.b(ULong.b(j10 >>> 48) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
        int i13 = Short.MIN_VALUE & sB;
        int i14 = ((65535 & sB) >>> 10) & 31;
        int i15 = sB & 1023;
        if (i14 != 0) {
            int i16 = i15 << 13;
            if (i14 == 31) {
                i10 = 255;
                if (i16 != 0) {
                    i16 |= 4194304;
                }
            } else {
                i10 = i14 + 112;
            }
            int i17 = i10;
            i11 = i16;
            i12 = i17;
        } else {
            if (i15 != 0) {
                float fIntBitsToFloat = Float.intBitsToFloat(i15 + 1056964608) - z3.f4611c;
                return i13 == 0 ? fIntBitsToFloat : -fIntBitsToFloat;
            }
            i12 = 0;
            i11 = 0;
        }
        return Float.intBitsToFloat((i12 << 23) | (i13 << 16) | i11);
    }

    public static int s(long j10) {
        return ULong.f(j10);
    }

    public static String t(long j10) {
        return "Color(" + r(j10) + ", " + q(j10) + ", " + o(j10) + ", " + n(j10) + ", " + p(j10).f() + ')';
    }

    public boolean equals(Object obj) {
        return l(this.f4363a, obj);
    }

    public int hashCode() {
        return s(this.f4363a);
    }

    public String toString() {
        return t(this.f4363a);
    }

    public final long u() {
        return this.f4363a;
    }

    public static long h(long j10) {
        return j10;
    }
}
