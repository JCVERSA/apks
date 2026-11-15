package com.google.common.primitives;

import defpackage.igb;
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
        for (int i = 0; i < iMin; i++) {
            int iB = igb.b(bArr[i], bArr2[i]);
            if (iB != 0) {
                return iB;
            }
        }
        return bArr.length - bArr2.length;
    }
}
