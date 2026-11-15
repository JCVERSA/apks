package androidx.media3.exoplayer.audio;

import androidx.media3.common.PlaybackException;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.DefaultOggSeeker;
import java.math.RoundingMode;

public class x0 implements DefaultAudioSink.e {

    protected final int f10933b;

    protected final int f10934c;

    protected final int f10935d;

    protected final int f10936e;

    protected final int f10937f;

    public final int f10938g;

    public final int f10939h;

    public static class a {

        private int f10940a = 250000;

        private int f10941b = 750000;

        private int f10942c = 4;

        private int f10943d = 250000;

        private int f10944e = 50000000;

        private int f10945f = 2;

        private int f10946g = 4;

        public x0 h() {
            return new x0(this);
        }
    }

    protected x0(a aVar) {
        this.f10933b = aVar.f10940a;
        this.f10934c = aVar.f10941b;
        this.f10935d = aVar.f10942c;
        this.f10936e = aVar.f10943d;
        this.f10937f = aVar.f10944e;
        this.f10938g = aVar.f10945f;
        this.f10939h = aVar.f10946g;
    }

    protected static int b(int i10, int i11, int i12) {
        return Ints.d(((((long) i10) * ((long) i11)) * ((long) i12)) / 1000000);
    }

    protected static int d(int i10) {
        if (i10 == 20) {
            return 63750;
        }
        if (i10 == 30) {
            return 2250000;
        }
        switch (i10) {
            case 5:
                return 80000;
            case 6:
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
            default:
                switch (i10) {
                    case 14:
                        return 3062500;
                    case 15:
                        return 8000;
                    case 16:
                        return RecorderConstants.RECORD_ENCODING_BITRATE_256000;
                    case 17:
                        return 336000;
                    case 18:
                        return 768000;
                    default:
                        throw new IllegalArgumentException();
                }
        }
    }

    @Override
    public int a(int i10, int i11, int i12, int i13, int i14, int i15, double d10) {
        return (((Math.max(i10, (int) (((double) c(i10, i11, i12, i13, i14, i15)) * d10)) + i13) - 1) / i13) * i13;
    }

    protected int c(int i10, int i11, int i12, int i13, int i14, int i15) {
        if (i12 == 0) {
            return g(i10, i14, i13);
        }
        if (i12 == 1) {
            return e(i11);
        }
        if (i12 == 2) {
            return f(i11, i15);
        }
        throw new IllegalArgumentException();
    }

    protected int e(int i10) {
        return Ints.d((((long) this.f10937f) * ((long) d(i10))) / 1000000);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0013  */
    /* JADX WARN: Code duplicated, block: B:11:0x001a  */
    protected int f(int i10, int i11) {
        int i12;
        int iD;
        int i13 = this.f10936e;
        if (i10 != 5) {
            if (i10 == 8) {
                i12 = this.f10939h;
            }
            if (i11 != -1) {
                iD = com.google.common.math.d.c(i11, 8, RoundingMode.CEILING);
            } else {
                iD = d(i10);
            }
            return Ints.d((((long) i13) * ((long) iD)) / 1000000);
        }
        i12 = this.f10938g;
        i13 *= i12;
        if (i11 != -1) {
            iD = com.google.common.math.d.c(i11, 8, RoundingMode.CEILING);
        } else {
            iD = d(i10);
        }
        return Ints.d((((long) i13) * ((long) iD)) / 1000000);
    }

    protected int g(int i10, int i11, int i12) {
        return androidx.media3.common.util.a1.p(i10 * this.f10935d, b(this.f10933b, i11, i12), b(this.f10934c, i11, i12));
    }
}
