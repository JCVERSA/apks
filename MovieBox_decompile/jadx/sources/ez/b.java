package ez;

public abstract class b {
    private static final void a(int i10) {
        if (i10 > 8) {
            throw new IllegalArgumentException("Can't read more than eight bytes into a long value");
        }
    }

    public static long b(byte[] bArr, int i10, int i11) {
        a(i11);
        long j10 = 0;
        for (int i12 = 0; i12 < i11; i12++) {
            j10 |= (((long) bArr[i10 + i12]) & 255) << (i12 * 8);
        }
        return j10;
    }

    public static void c(byte[] bArr, long j10, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            bArr[i10 + i12] = (byte) (255 & j10);
            j10 >>= 8;
        }
    }
}
