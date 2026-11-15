package k2;

import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

public abstract class i0 {

    private static final String[] f63606a = {MimeTypes.AUDIO_MPEG_L1, MimeTypes.AUDIO_MPEG_L2, MimeTypes.AUDIO_MPEG};

    private static final int[] f63607b = {RecorderConstants.RECORD_SAMPLE_RATE_44100, 48000, 32000};

    private static final int[] f63608c = {32000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 160000, RecorderConstants.RECORD_ENCODING_BITRATE_192000, 224000, RecorderConstants.RECORD_ENCODING_BITRATE_256000, 288000, RecorderConstants.RECORD_ENCODING_BITRATE_320000, 352000, 384000, 416000, 448000};

    private static final int[] f63609d = {32000, 48000, 56000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 80000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, 112000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 144000, 160000, 176000, RecorderConstants.RECORD_ENCODING_BITRATE_192000, 224000, RecorderConstants.RECORD_ENCODING_BITRATE_256000};

    private static final int[] f63610e = {32000, 48000, 56000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 80000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, 112000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 160000, RecorderConstants.RECORD_ENCODING_BITRATE_192000, 224000, RecorderConstants.RECORD_ENCODING_BITRATE_256000, RecorderConstants.RECORD_ENCODING_BITRATE_320000, 384000};

    private static final int[] f63611f = {32000, 40000, 48000, 56000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 80000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, 112000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 160000, RecorderConstants.RECORD_ENCODING_BITRATE_192000, 224000, RecorderConstants.RECORD_ENCODING_BITRATE_256000, RecorderConstants.RECORD_ENCODING_BITRATE_320000};

    private static final int[] f63612g = {8000, 16000, 24000, 32000, 40000, 48000, 56000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 80000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, 112000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 144000, 160000};

    public static final class a {

        public int f63613a;

        public String f63614b;

        public int f63615c;

        public int f63616d;

        public int f63617e;

        public int f63618f;

        public int f63619g;

        public a() {
        }

        public boolean a(int i10) {
            int i11;
            int i12;
            int i13;
            int i14;
            if (!i0.l(i10) || (i11 = (i10 >>> 19) & 3) == 1 || (i12 = (i10 >>> 17) & 3) == 0 || (i13 = (i10 >>> 12) & 15) == 0 || i13 == 15 || (i14 = (i10 >>> 10) & 3) == 3) {
                return false;
            }
            this.f63613a = i11;
            this.f63614b = i0.f63606a[3 - i12];
            int i15 = i0.f63607b[i14];
            this.f63616d = i15;
            if (i11 == 2) {
                this.f63616d = i15 / 2;
            } else if (i11 == 0) {
                this.f63616d = i15 / 4;
            }
            int i16 = (i10 >>> 9) & 1;
            this.f63619g = i0.k(i11, i12);
            if (i12 == 3) {
                int i17 = i11 == 3 ? i0.f63608c[i13 - 1] : i0.f63609d[i13 - 1];
                this.f63618f = i17;
                this.f63615c = (((i17 * 12) / this.f63616d) + i16) * 4;
            } else {
                if (i11 == 3) {
                    int i18 = i12 == 2 ? i0.f63610e[i13 - 1] : i0.f63611f[i13 - 1];
                    this.f63618f = i18;
                    this.f63615c = ((i18 * 144) / this.f63616d) + i16;
                } else {
                    int i19 = i0.f63612g[i13 - 1];
                    this.f63618f = i19;
                    this.f63615c = (((i12 == 1 ? 72 : 144) * i19) / this.f63616d) + i16;
                }
            }
            this.f63617e = ((i10 >> 6) & 3) == 3 ? 1 : 2;
            return true;
        }

        public a(a aVar) {
            this.f63613a = aVar.f63613a;
            this.f63614b = aVar.f63614b;
            this.f63615c = aVar.f63615c;
            this.f63616d = aVar.f63616d;
            this.f63617e = aVar.f63617e;
            this.f63618f = aVar.f63618f;
            this.f63619g = aVar.f63619g;
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
        int i16 = f63607b[i14];
        if (i11 == 2) {
            i16 /= 2;
        } else if (i11 == 0) {
            i16 /= 4;
        }
        int i17 = (i10 >>> 9) & 1;
        if (i12 == 3) {
            return ((((i11 == 3 ? f63608c[i13 - 1] : f63609d[i13 - 1]) * 12) / i16) + i17) * 4;
        }
        if (i11 == 3) {
            i15 = i12 == 2 ? f63610e[i13 - 1] : f63611f[i13 - 1];
        } else {
            i15 = f63612g[i13 - 1];
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
