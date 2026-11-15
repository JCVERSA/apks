package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.p0;

public abstract class i0 {
    public static int a(int i10, int i11) {
        if (i10 != 1) {
            if (i10 == 3) {
                return i11 == 32 ? 4 : 0;
            }
            if (i10 != 65534) {
                return 0;
            }
        }
        return p0.c0(i11);
    }
}
