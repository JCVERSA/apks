package com.facebook.ads.redexgen.core;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class AbstractC2168mU {
    public static int A00(int hashCode) {
        return (int) (((long) Integer.rotateLeft((int) (((long) hashCode) * (-862048943)), 15)) * 461845907);
    }

    public static int A01(int expectedEntries, double loadFactor) {
        int iMax = Math.max(expectedEntries, 2);
        int iHighestOneBit = Integer.highestOneBit(iMax);
        if (iMax > ((int) (((double) iHighestOneBit) * loadFactor))) {
            int tableSize = iHighestOneBit << 1;
            if (tableSize > 0) {
                return tableSize;
            }
            return 1073741824;
        }
        return iHighestOneBit;
    }

    public static int A02(@CheckForNull Object o) {
        return A00(o == null ? 0 : o.hashCode());
    }
}
