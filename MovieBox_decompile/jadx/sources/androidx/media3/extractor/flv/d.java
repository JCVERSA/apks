package androidx.media3.extractor.flv;

import androidx.media3.common.ParserException;
import androidx.media3.common.r;
import androidx.media3.common.util.j0;
import androidx.media3.container.g;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import k2.s0;

final class d extends TagPayloadReader {

    private final j0 f13114b;

    private final j0 f13115c;

    private int f13116d;

    private boolean f13117e;

    private boolean f13118f;

    private int f13119g;

    public d(s0 s0Var) {
        super(s0Var);
        this.f13114b = new j0(g.f10281a);
        this.f13115c = new j0(4);
    }

    @Override
    protected boolean b(j0 j0Var) throws TagPayloadReader.UnsupportedFormatException {
        int iH = j0Var.H();
        int i10 = (iH >> 4) & 15;
        int i11 = iH & 15;
        if (i11 == 7) {
            this.f13119g = i10;
            return i10 != 5;
        }
        throw new TagPayloadReader.UnsupportedFormatException("Video format not supported: " + i11);
    }

    @Override
    protected boolean c(j0 j0Var, long j10) throws ParserException {
        int iH = j0Var.H();
        long jR = j10 + (((long) j0Var.r()) * 1000);
        if (iH == 0 && !this.f13117e) {
            j0 j0Var2 = new j0(new byte[j0Var.a()]);
            j0Var.l(j0Var2.e(), 0, j0Var.a());
            k2.d dVarB = k2.d.b(j0Var2);
            this.f13116d = dVarB.f63536b;
            this.f13089a.d(new r.b().U("video/x-flv").u0(MimeTypes.VIDEO_H264).S(dVarB.f63546l).B0(dVarB.f63537c).d0(dVarB.f63538d).q0(dVarB.f63545k).g0(dVarB.f63535a).N());
            this.f13117e = true;
            return false;
        }
        if (iH != 1 || !this.f13117e) {
            return false;
        }
        int i10 = this.f13119g == 1 ? 1 : 0;
        if (!this.f13118f && i10 == 0) {
            return false;
        }
        byte[] bArrE = this.f13115c.e();
        bArrE[0] = 0;
        bArrE[1] = 0;
        bArrE[2] = 0;
        int i11 = 4 - this.f13116d;
        int i12 = 0;
        while (j0Var.a() > 0) {
            j0Var.l(this.f13115c.e(), i11, this.f13116d);
            this.f13115c.W(0);
            int iL = this.f13115c.L();
            this.f13114b.W(0);
            this.f13089a.c(this.f13114b, 4);
            this.f13089a.c(j0Var, iL);
            i12 = i12 + 4 + iL;
        }
        this.f13089a.b(jR, i10, i12, 0, null);
        this.f13118f = true;
        return true;
    }
}
