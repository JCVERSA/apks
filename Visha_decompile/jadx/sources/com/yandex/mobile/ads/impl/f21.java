package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.OpusUtil;

public final class f21 {
    private static final String[] a = {MimeTypes.AUDIO_MPEG_L1, MimeTypes.AUDIO_MPEG_L2, "audio/mpeg"};
    private static final int[] b = {44100, OpusUtil.SAMPLE_RATE, 32000};
    private static final int[] c = {32000, 64000, 96000, 128000, 160000, DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND, 224000, AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND, 288000, 320000, 352000, 384000, 416000, 448000};
    private static final int[] d = {32000, OpusUtil.SAMPLE_RATE, 56000, 64000, Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 96000, 112000, 128000, 144000, 160000, 176000, DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND, 224000, AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND};
    private static final int[] e = {32000, OpusUtil.SAMPLE_RATE, 56000, 64000, Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 96000, 112000, 128000, 160000, DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND, 224000, AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND, 320000, 384000};
    private static final int[] f = {32000, MpegAudioUtil.MAX_RATE_BYTES_PER_SECOND, OpusUtil.SAMPLE_RATE, 56000, 64000, Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 96000, 112000, 128000, 160000, DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND, 224000, AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND, 320000};
    private static final int[] g = {8000, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND, 24000, 32000, MpegAudioUtil.MAX_RATE_BYTES_PER_SECOND, OpusUtil.SAMPLE_RATE, 56000, 64000, Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 96000, 112000, 128000, 144000, 160000};

    public static final class a {
        public int a;

        @Nullable
        public String b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;

        /* JADX WARN: Code duplicated, block: B:30:0x005b  */
        public final boolean a(int i) {
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
                return false;
            }
            this.a = i2;
            this.b = f21.a[3 - i3];
            int i7 = f21.b[i5];
            this.d = i7;
            if (i2 == 2) {
                this.d = i7 / 2;
            } else if (i2 == 0) {
                this.d = i7 / 4;
            }
            int i8 = (i >>> 9) & 1;
            if (i3 != 1) {
                if (i3 == 2) {
                    i6 = 1152;
                } else {
                    if (i3 != 3) {
                        throw new IllegalArgumentException();
                    }
                    i6 = RendererCapabilities.DECODER_SUPPORT_MASK;
                }
            } else if (i2 == 3) {
                i6 = 1152;
            } else {
                i6 = 576;
            }
            this.g = i6;
            if (i3 == 3) {
                int i9 = i2 == 3 ? f21.c[i4 - 1] : f21.d[i4 - 1];
                this.f = i9;
                this.c = (((i9 * 12) / this.d) + i8) * 4;
            } else {
                if (i2 == 3) {
                    int i10 = i3 == 2 ? f21.e[i4 - 1] : f21.f[i4 - 1];
                    this.f = i10;
                    this.c = ((i10 * 144) / this.d) + i8;
                } else {
                    int i11 = f21.g[i4 - 1];
                    this.f = i11;
                    this.c = (((i3 == 1 ? 72 : 144) * i11) / this.d) + i8;
                }
            }
            this.e = ((i >> 6) & 3) == 3 ? 1 : 2;
            return true;
        }
    }

    public static int a(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return -1;
        }
        int i7 = b[i5];
        if (i2 == 2) {
            i7 /= 2;
        } else if (i2 == 0) {
            i7 /= 4;
        }
        int i8 = (i >>> 9) & 1;
        if (i3 == 3) {
            return ((((i2 == 3 ? c[i4 - 1] : d[i4 - 1]) * 12) / i7) + i8) * 4;
        }
        if (i2 == 3) {
            i6 = i3 == 2 ? e[i4 - 1] : f[i4 - 1];
        } else {
            i6 = g[i4 - 1];
        }
        if (i2 == 3) {
            return ((i6 * 144) / i7) + i8;
        }
        return (((i3 == 1 ? 72 : 144) * i6) / i7) + i8;
    }

    public static int b(int i) {
        int i2;
        int i3;
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0) {
            return -1;
        }
        int i4 = (i >>> 12) & 15;
        int i5 = (i >>> 10) & 3;
        if (i4 != 0 && i4 != 15 && i5 != 3) {
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 == 3) {
                        return RendererCapabilities.DECODER_SUPPORT_MASK;
                    }
                    throw new IllegalArgumentException();
                }
            } else if (i2 != 3) {
                return 576;
            }
            return 1152;
        }
        return -1;
    }
}
