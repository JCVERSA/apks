package org.apache.tools.zip;

public final class ZipShort implements Cloneable {
    private static final int BYTE_1_MASK = 65280;
    private static final int BYTE_1_SHIFT = 8;
    private static final int BYTE_MASK = 255;
    private int value;

    public ZipShort(int i10) {
        this.value = i10;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof ZipShort) && this.value == ((ZipShort) obj).getValue();
    }

    public byte[] getBytes() {
        int i10 = this.value;
        return new byte[]{(byte) (i10 & 255), (byte) ((i10 & 65280) >> 8)};
    }

    public int getValue() {
        return this.value;
    }

    public int hashCode() {
        return this.value;
    }

    public static int getValue(byte[] bArr, int i10) {
        return ((bArr[i10 + 1] << 8) & 65280) + (bArr[i10] & 255);
    }

    public ZipShort(byte[] bArr) {
        this(bArr, 0);
    }

    public static byte[] getBytes(int i10) {
        return new byte[]{(byte) (i10 & 255), (byte) ((i10 & 65280) >> 8)};
    }

    public ZipShort(byte[] bArr, int i10) {
        this.value = getValue(bArr, i10);
    }

    public static int getValue(byte[] bArr) {
        return getValue(bArr, 0);
    }
}
