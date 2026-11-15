package r3;

import android.net.Uri;
import androidx.media3.common.ParserException;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.EOFException;
import java.util.List;
import java.util.Map;

public final class h implements k2.r {

    public static final k2.x f70473m = new k2.x() {
        @Override
        public k2.x a(h3.s.a aVar) {
            return k2.w.d(this, aVar);
        }

        @Override
        public k2.x b(int i10) {
            return k2.w.b(this, i10);
        }

        @Override
        public k2.r[] c(Uri uri, Map map) {
            return k2.w.a(this, uri, map);
        }

        @Override
        public final k2.r[] createExtractors() {
            return h.j();
        }

        @Override
        public k2.x d(boolean z10) {
            return k2.w.c(this, z10);
        }
    };

    private final int f70474a;

    private final i f70475b;

    private final androidx.media3.common.util.j0 f70476c;

    private final androidx.media3.common.util.j0 f70477d;

    private final androidx.media3.common.util.i0 f70478e;

    private k2.t f70479f;

    private long f70480g;

    private long f70481h;

    private int f70482i;

    private boolean f70483j;

    private boolean f70484k;

    private boolean f70485l;

    public h() {
        this(0);
    }

    private void g(k2.s sVar) throws ParserException {
        if (this.f70483j) {
            return;
        }
        this.f70482i = -1;
        sVar.resetPeekPosition();
        long j10 = 0;
        if (sVar.getPosition() == 0) {
            l(sVar);
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            try {
                if (sVar.peekFully(this.f70477d.e(), 0, 2, true)) {
                    this.f70477d.W(0);
                    if (!i.l(this.f70477d.P())) {
                        break;
                    }
                    if (sVar.peekFully(this.f70477d.e(), 0, 4, true)) {
                        this.f70478e.p(14);
                        int iH = this.f70478e.h(13);
                        if (iH <= 6) {
                            this.f70483j = true;
                            throw ParserException.createForMalformedContainer("Malformed ADTS stream", null);
                        }
                        j10 += (long) iH;
                        i11++;
                        if (i11 != 1000 && sVar.advancePeekPosition(iH - 6, true)) {
                        }
                    }
                }
            } catch (EOFException unused) {
            }
            i10 = i11;
            break;
        }
        sVar.resetPeekPosition();
        if (i10 > 0) {
            this.f70482i = (int) (j10 / ((long) i10));
        } else {
            this.f70482i = -1;
        }
        this.f70483j = true;
    }

    private static int h(int i10, long j10) {
        return (int) ((((long) i10) * 8000000) / j10);
    }

    private k2.m0 i(long j10, boolean z10) {
        return new k2.i(j10, this.f70481h, h(this.f70482i, this.f70475b.j()), this.f70482i, z10);
    }

    public static k2.r[] j() {
        return new k2.r[]{new h()};
    }

    private void k(long j10, boolean z10) {
        if (this.f70485l) {
            return;
        }
        boolean z11 = (this.f70474a & 1) != 0 && this.f70482i > 0;
        if (z11 && this.f70475b.j() == C.TIME_UNSET && !z10) {
            return;
        }
        if (!z11 || this.f70475b.j() == C.TIME_UNSET) {
            this.f70479f.d(new k2.m0.b(C.TIME_UNSET));
        } else {
            this.f70479f.d(i(j10, (this.f70474a & 2) != 0));
        }
        this.f70485l = true;
    }

    private int l(k2.s sVar) {
        int i10 = 0;
        while (true) {
            sVar.peekFully(this.f70477d.e(), 0, 10);
            this.f70477d.W(0);
            if (this.f70477d.K() != 4801587) {
                break;
            }
            this.f70477d.X(3);
            int iG = this.f70477d.G();
            i10 += iG + 10;
            sVar.advancePeekPosition(iG);
        }
        sVar.resetPeekPosition();
        sVar.advancePeekPosition(i10);
        if (this.f70481h == -1) {
            this.f70481h = i10;
        }
        return i10;
    }

    @Override
    public boolean b(k2.s sVar) {
        int iL = l(sVar);
        int i10 = iL;
        int i11 = 0;
        int i12 = 0;
        do {
            sVar.peekFully(this.f70477d.e(), 0, 2);
            this.f70477d.W(0);
            if (i.l(this.f70477d.P())) {
                i11++;
                if (i11 >= 4 && i12 > 188) {
                    return true;
                }
                sVar.peekFully(this.f70477d.e(), 0, 4);
                this.f70478e.p(14);
                int iH = this.f70478e.h(13);
                if (iH <= 6) {
                    i10++;
                    sVar.resetPeekPosition();
                    sVar.advancePeekPosition(i10);
                } else {
                    sVar.advancePeekPosition(iH - 6);
                    i12 += iH;
                }
            } else {
                i10++;
                sVar.resetPeekPosition();
                sVar.advancePeekPosition(i10);
            }
            i11 = 0;
            i12 = 0;
        } while (i10 - iL < 8192);
        return false;
    }

    @Override
    public k2.r c() {
        return k2.q.b(this);
    }

    @Override
    public int d(k2.s sVar, k2.l0 l0Var) throws ParserException {
        androidx.media3.common.util.a.i(this.f70479f);
        long length = sVar.getLength();
        int i10 = this.f70474a;
        if ((i10 & 2) != 0 || ((i10 & 1) != 0 && length != -1)) {
            g(sVar);
        }
        int i11 = sVar.read(this.f70476c.e(), 0, 2048);
        boolean z10 = i11 == -1;
        k(length, z10);
        if (z10) {
            return -1;
        }
        this.f70476c.W(0);
        this.f70476c.V(i11);
        if (!this.f70484k) {
            this.f70475b.c(this.f70480g, 4);
            this.f70484k = true;
        }
        this.f70475b.a(this.f70476c);
        return 0;
    }

    @Override
    public void e(k2.t tVar) {
        this.f70479f = tVar;
        this.f70475b.e(tVar, new l0.d(0, 1));
        tVar.endTracks();
    }

    @Override
    public List f() {
        return k2.q.a(this);
    }

    @Override
    public void seek(long j10, long j11) {
        this.f70484k = false;
        this.f70475b.seek();
        this.f70480g = j11;
    }

    public h(int i10) {
        this.f70474a = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.f70475b = new i(true, MimeTypes.AUDIO_AAC);
        this.f70476c = new androidx.media3.common.util.j0(2048);
        this.f70482i = -1;
        this.f70481h = -1L;
        androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(10);
        this.f70477d = j0Var;
        this.f70478e = new androidx.media3.common.util.i0(j0Var.e());
    }

    @Override
    public void release() {
    }
}
