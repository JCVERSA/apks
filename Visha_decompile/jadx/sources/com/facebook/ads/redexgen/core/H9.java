package com.facebook.ads.redexgen.core;

import androidx.media3.extractor.WavUtil;

public abstract class H9 {
    public static int A00(int i, int i2) {
        switch (i) {
            case 1:
            case WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE:
                return AbstractC06244a.A03(i2);
            case 3:
                return i2 == 32 ? 4 : 0;
            default:
                return 0;
        }
    }
}
