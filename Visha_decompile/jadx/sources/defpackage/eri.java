package defpackage;

import java.util.Arrays;

public final class eri {
    public final byte[] a;

    public eri(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.a = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i2);
    }

    public static eri b(byte[] bArr) {
        if (bArr != null) {
            return c(bArr, 0, bArr.length);
        }
        throw new NullPointerException("data must be non-null");
    }

    public static eri c(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new NullPointerException("data must be non-null");
        }
        int length = bArr.length;
        if (i2 > length) {
            i2 = length;
        }
        return new eri(bArr, 0, i2);
    }

    public final int a() {
        return this.a.length;
    }

    public final byte[] d() {
        byte[] bArr = this.a;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof eri) {
            return Arrays.equals(((eri) obj).a, this.a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.a);
    }

    public final String toString() {
        byte[] bArr = this.a;
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (byte b : bArr) {
            sb.append("0123456789abcdef".charAt((b & 255) >> 4));
            sb.append("0123456789abcdef".charAt(b & 15));
        }
        return "Bytes(" + sb.toString() + ")";
    }
}
