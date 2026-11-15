package org.apache.commons.compress.archivers.zip;

import java.io.Serializable;

public final class ZipLong implements Cloneable, Serializable {
    private static final long serialVersionUID = 1;
    private final long value;
    public static final ZipLong CFH_SIG = new ZipLong(33639248L);
    public static final ZipLong LFH_SIG = new ZipLong(67324752L);
    public static final ZipLong DD_SIG = new ZipLong(134695760L);
    static final ZipLong ZIP64_MAGIC = new ZipLong(4294967295L);
    public static final ZipLong SINGLE_SEGMENT_SPLIT_MARKER = new ZipLong(808471376L);
    public static final ZipLong AED_SIG = new ZipLong(134630224L);

    public ZipLong(long j10) {
        this.value = j10;
    }

    public static void putLong(long j10, byte[] bArr, int i10) {
        ez.b.c(bArr, j10, i10, 4);
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof ZipLong) && this.value == ((ZipLong) obj).getValue();
    }

    public byte[] getBytes() {
        return getBytes(this.value);
    }

    public int getIntValue() {
        return (int) this.value;
    }

    public long getValue() {
        return this.value;
    }

    public int hashCode() {
        return (int) this.value;
    }

    public String toString() {
        return "ZipLong value: " + this.value;
    }

    public static byte[] getBytes(long j10) {
        byte[] bArr = new byte[4];
        putLong(j10, bArr, 0);
        return bArr;
    }

    public static long getValue(byte[] bArr, int i10) {
        return ez.b.b(bArr, i10, 4);
    }

    public void putLong(byte[] bArr, int i10) {
        putLong(this.value, bArr, i10);
    }

    public ZipLong(int i10) {
        this.value = i10;
    }

    public static long getValue(byte[] bArr) {
        return getValue(bArr, 0);
    }

    public ZipLong(byte[] bArr) {
        this(bArr, 0);
    }

    public ZipLong(byte[] bArr, int i10) {
        this.value = getValue(bArr, i10);
    }
}
