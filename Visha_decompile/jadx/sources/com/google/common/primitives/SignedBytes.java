package com.google.common.primitives;

import defpackage.xd8;
import java.util.Comparator;

public abstract class SignedBytes {

    public enum LexicographicalComparator implements Comparator<byte[]> {
        INSTANCE;

        @Override
        public String toString() {
            return "SignedBytes.lexicographicalComparator()";
        }

        @Override
        public int compare(byte[] bArr, byte[] bArr2) {
            int iMin = Math.min(bArr.length, bArr2.length);
            for (int i = 0; i < iMin; i++) {
                int iCompare = Byte.compare(bArr[i], bArr2[i]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return bArr.length - bArr2.length;
        }
    }

    public static byte a(long j) {
        byte b = (byte) j;
        xd8.h(((long) b) == j, "Out of range: %s", j);
        return b;
    }
}
