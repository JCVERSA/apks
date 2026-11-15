package com.google.android.exoplayer2.audio;

import androidx.media3.common.PlaybackException;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.google.android.exoplayer2.util.p0;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.DefaultOggSeeker;

public class x implements DefaultAudioSink.c {

    protected final int f24093b;

    protected final int f24094c;

    protected final int f24095d;

    protected final int f24096e;

    protected final int f24097f;

    public final int f24098g;

    public static class a {

        private int f24099a = 250000;

        private int f24100b = 750000;

        private int f24101c = 4;

        private int f24102d = 250000;

        private int f24103e = 50000000;

        private int f24104f = 2;

        public x g() {
            return new x(this);
        }
    }

    protected x(a aVar) {
        this.f24093b = aVar.f24099a;
        this.f24094c = aVar.f24100b;
        this.f24095d = aVar.f24101c;
        this.f24096e = aVar.f24102d;
        this.f24097f = aVar.f24103e;
        this.f24098g = aVar.f24104f;
    }

    protected static int b(int i10, int i11, int i12) {
        return Ints.d(((((long) i10) * ((long) i11)) * ((long) i12)) / 1000000);
    }

    protected static int d(int i10) {
        switch (i10) {
            case 5:
                return 80000;
            case 6:
            case 18:
                return 768000;
            case 7:
                return RecorderConstants.RECORD_ENCODING_BITRATE_192000;
            case 8:
                return 2250000;
            case 9:
                return 40000;
            case 10:
                return DefaultOggSeeker.MATCH_BYTE_RANGE;
            case 11:
                return 16000;
            case 12:
                return PlaybackException.ERROR_CODE_VIDEO_FRAME_PROCESSOR_INIT_FAILED;
            case 13:
            default:
                throw new IllegalArgumentException();
            case 14:
                return 3062500;
            case 15:
                return 8000;
            case 16:
                return RecorderConstants.RECORD_ENCODING_BITRATE_256000;
            case 17:
                return 336000;
        }
    }

    @Override
    public int a(int i10, int i11, int i12, int i13, int i14, double d10) {
        return (((Math.max(i10, (int) (((double) c(i10, i11, i12, i13, i14)) * d10)) + i13) - 1) / i13) * i13;
    }

    protected int c(int i10, int i11, int i12, int i13, int i14) {
        if (i12 == 0) {
            return g(i10, i14, i13);
        }
        if (i12 == 1) {
            return e(i11);
        }
        if (i12 == 2) {
            return f(i11);
        }
        throw new IllegalArgumentException();
    }

    protected int e(int i10) {
        return Ints.d((((long) this.f24097f) * ((long) d(i10))) / 1000000);
    }

    protected int f(int i10) {
        int i11 = this.f24096e;
        if (i10 == 5) {
            i11 *= this.f24098g;
        }
        return Ints.d((((long) i11) * ((long) d(i10))) / 1000000);
    }

    protected int g(int i10, int i11, int i12) {
        return p0.q(i10 * this.f24095d, b(this.f24093b, i11, i12), b(this.f24094c, i11, i12));
    }
}
