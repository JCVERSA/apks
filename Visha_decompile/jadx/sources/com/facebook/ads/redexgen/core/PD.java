package com.facebook.ads.redexgen.core;

import com.google.common.primitives.ElementTypesAreNonnullByDefault;

@ElementTypesAreNonnullByDefault
public abstract class PD {
    public static int A00(boolean a, boolean b) {
        if (a == b) {
            return 0;
        }
        return a ? 1 : -1;
    }
}
