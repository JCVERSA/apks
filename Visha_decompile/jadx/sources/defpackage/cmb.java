package defpackage;

public abstract class cmb {
    public static short a(short s, int i) {
        short s2 = (short) (((s & 65280) >> 8) | ((s & 255) << 8));
        short s3 = (short) (((s2 & 61680) >> 4) | ((s2 & 3855) << 4));
        short s4 = (short) (((s3 & 52428) >> 2) | ((s3 & 13107) << 2));
        short s5 = (short) (((s4 & 43690) >> 1) | ((s4 & 21845) << 1));
        return (short) (i == 12 ? s5 >> 4 : s5 >> 3);
    }

    public static int b(byte[] bArr, int i) {
        return cv7.e(bArr, i);
    }

    public static long c(byte[] bArr, int i) {
        return cv7.g(bArr, i);
    }

    public static short d(byte[] bArr, int i, int i2) {
        return (short) (cv7.h(bArr, i) & i2);
    }

    public static void e(byte[] bArr, int i, long j) {
        bArr[i] = (byte) (j & 255);
        bArr[i + 1] = (byte) ((j >> 8) & 255);
        bArr[i + 2] = (byte) ((j >> 16) & 255);
        bArr[i + 3] = (byte) ((j >> 24) & 255);
        bArr[i + 4] = (byte) ((j >> 32) & 255);
        bArr[i + 5] = (byte) ((j >> 40) & 255);
        bArr[i + 6] = (byte) ((j >> 48) & 255);
        bArr[i + 7] = (byte) ((j >> 56) & 255);
    }
}
