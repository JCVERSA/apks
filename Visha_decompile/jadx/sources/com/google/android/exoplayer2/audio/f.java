package com.google.android.exoplayer2.audio;

import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.MpegAudioUtil;
import com.google.common.primitives.Ints;
import defpackage.blb;

public class f implements DefaultAudioSink.c {
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;

    public static class a {
        public int a = 250000;
        public int b = 750000;
        public int c = 4;
        public int d = 250000;
        public int e = 50000000;
        public int f = 2;

        public f g() {
            return new f(this);
        }
    }

    public f(a aVar) {
        this.b = aVar.a;
        this.c = aVar.b;
        this.d = aVar.c;
        this.e = aVar.d;
        this.f = aVar.e;
        this.g = aVar.f;
    }

    public static int b(int i, int i2, int i3) {
        return Ints.d(((((long) i) * ((long) i2)) * ((long) i3)) / 1000000);
    }

    public static int d(int i) {
        switch (i) {
            case 5:
                return Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND;
            case 6:
            case 18:
                return 768000;
            case 7:
                return DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND;
            case 8:
                return DtsUtil.DTS_HD_MAX_RATE_BYTES_PER_SECOND;
            case 9:
                return MpegAudioUtil.MAX_RATE_BYTES_PER_SECOND;
            case 10:
                return AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND;
            case 11:
                return AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND;
            case 12:
                return 7000;
            case 13:
            default:
                throw new IllegalArgumentException();
            case 14:
                return Ac3Util.TRUEHD_MAX_RATE_BYTES_PER_SECOND;
            case 15:
                return 8000;
            case 16:
                return AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND;
            case 17:
                return Ac4Util.MAX_RATE_BYTES_PER_SECOND;
        }
    }

    @Override
    public int a(int i, int i2, int i3, int i4, int i5, double d) {
        return (((Math.max(i, (int) (((double) c(i, i2, i3, i4, i5)) * d)) + i4) - 1) / i4) * i4;
    }

    public int c(int i, int i2, int i3, int i4, int i5) {
        if (i3 == 0) {
            return g(i, i5, i4);
        }
        if (i3 == 1) {
            return e(i2);
        }
        if (i3 == 2) {
            return f(i2);
        }
        throw new IllegalArgumentException();
    }

    public int e(int i) {
        return Ints.d((((long) this.f) * ((long) d(i))) / 1000000);
    }

    public int f(int i) {
        int i2 = this.e;
        if (i == 5) {
            i2 *= this.g;
        }
        return Ints.d((((long) i2) * ((long) d(i))) / 1000000);
    }

    public int g(int i, int i2, int i3) {
        return blb.p(i * this.d, b(this.b, i2, i3), b(this.c, i2, i3));
    }
}
