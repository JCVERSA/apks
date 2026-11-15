package com.google.android.exoplayer2.extractor.flv;

import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import i9.e0;
import java.util.Collections;

final class a extends TagPayloadReader {

    private static final int[] f24387e = {5512, RecorderConstants.RECORD_SAMPLE_RATE_11025, RecorderConstants.RECORD_SAMPLE_RATE_22050, RecorderConstants.RECORD_SAMPLE_RATE_44100};

    private boolean f24388b;

    private boolean f24389c;

    private int f24390d;

    public a(e0 e0Var) {
        super(e0Var);
    }

    @Override
    protected boolean b(d0 d0Var) throws TagPayloadReader.UnsupportedFormatException {
        if (this.f24388b) {
            d0Var.Q(1);
        } else {
            int iD = d0Var.D();
            int i10 = (iD >> 4) & 15;
            this.f24390d = i10;
            if (i10 == 2) {
                this.f24386a.d(new p1.b().e0(MimeTypes.AUDIO_MPEG).H(1).f0(f24387e[(iD >> 2) & 3]).E());
                this.f24389c = true;
            } else if (i10 == 7 || i10 == 8) {
                this.f24386a.d(new p1.b().e0(i10 == 7 ? MimeTypes.AUDIO_ALAW : MimeTypes.AUDIO_MLAW).H(1).f0(8000).E());
                this.f24389c = true;
            } else if (i10 != 10) {
                throw new TagPayloadReader.UnsupportedFormatException("Audio format not supported: " + this.f24390d);
            }
            this.f24388b = true;
        }
        return true;
    }

    @Override
    protected boolean c(d0 d0Var, long j10) {
        if (this.f24390d == 2) {
            int iA = d0Var.a();
            this.f24386a.c(d0Var, iA);
            this.f24386a.e(j10, 1, iA, 0, null);
            return true;
        }
        int iD = d0Var.D();
        if (iD != 0 || this.f24389c) {
            if (this.f24390d == 10 && iD != 1) {
                return false;
            }
            int iA2 = d0Var.a();
            this.f24386a.c(d0Var, iA2);
            this.f24386a.e(j10, 1, iA2, 0, null);
            return true;
        }
        int iA3 = d0Var.a();
        byte[] bArr = new byte[iA3];
        d0Var.j(bArr, 0, iA3);
        com.google.android.exoplayer2.audio.a.b bVarF = com.google.android.exoplayer2.audio.a.f(bArr);
        this.f24386a.d(new p1.b().e0(MimeTypes.AUDIO_AAC).I(bVarF.f23908c).H(bVarF.f23907b).f0(bVarF.f23906a).T(Collections.singletonList(bArr)).E());
        this.f24389c = true;
        return false;
    }
}
