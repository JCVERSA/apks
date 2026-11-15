package com.google.android.exoplayer2.audio;

import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

public abstract class b0 {

    private static final String[] f23922a = {MimeTypes.AUDIO_MPEG_L1, MimeTypes.AUDIO_MPEG_L2, MimeTypes.AUDIO_MPEG};

    private static final int[] f23923b = {RecorderConstants.RECORD_SAMPLE_RATE_44100, 48000, 32000};

    private static final int[] f23924c = {32000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 160000, RecorderConstants.RECORD_ENCODING_BITRATE_192000, 224000, RecorderConstants.RECORD_ENCODING_BITRATE_256000, 288000, RecorderConstants.RECORD_ENCODING_BITRATE_320000, 352000, 384000, 416000, 448000};

    private static final int[] f23925d = {32000, 48000, 56000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 80000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, 112000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 144000, 160000, 176000, RecorderConstants.RECORD_ENCODING_BITRATE_192000, 224000, RecorderConstants.RECORD_ENCODING_BITRATE_256000};

    private static final int[] f23926e = {32000, 48000, 56000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 80000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, 112000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 160000, RecorderConstants.RECORD_ENCODING_BITRATE_192000, 224000, RecorderConstants.RECORD_ENCODING_BITRATE_256000, RecorderConstants.RECORD_ENCODING_BITRATE_320000, 384000};

    private static final int[] f23927f = {32000, 40000, 48000, 56000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 80000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, 112000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 160000, RecorderConstants.RECORD_ENCODING_BITRATE_192000, 224000, RecorderConstants.RECORD_ENCODING_BITRATE_256000, RecorderConstants.RECORD_ENCODING_BITRATE_320000};

    private static final int[] f23928g = {8000, 16000, 24000, 32000, 40000, 48000, 56000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 80000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, 112000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 144000, 160000};

    public static final class a {

        public int f23929a;

        public String f23930b;

        public int f23931c;

        public int f23932d;

        public int f23933e;

        public int f23934f;

        public int f23935g;

        public boolean a(int i10) {
            int i11;
            int i12;
            int i13;
            int i14;
            if (!b0.l(i10) || (i11 = (i10 >>> 19) & 3) == 1 || (i12 = (i10 >>> 17) & 3) == 0 || (i13 = (i10 >>> 12) & 15) == 0 || i13 == 15 || (i14 = (i10 >>> 10) & 3) == 3) {
                return false;
            }
            this.f23929a = i11;
            this.f23930b = b0.f23922a[3 - i12];
            int i15 = b0.f23923b[i14];
            this.f23932d = i15;
            if (i11 == 2) {
                this.f23932d = i15 / 2;
            } else if (i11 == 0) {
                this.f23932d = i15 / 4;
            }
            int i16 = (i10 >>> 9) & 1;
            this.f23935g = b0.k(i11, i12);
            if (i12 == 3) {
                int i17 = i11 == 3 ? b0.f23924c[i13 - 1] : b0.f23925d[i13 - 1];
                this.f23934f = i17;
                this.f23931c = (((i17 * 12) / this.f23932d) + i16) * 4;
            } else {
                if (i11 == 3) {
                    int i18 = i12 == 2 ? b0.f23926e[i13 - 1] : b0.f23927f[i13 - 1];
                    this.f23934f = i18;
                    this.f23931c = ((i18 * 144) / this.f23932d) + i16;
                } else {
                    int i19 = b0.f23928g[i13 - 1];
                    this.f23934f = i19;
                    this.f23931c = (((i12 == 1 ? 72 : 144) * i19) / this.f23932d) + i16;
                }
            }
            this.f23933e = ((i10 >> 6) & 3) == 3 ? 1 : 2;
            return true;
        }
    }

    public static int j(int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        if (!l(i10) || (i11 = (i10 >>> 19) & 3) == 1 || (i12 = (i10 >>> 17) & 3) == 0 || (i13 = (i10 >>> 12) & 15) == 0 || i13 == 15 || (i14 = (i10 >>> 10) & 3) == 3) {
            return -1;
        }
        int i16 = f23923b[i14];
        if (i11 == 2) {
            i16 /= 2;
        } else if (i11 == 0) {
            i16 /= 4;
        }
        int i17 = (i10 >>> 9) & 1;
        if (i12 == 3) {
            return ((((i11 == 3 ? f23924c[i13 - 1] : f23925d[i13 - 1]) * 12) / i16) + i17) * 4;
        }
        if (i11 == 3) {
            i15 = i12 == 2 ? f23926e[i13 - 1] : f23927f[i13 - 1];
        } else {
            i15 = f23928g[i13 - 1];
        }
        if (i11 == 3) {
            return ((i15 * 144) / i16) + i17;
        }
        return (((i12 == 1 ? 72 : 144) * i15) / i16) + i17;
    }

    public static int k(int i10, int i11) {
        if (i11 == 1) {
            return i10 == 3 ? 1152 : 576;
        }
        if (i11 == 2) {
            return 1152;
        }
        if (i11 == 3) {
            return 384;
        }
        throw new IllegalArgumentException();
    }

    public static boolean l(int i10) {
        return (i10 & (-2097152)) == -2097152;
    }

    public static int m(int i10) {
        int i11;
        int i12;
        if (!l(i10) || (i11 = (i10 >>> 19) & 3) == 1 || (i12 = (i10 >>> 17) & 3) == 0) {
            return -1;
        }
        int i13 = (i10 >>> 12) & 15;
        int i14 = (i10 >>> 10) & 3;
        if (i13 == 0 || i13 == 15 || i14 == 3) {
            return -1;
        }
        return k(i11, i12);
    }
}
