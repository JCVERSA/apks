package defpackage;

import com.google.android.exoplayer2.k;

public interface ks8 {
    static int create(int i) {
        return create(i, 0, 0);
    }

    static int getAdaptiveSupport(int i) {
        return i & 24;
    }

    static int getDecoderSupport(int i) {
        return i & 128;
    }

    static int getFormatSupport(int i) {
        return i & 7;
    }

    static int getHardwareAccelerationSupport(int i) {
        return i & 64;
    }

    static int getTunnelingSupport(int i) {
        return i & 32;
    }

    int a(k kVar);

    String getName();

    int getTrackType();

    int supportsMixedMimeTypeAdaptation();

    static int create(int i, int i2, int i3) {
        return create(i, i2, i3, 0, 128);
    }

    static int create(int i, int i2, int i3, int i4, int i5) {
        return i | i2 | i3 | i4 | i5;
    }
}
