package defpackage;

public final class r94 extends y94 {
    @Override
    public short a(short s) {
        short sB = b(d(s), s);
        short sB2 = b(d(d(sB)), sB);
        return d(b(d(b(d(d(b(d(d(d(d(sB2)))), sB2))), sB)), s));
    }

    @Override
    public short b(short s, short s2) {
        int i = (s2 & 1) * s;
        for (int i2 = 1; i2 < 12; i2++) {
            i ^= ((1 << i2) & s2) * s;
        }
        return c(i);
    }

    public short c(int i) {
        int i2 = (2093056 & i) >>> 9;
        int i3 = (14680064 & i) >>> 18;
        return (short) (((((i & 4095) ^ (i >>> 12)) ^ i2) ^ i3) ^ (i >>> 21));
    }

    public short d(short s) {
        return c(i45.a(s));
    }
}
