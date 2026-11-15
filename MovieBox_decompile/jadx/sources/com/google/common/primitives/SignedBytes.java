package com.google.common.primitives;

import com.google.common.base.m;
import java.util.Comparator;

public abstract class SignedBytes {

    private enum LexicographicalComparator implements Comparator<byte[]> {
        INSTANCE;

        @Override
        public String toString() {
            return "SignedBytes.lexicographicalComparator()";
        }

        @Override
        public int compare(byte[] bArr, byte[] bArr2) {
            int iMin = Math.min(bArr.length, bArr2.length);
            for (int i10 = 0; i10 < iMin; i10++) {
                int iCompare = Byte.compare(bArr[i10], bArr2[i10]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return bArr.length - bArr2.length;
        }
    }

    public static byte a(long j10) {
        byte b10 = (byte) j10;
        m.h(((long) b10) == j10, "Out of range: %s", j10);
        return b10;
    }
}
