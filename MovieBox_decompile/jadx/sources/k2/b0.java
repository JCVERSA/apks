package k2;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.util.a1;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import java.util.List;

public final class b0 {

    public final int f63508a;

    public final int f63509b;

    public final int f63510c;

    public final int f63511d;

    public final int f63512e;

    public final int f63513f;

    public final int f63514g;

    public final int f63515h;

    public final int f63516i;

    public final long f63517j;

    public final a f63518k;

    private final androidx.media3.common.x f63519l;

    public static class a {

        public final long[] f63520a;

        public final long[] f63521b;

        public a(long[] jArr, long[] jArr2) {
            this.f63520a = jArr;
            this.f63521b = jArr2;
        }
    }

    public b0(byte[] bArr, int i10) {
        androidx.media3.common.util.i0 i0Var = new androidx.media3.common.util.i0(bArr);
        i0Var.p(i10 * 8);
        this.f63508a = i0Var.h(16);
        this.f63509b = i0Var.h(16);
        this.f63510c = i0Var.h(24);
        this.f63511d = i0Var.h(24);
        int iH = i0Var.h(20);
        this.f63512e = iH;
        this.f63513f = j(iH);
        this.f63514g = i0Var.h(3) + 1;
        int iH2 = i0Var.h(5) + 1;
        this.f63515h = iH2;
        this.f63516i = e(iH2);
        this.f63517j = i0Var.j(36);
        this.f63518k = null;
        this.f63519l = null;
    }

    private static int e(int i10) {
        if (i10 == 8) {
            return 1;
        }
        if (i10 == 12) {
            return 2;
        }
        if (i10 == 16) {
            return 4;
        }
        if (i10 == 20) {
            return 5;
        }
        if (i10 != 24) {
            return i10 != 32 ? -1 : 7;
        }
        return 6;
    }

    private static int j(int i10) {
        switch (i10) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case RecorderConstants.RECORD_SAMPLE_RATE_22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case RecorderConstants.RECORD_SAMPLE_RATE_44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case RecorderConstants.RECORD_ENCODING_BITRATE_96000:
                return 11;
            case 176400:
                return 2;
            case RecorderConstants.RECORD_ENCODING_BITRATE_192000:
                return 3;
            default:
                return -1;
        }
    }

    public b0 a(List list) {
        return new b0(this.f63508a, this.f63509b, this.f63510c, this.f63511d, this.f63512e, this.f63514g, this.f63515h, this.f63517j, this.f63518k, h(new androidx.media3.common.x(list)));
    }

    public b0 b(a aVar) {
        return new b0(this.f63508a, this.f63509b, this.f63510c, this.f63511d, this.f63512e, this.f63514g, this.f63515h, this.f63517j, aVar, this.f63519l);
    }

    public b0 c(List list) {
        return new b0(this.f63508a, this.f63509b, this.f63510c, this.f63511d, this.f63512e, this.f63514g, this.f63515h, this.f63517j, this.f63518k, h(v0.d(list)));
    }

    public long d() {
        long j10;
        long j11;
        int i10 = this.f63511d;
        if (i10 > 0) {
            j10 = (((long) i10) + ((long) this.f63510c)) / 2;
            j11 = 1;
        } else {
            int i11 = this.f63508a;
            j10 = ((((i11 != this.f63509b || i11 <= 0) ? PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : i11) * ((long) this.f63514g)) * ((long) this.f63515h)) / 8;
            j11 = 64;
        }
        return j10 + j11;
    }

    public long f() {
        long j10 = this.f63517j;
        return j10 == 0 ? C.TIME_UNSET : (j10 * 1000000) / ((long) this.f63512e);
    }

    public androidx.media3.common.r g(byte[] bArr, androidx.media3.common.x xVar) {
        bArr[4] = -128;
        int i10 = this.f63511d;
        if (i10 <= 0) {
            i10 = -1;
        }
        return new androidx.media3.common.r.b().u0(MimeTypes.AUDIO_FLAC).k0(i10).R(this.f63514g).v0(this.f63512e).o0(a1.i0(this.f63515h)).g0(Collections.singletonList(bArr)).n0(h(xVar)).N();
    }

    public androidx.media3.common.x h(androidx.media3.common.x xVar) {
        androidx.media3.common.x xVar2 = this.f63519l;
        return xVar2 == null ? xVar : xVar2.b(xVar);
    }

    public long i(long j10) {
        return a1.q((j10 * ((long) this.f63512e)) / 1000000, 0L, this.f63517j - 1);
    }

    private b0(int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, a aVar, androidx.media3.common.x xVar) {
        this.f63508a = i10;
        this.f63509b = i11;
        this.f63510c = i12;
        this.f63511d = i13;
        this.f63512e = i14;
        this.f63513f = j(i14);
        this.f63514g = i15;
        this.f63515h = i16;
        this.f63516i = e(i16);
        this.f63517j = j10;
        this.f63518k = aVar;
        this.f63519l = xVar;
    }
}
