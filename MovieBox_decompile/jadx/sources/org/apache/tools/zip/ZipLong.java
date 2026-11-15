package org.apache.tools.zip;

public final class ZipLong implements Cloneable {
    private static final int BYTE_1 = 1;
    private static final int BYTE_1_MASK = 65280;
    private static final int BYTE_1_SHIFT = 8;
    private static final int BYTE_2 = 2;
    private static final int BYTE_2_MASK = 16711680;
    private static final int BYTE_2_SHIFT = 16;
    private static final int BYTE_3 = 3;
    private static final long BYTE_3_MASK = 4278190080L;
    private static final int BYTE_3_SHIFT = 24;
    private static final int BYTE_BIT_SIZE = 8;
    private static final int BYTE_MASK = 255;
    private static final int WORD = 4;
    private long value;

    public ZipLong(long j10) {
        this.value = j10;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof ZipLong) && this.value == ((ZipLong) obj).getValue();
    }

    public byte[] getBytes() {
        return getBytes(this.value);
    }

    public long getValue() {
        return this.value;
    }

    public int hashCode() {
        return (int) this.value;
    }

    public static byte[] getBytes(long j10) {
        return new byte[]{(byte) (255 & j10), (byte) ((65280 & j10) >> 8), (byte) ((16711680 & j10) >> 16), (byte) ((j10 & BYTE_3_MASK) >> 24)};
    }

    public static long getValue(byte[] bArr, int i10) {
        return (((long) (bArr[i10 + 3] << 24)) & BYTE_3_MASK) + ((long) ((bArr[i10 + 2] << 16) & BYTE_2_MASK)) + ((long) ((bArr[i10 + 1] << 8) & 65280)) + ((long) (bArr[i10] & 255));
    }

    public ZipLong(byte[] bArr) {
        this(bArr, 0);
    }

    public ZipLong(byte[] bArr, int i10) {
        this.value = getValue(bArr, i10);
    }

    public static long getValue(byte[] bArr) {
        return getValue(bArr, 0);
    }
}
