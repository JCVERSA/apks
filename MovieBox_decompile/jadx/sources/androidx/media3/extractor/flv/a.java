package androidx.media3.extractor.flv;

import androidx.media3.common.r;
import androidx.media3.common.util.j0;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import k2.s0;

final class a extends TagPayloadReader {

    private static final int[] f13090e = {5512, RecorderConstants.RECORD_SAMPLE_RATE_11025, RecorderConstants.RECORD_SAMPLE_RATE_22050, RecorderConstants.RECORD_SAMPLE_RATE_44100};

    private boolean f13091b;

    private boolean f13092c;

    private int f13093d;

    public a(s0 s0Var) {
        super(s0Var);
    }

    @Override
    protected boolean b(j0 j0Var) throws TagPayloadReader.UnsupportedFormatException {
        if (this.f13091b) {
            j0Var.X(1);
        } else {
            int iH = j0Var.H();
            int i10 = (iH >> 4) & 15;
            this.f13093d = i10;
            if (i10 == 2) {
                this.f13089a.d(new r.b().U("video/x-flv").u0(MimeTypes.AUDIO_MPEG).R(1).v0(f13090e[(iH >> 2) & 3]).N());
                this.f13092c = true;
            } else if (i10 == 7 || i10 == 8) {
                this.f13089a.d(new r.b().U("video/x-flv").u0(i10 == 7 ? MimeTypes.AUDIO_ALAW : MimeTypes.AUDIO_MLAW).R(1).v0(8000).N());
                this.f13092c = true;
            } else if (i10 != 10) {
                throw new TagPayloadReader.UnsupportedFormatException("Audio format not supported: " + this.f13093d);
            }
            this.f13091b = true;
        }
        return true;
    }

    @Override
    protected boolean c(j0 j0Var, long j10) {
        if (this.f13093d == 2) {
            int iA = j0Var.a();
            this.f13089a.c(j0Var, iA);
            this.f13089a.b(j10, 1, iA, 0, null);
            return true;
        }
        int iH = j0Var.H();
        if (iH != 0 || this.f13092c) {
            if (this.f13093d == 10 && iH != 1) {
                return false;
            }
            int iA2 = j0Var.a();
            this.f13089a.c(j0Var, iA2);
            this.f13089a.b(j10, 1, iA2, 0, null);
            return true;
        }
        int iA3 = j0Var.a();
        byte[] bArr = new byte[iA3];
        j0Var.l(bArr, 0, iA3);
        k2.a.b bVarE = k2.a.e(bArr);
        this.f13089a.d(new r.b().U("video/x-flv").u0(MimeTypes.AUDIO_AAC).S(bVarE.f63492c).R(bVarE.f63491b).v0(bVarE.f63490a).g0(Collections.singletonList(bArr)).N());
        this.f13092c = true;
        return false;
    }
}
