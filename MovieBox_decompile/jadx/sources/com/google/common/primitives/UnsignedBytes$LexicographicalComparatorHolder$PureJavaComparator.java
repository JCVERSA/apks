package com.google.common.primitives;

import java.util.Comparator;

enum UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator implements Comparator<byte[]> {
    INSTANCE;

    @Override
    public String toString() {
        return "UnsignedBytes.lexicographicalComparator() (pure Java version)";
    }

    @Override
    public int compare(byte[] bArr, byte[] bArr2) {
        int iMin = Math.min(bArr.length, bArr2.length);
        for (int i10 = 0; i10 < iMin; i10++) {
            int iB = f.b(bArr[i10], bArr2[i10]);
            if (iB != 0) {
                return iB;
            }
        }
        return bArr.length - bArr2.length;
    }
}
