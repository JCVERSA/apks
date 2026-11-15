package i9;

import android.support.v4.media.session.PlaybackStateCompat;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import java.util.List;

public final class v {

    public final int f61974a;

    public final int f61975b;

    public final int f61976c;

    public final int f61977d;

    public final int f61978e;

    public final int f61979f;

    public final int f61980g;

    public final int f61981h;

    public final int f61982i;

    public final long f61983j;

    public final a f61984k;

    private final Metadata f61985l;

    public static class a {

        public final long[] f61986a;

        public final long[] f61987b;

        public a(long[] jArr, long[] jArr2) {
            this.f61986a = jArr;
            this.f61987b = jArr2;
        }
    }

    public v(byte[] bArr, int i10) {
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(bArr);
        c0Var.p(i10 * 8);
        this.f61974a = c0Var.h(16);
        this.f61975b = c0Var.h(16);
        this.f61976c = c0Var.h(24);
        this.f61977d = c0Var.h(24);
        int iH = c0Var.h(20);
        this.f61978e = iH;
        this.f61979f = j(iH);
        this.f61980g = c0Var.h(3) + 1;
        int iH2 = c0Var.h(5) + 1;
        this.f61981h = iH2;
        this.f61982i = e(iH2);
        this.f61983j = c0Var.j(36);
        this.f61984k = null;
        this.f61985l = null;
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
        if (i10 != 20) {
            return i10 != 24 ? -1 : 6;
        }
        return 5;
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

    public v a(List list) {
        return new v(this.f61974a, this.f61975b, this.f61976c, this.f61977d, this.f61978e, this.f61980g, this.f61981h, this.f61983j, this.f61984k, h(new Metadata((List<? extends Metadata.Entry>) list)));
    }

    public v b(a aVar) {
        return new v(this.f61974a, this.f61975b, this.f61976c, this.f61977d, this.f61978e, this.f61980g, this.f61981h, this.f61983j, aVar, this.f61985l);
    }

    public v c(List list) {
        return new v(this.f61974a, this.f61975b, this.f61976c, this.f61977d, this.f61978e, this.f61980g, this.f61981h, this.f61983j, this.f61984k, h(h0.c(list)));
    }

    public long d() {
        long j10;
        long j11;
        int i10 = this.f61977d;
        if (i10 > 0) {
            j10 = (((long) i10) + ((long) this.f61976c)) / 2;
            j11 = 1;
        } else {
            int i11 = this.f61974a;
            j10 = ((((i11 != this.f61975b || i11 <= 0) ? PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : i11) * ((long) this.f61980g)) * ((long) this.f61981h)) / 8;
            j11 = 64;
        }
        return j10 + j11;
    }

    public long f() {
        long j10 = this.f61983j;
        return j10 == 0 ? C.TIME_UNSET : (j10 * 1000000) / ((long) this.f61978e);
    }

    public p1 g(byte[] bArr, Metadata metadata) {
        bArr[4] = -128;
        int i10 = this.f61977d;
        if (i10 <= 0) {
            i10 = -1;
        }
        return new p1.b().e0(MimeTypes.AUDIO_FLAC).W(i10).H(this.f61980g).f0(this.f61978e).T(Collections.singletonList(bArr)).X(h(metadata)).E();
    }

    public Metadata h(Metadata metadata) {
        Metadata metadata2 = this.f61985l;
        return metadata2 == null ? metadata : metadata2.copyWithAppendedEntriesFrom(metadata);
    }

    public long i(long j10) {
        return p0.r((j10 * ((long) this.f61978e)) / 1000000, 0L, this.f61983j - 1);
    }

    private v(int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, a aVar, Metadata metadata) {
        this.f61974a = i10;
        this.f61975b = i11;
        this.f61976c = i12;
        this.f61977d = i13;
        this.f61978e = i14;
        this.f61979f = j(i14);
        this.f61980g = i15;
        this.f61981h = i16;
        this.f61982i = e(i16);
        this.f61983j = j10;
        this.f61984k = aVar;
        this.f61985l = metadata;
    }
}
