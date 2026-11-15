package org.apache.commons.compress.archivers.zip;

import java.io.Serializable;

public final class ZipShort implements Cloneable, Serializable {
    public static final ZipShort ZERO = new ZipShort(0);
    private static final long serialVersionUID = 1;
    private final int value;

    public ZipShort(int i10) {
        this.value = i10;
    }

    public static void putShort(int i10, byte[] bArr, int i11) {
        ez.b.c(bArr, i10, i11, 2);
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof ZipShort) && this.value == ((ZipShort) obj).getValue();
    }

    public byte[] getBytes() {
        byte[] bArr = new byte[2];
        ez.b.c(bArr, this.value, 0, 2);
        return bArr;
    }

    public int getValue() {
        return this.value;
    }

    public int hashCode() {
        return this.value;
    }

    public String toString() {
        return "ZipShort value: " + this.value;
    }

    public static int getValue(byte[] bArr, int i10) {
        return (int) ez.b.b(bArr, i10, 2);
    }

    public ZipShort(byte[] bArr) {
        this(bArr, 0);
    }

    public static byte[] getBytes(int i10) {
        byte[] bArr = new byte[2];
        putShort(i10, bArr, 0);
        return bArr;
    }

    public static int getValue(byte[] bArr) {
        return getValue(bArr, 0);
    }

    public ZipShort(byte[] bArr, int i10) {
        this.value = getValue(bArr, i10);
    }
}
