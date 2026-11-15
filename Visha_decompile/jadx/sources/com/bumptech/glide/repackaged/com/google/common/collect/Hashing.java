package com.bumptech.glide.repackaged.com.google.common.collect;

import androidx.collection.ScatterMapKt;

final class Hashing {
    private static int MAX_TABLE_SIZE = 1073741824;

    public static int closedTableSize(int i, double d) {
        int iMax = Math.max(i, 2);
        int iHighestOneBit = Integer.highestOneBit(iMax);
        if (iMax <= ((int) (d * ((double) iHighestOneBit)))) {
            return iHighestOneBit;
        }
        int i2 = iHighestOneBit << 1;
        return i2 > 0 ? i2 : MAX_TABLE_SIZE;
    }

    public static int smear(int i) {
        return Integer.rotateLeft(i * ScatterMapKt.MurmurHashC1, 15) * 461845907;
    }

    public static int smearedHash(Object obj) {
        return smear(obj == null ? 0 : obj.hashCode());
    }
}
