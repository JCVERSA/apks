package defpackage;

public abstract class igb {
    public static byte a(long j) {
        xd8.h((j >> 8) == 0, "out of range: %s", j);
        return (byte) j;
    }

    public static int b(byte b, byte b2) {
        return c(b) - c(b2);
    }

    public static int c(byte b) {
        return b & 255;
    }
}
