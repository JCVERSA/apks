package defpackage;

public final class s94 extends y94 {
    @Override
    public short a(short s) {
        return c(s, (short) 1);
    }

    @Override
    public short b(short s, short s2) {
        int i = (s2 & 1) * s;
        for (int i2 = 1; i2 < 13; i2++) {
            i ^= ((1 << i2) & s2) * s;
        }
        return d(i);
    }

    public short c(short s, short s2) {
        short sG = g(s, s);
        short sF = f(sG, sG);
        return g(f(e(f(e(sF), sF)), sF), s2);
    }

    public short d(int i) {
        int i2 = i & 8191;
        int i3 = i >>> 13;
        int i4 = ((i3 << 4) ^ (i3 << 3)) ^ (i3 << 1);
        int i5 = i4 >>> 13;
        return (short) ((((i2 ^ i3) ^ i5) ^ (i4 & 8191)) ^ (((i5 << 4) ^ (i5 << 3)) ^ (i5 << 1)));
    }

    public final short e(short s) {
        return d(i45.a(d(i45.a(s))));
    }

    public final short f(short s, short s2) {
        long j = s;
        long j2 = s2;
        long j3 = (j2 << 18) * (64 & j);
        long j4 = j ^ (j << 21);
        long j5 = ((j2 << 15) * (j4 & 8589934624L)) ^ (((((j3 ^ ((268435457 & j4) * j2)) ^ ((j2 << 3) * (536870914 & j4))) ^ ((j2 << 6) * (1073741828 & j4))) ^ ((j2 << 9) * (2147483656L & j4))) ^ ((j2 << 12) * (4294967312L & j4)));
        long j6 = 2305834213120671744L & j5;
        long j7 = j5 ^ ((j6 >>> 26) ^ (((j6 >>> 18) ^ (j6 >>> 20)) ^ (j6 >>> 24)));
        long j8 = 8796025913344L & j7;
        return d(((int) (j7 ^ ((j8 >>> 26) ^ (((j8 >>> 18) ^ (j8 >>> 20)) ^ (j8 >>> 24))))) & 67108863);
    }

    public final short g(short s, short s2) {
        long j = s;
        long j2 = s2;
        long j3 = (j2 << 6) * (64 & j);
        long j4 = j ^ (j << 7);
        long j5 = ((j2 << 5) * (j4 & 524320)) ^ (((((j3 ^ ((16385 & j4) * j2)) ^ ((j2 << 1) * (32770 & j4))) ^ ((j2 << 2) * (65540 & j4))) ^ ((j2 << 3) * (131080 & j4))) ^ ((j2 << 4) * (262160 & j4)));
        long j6 = 137371844608L & j5;
        return d(((int) (j5 ^ ((j6 >>> 26) ^ (((j6 >>> 18) ^ (j6 >>> 20)) ^ (j6 >>> 24))))) & 67108863);
    }
}
