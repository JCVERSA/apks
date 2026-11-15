package com.google.common.hash;

import com.google.common.base.m;
import com.google.common.primitives.Ints;
import com.google.common.primitives.UnsignedInts;
import java.io.Serializable;

public abstract class HashCode {

    private static final char[] f30041a = "0123456789abcdef".toCharArray();

    private static final class BytesHashCode extends HashCode implements Serializable {
        private static final long serialVersionUID = 0;
        final byte[] bytes;

        BytesHashCode(byte[] bArr) {
            this.bytes = (byte[]) m.o(bArr);
        }

        @Override
        public byte[] asBytes() {
            return (byte[]) this.bytes.clone();
        }

        @Override
        public int asInt() {
            byte[] bArr = this.bytes;
            m.w(bArr.length >= 4, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", bArr.length);
            byte[] bArr2 = this.bytes;
            return ((bArr2[3] & 255) << 24) | (bArr2[0] & 255) | ((bArr2[1] & 255) << 8) | ((bArr2[2] & 255) << 16);
        }

        @Override
        public long asLong() {
            byte[] bArr = this.bytes;
            m.w(bArr.length >= 8, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes).", bArr.length);
            return padToLong();
        }

        @Override
        public int bits() {
            return this.bytes.length * 8;
        }

        @Override
        boolean equalsSameBits(HashCode hashCode) {
            if (this.bytes.length != hashCode.getBytesInternal().length) {
                return false;
            }
            boolean z10 = true;
            int i10 = 0;
            while (true) {
                byte[] bArr = this.bytes;
                if (i10 >= bArr.length) {
                    return z10;
                }
                z10 &= bArr[i10] == hashCode.getBytesInternal()[i10];
                i10++;
            }
        }

        @Override
        byte[] getBytesInternal() {
            return this.bytes;
        }

        public long padToLong() {
            long j10 = this.bytes[0] & 255;
            for (int i10 = 1; i10 < Math.min(this.bytes.length, 8); i10++) {
                j10 |= (((long) this.bytes[i10]) & 255) << (i10 * 8);
            }
            return j10;
        }

        @Override
        void writeBytesToImpl(byte[] bArr, int i10, int i11) {
            System.arraycopy(this.bytes, 0, bArr, i10, i11);
        }
    }

    private static final class IntHashCode extends HashCode implements Serializable {
        private static final long serialVersionUID = 0;
        final int hash;

        IntHashCode(int i10) {
            this.hash = i10;
        }

        @Override
        public byte[] asBytes() {
            int i10 = this.hash;
            return new byte[]{(byte) i10, (byte) (i10 >> 8), (byte) (i10 >> 16), (byte) (i10 >> 24)};
        }

        @Override
        public int asInt() {
            return this.hash;
        }

        @Override
        public long asLong() {
            throw new IllegalStateException("this HashCode only has 32 bits; cannot create a long");
        }

        @Override
        public int bits() {
            return 32;
        }

        @Override
        boolean equalsSameBits(HashCode hashCode) {
            return this.hash == hashCode.asInt();
        }

        public long padToLong() {
            return UnsignedInts.f(this.hash);
        }

        @Override
        void writeBytesToImpl(byte[] bArr, int i10, int i11) {
            for (int i12 = 0; i12 < i11; i12++) {
                bArr[i10 + i12] = (byte) (this.hash >> (i12 * 8));
            }
        }
    }

    private static final class LongHashCode extends HashCode implements Serializable {
        private static final long serialVersionUID = 0;
        final long hash;

        LongHashCode(long j10) {
            this.hash = j10;
        }

        @Override
        public byte[] asBytes() {
            long j10 = this.hash;
            return new byte[]{(byte) j10, (byte) (j10 >> 8), (byte) (j10 >> 16), (byte) (j10 >> 24), (byte) (j10 >> 32), (byte) (j10 >> 40), (byte) (j10 >> 48), (byte) (j10 >> 56)};
        }

        @Override
        public int asInt() {
            return (int) this.hash;
        }

        @Override
        public long asLong() {
            return this.hash;
        }

        @Override
        public int bits() {
            return 64;
        }

        @Override
        boolean equalsSameBits(HashCode hashCode) {
            return this.hash == hashCode.asLong();
        }

        public long padToLong() {
            return this.hash;
        }

        @Override
        void writeBytesToImpl(byte[] bArr, int i10, int i11) {
            for (int i12 = 0; i12 < i11; i12++) {
                bArr[i10 + i12] = (byte) (this.hash >> (i12 * 8));
            }
        }
    }

    HashCode() {
    }

    private static int a(char c10) {
        if (c10 >= '0' && c10 <= '9') {
            return c10 - '0';
        }
        if (c10 >= 'a' && c10 <= 'f') {
            return c10 - 'W';
        }
        throw new IllegalArgumentException("Illegal hexadecimal character: " + c10);
    }

    public static HashCode fromBytes(byte[] bArr) {
        m.e(bArr.length >= 1, "A HashCode must contain at least 1 byte.");
        return fromBytesNoCopy((byte[]) bArr.clone());
    }

    static HashCode fromBytesNoCopy(byte[] bArr) {
        return new BytesHashCode(bArr);
    }

    public static HashCode fromInt(int i10) {
        return new IntHashCode(i10);
    }

    public static HashCode fromLong(long j10) {
        return new LongHashCode(j10);
    }

    public static HashCode fromString(String str) {
        m.j(str.length() >= 2, "input string (%s) must have at least 2 characters", str);
        m.j(str.length() % 2 == 0, "input string (%s) must have an even number of characters", str);
        byte[] bArr = new byte[str.length() / 2];
        for (int i10 = 0; i10 < str.length(); i10 += 2) {
            bArr[i10 / 2] = (byte) ((a(str.charAt(i10)) << 4) + a(str.charAt(i10 + 1)));
        }
        return fromBytesNoCopy(bArr);
    }

    public abstract byte[] asBytes();

    public abstract int asInt();

    public abstract long asLong();

    public abstract int bits();

    public final boolean equals(Object obj) {
        if (!(obj instanceof HashCode)) {
            return false;
        }
        HashCode hashCode = (HashCode) obj;
        return bits() == hashCode.bits() && equalsSameBits(hashCode);
    }

    abstract boolean equalsSameBits(HashCode hashCode);

    byte[] getBytesInternal() {
        return asBytes();
    }

    public final int hashCode() {
        if (bits() >= 32) {
            return asInt();
        }
        byte[] bytesInternal = getBytesInternal();
        int i10 = bytesInternal[0] & 255;
        for (int i11 = 1; i11 < bytesInternal.length; i11++) {
            i10 |= (bytesInternal[i11] & 255) << (i11 * 8);
        }
        return i10;
    }

    public final String toString() {
        byte[] bytesInternal = getBytesInternal();
        StringBuilder sb2 = new StringBuilder(bytesInternal.length * 2);
        for (byte b10 : bytesInternal) {
            char[] cArr = f30041a;
            sb2.append(cArr[(b10 >> 4) & 15]);
            sb2.append(cArr[b10 & 15]);
        }
        return sb2.toString();
    }

    public int writeBytesTo(byte[] bArr, int i10, int i11) {
        int iM = Ints.m(i11, bits() / 8);
        m.t(i10, i10 + iM, bArr.length);
        writeBytesToImpl(bArr, i10, iM);
        return iM;
    }

    abstract void writeBytesToImpl(byte[] bArr, int i10, int i11);
}
