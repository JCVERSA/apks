package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.x;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import i9.e0;

final class d extends TagPayloadReader {

    private final d0 f24411b;

    private final d0 f24412c;

    private int f24413d;

    private boolean f24414e;

    private boolean f24415f;

    private int f24416g;

    public d(e0 e0Var) {
        super(e0Var);
        this.f24411b = new d0(x.f26892a);
        this.f24412c = new d0(4);
    }

    @Override
    protected boolean b(d0 d0Var) throws TagPayloadReader.UnsupportedFormatException {
        int iD = d0Var.D();
        int i10 = (iD >> 4) & 15;
        int i11 = iD & 15;
        if (i11 == 7) {
            this.f24416g = i10;
            return i10 != 5;
        }
        throw new TagPayloadReader.UnsupportedFormatException("Video format not supported: " + i11);
    }

    @Override
    protected boolean c(d0 d0Var, long j10) throws ParserException {
        int iD = d0Var.D();
        long jO = j10 + (((long) d0Var.o()) * 1000);
        if (iD == 0 && !this.f24414e) {
            d0 d0Var2 = new d0(new byte[d0Var.a()]);
            d0Var.j(d0Var2.d(), 0, d0Var.a());
            com.google.android.exoplayer2.video.a aVarB = com.google.android.exoplayer2.video.a.b(d0Var2);
            this.f24413d = aVarB.f26951b;
            this.f24386a.d(new p1.b().e0(MimeTypes.VIDEO_H264).I(aVarB.f26955f).j0(aVarB.f26952c).Q(aVarB.f26953d).a0(aVarB.f26954e).T(aVarB.f26950a).E());
            this.f24414e = true;
            return false;
        }
        if (iD != 1 || !this.f24414e) {
            return false;
        }
        int i10 = this.f24416g == 1 ? 1 : 0;
        if (!this.f24415f && i10 == 0) {
            return false;
        }
        byte[] bArrD = this.f24412c.d();
        bArrD[0] = 0;
        bArrD[1] = 0;
        bArrD[2] = 0;
        int i11 = 4 - this.f24413d;
        int i12 = 0;
        while (d0Var.a() > 0) {
            d0Var.j(this.f24412c.d(), i11, this.f24413d);
            this.f24412c.P(0);
            int iH = this.f24412c.H();
            this.f24411b.P(0);
            this.f24386a.c(this.f24411b, 4);
            this.f24386a.c(d0Var, iH);
            i12 = i12 + 4 + iH;
        }
        this.f24386a.e(jO, i10, i12, 0, null);
        this.f24415f = true;
        return true;
    }
}
