package h3;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import k2.h0;
import k2.l0;
import k2.s0;

public class n implements k2.r {

    private final s f61247a;

    private final androidx.media3.common.r f61249c;

    private final List f61250d;

    private s0 f61253g;

    private int f61254h;

    private int f61255i;

    private long[] f61256j;

    private long f61257k;

    private final d f61248b = new d();

    private byte[] f61252f = a1.f10043f;

    private final j0 f61251e = new j0();

    private static class b implements Comparable {

        private final long f61258a;

        private final byte[] f61259b;

        @Override
        public int compareTo(b bVar) {
            return Long.compare(this.f61258a, bVar.f61258a);
        }

        private b(long j10, byte[] bArr) {
            this.f61258a = j10;
            this.f61259b = bArr;
        }
    }

    public n(s sVar, androidx.media3.common.r rVar) {
        this.f61247a = sVar;
        this.f61249c = rVar != null ? rVar.b().u0("application/x-media3-cues").S(rVar.f9849o).W(sVar.c()).N() : null;
        this.f61250d = new ArrayList();
        this.f61255i = 0;
        this.f61256j = a1.f10044g;
        this.f61257k = C.TIME_UNSET;
    }

    public void g(e eVar) {
        b bVar = new b(eVar.f61238b, this.f61248b.a(eVar.f61237a, eVar.f61239c));
        this.f61250d.add(bVar);
        long j10 = this.f61257k;
        if (j10 == C.TIME_UNSET || eVar.f61238b >= j10) {
            l(bVar);
        }
    }

    private void h() throws ParserException {
        try {
            long j10 = this.f61257k;
            this.f61247a.b(this.f61252f, 0, this.f61254h, j10 != C.TIME_UNSET ? s.b.c(j10) : s.b.b(), new androidx.media3.common.util.m() {
                @Override
                public final void accept(Object obj) {
                    this.f61246a.g((e) obj);
                }
            });
            Collections.sort(this.f61250d);
            this.f61256j = new long[this.f61250d.size()];
            for (int i10 = 0; i10 < this.f61250d.size(); i10++) {
                this.f61256j[i10] = ((b) this.f61250d.get(i10)).f61258a;
            }
            this.f61252f = a1.f10043f;
        } catch (RuntimeException e10) {
            throw ParserException.createForMalformedContainer("SubtitleParser failed.", e10);
        }
    }

    private boolean i(k2.s sVar) {
        byte[] bArr = this.f61252f;
        if (bArr.length == this.f61254h) {
            this.f61252f = Arrays.copyOf(bArr, bArr.length + 1024);
        }
        byte[] bArr2 = this.f61252f;
        int i10 = this.f61254h;
        int i11 = sVar.read(bArr2, i10, bArr2.length - i10);
        if (i11 != -1) {
            this.f61254h += i11;
        }
        long length = sVar.getLength();
        return (length != -1 && ((long) this.f61254h) == length) || i11 == -1;
    }

    private boolean j(k2.s sVar) {
        return sVar.skip((sVar.getLength() > (-1L) ? 1 : (sVar.getLength() == (-1L) ? 0 : -1)) != 0 ? Ints.d(sVar.getLength()) : 1024) == -1;
    }

    private void k() {
        long j10 = this.f61257k;
        for (int iH = j10 == C.TIME_UNSET ? 0 : a1.h(this.f61256j, j10, true, true); iH < this.f61250d.size(); iH++) {
            l((b) this.f61250d.get(iH));
        }
    }

    private void l(b bVar) {
        androidx.media3.common.util.a.i(this.f61253g);
        int length = bVar.f61259b.length;
        this.f61251e.T(bVar.f61259b);
        this.f61253g.c(this.f61251e, length);
        this.f61253g.b(bVar.f61258a, 1, length, 0, null);
    }

    @Override
    public boolean b(k2.s sVar) {
        return true;
    }

    @Override
    public k2.r c() {
        return k2.q.b(this);
    }

    @Override
    public int d(k2.s sVar, l0 l0Var) throws ParserException {
        int i10 = this.f61255i;
        androidx.media3.common.util.a.g((i10 == 0 || i10 == 5) ? false : true);
        if (this.f61255i == 1) {
            int iD = sVar.getLength() != -1 ? Ints.d(sVar.getLength()) : 1024;
            if (iD > this.f61252f.length) {
                this.f61252f = new byte[iD];
            }
            this.f61254h = 0;
            this.f61255i = 2;
        }
        if (this.f61255i == 2 && i(sVar)) {
            h();
            this.f61255i = 4;
        }
        if (this.f61255i == 3 && j(sVar)) {
            k();
            this.f61255i = 4;
        }
        return this.f61255i == 4 ? -1 : 0;
    }

    @Override
    public void e(k2.t tVar) {
        androidx.media3.common.util.a.g(this.f61255i == 0);
        s0 s0VarTrack = tVar.track(0, 3);
        this.f61253g = s0VarTrack;
        androidx.media3.common.r rVar = this.f61249c;
        if (rVar != null) {
            s0VarTrack.d(rVar);
            tVar.endTracks();
            tVar.d(new h0(new long[]{0}, new long[]{0}, C.TIME_UNSET));
        }
        this.f61255i = 1;
    }

    @Override
    public List f() {
        return k2.q.a(this);
    }

    @Override
    public void release() {
        if (this.f61255i == 5) {
            return;
        }
        this.f61247a.reset();
        this.f61255i = 5;
    }

    @Override
    public void seek(long j10, long j11) {
        int i10 = this.f61255i;
        androidx.media3.common.util.a.g((i10 == 0 || i10 == 5) ? false : true);
        this.f61257k = j11;
        if (this.f61255i == 2) {
            this.f61255i = 1;
        }
        if (this.f61255i == 4) {
            this.f61255i = 3;
        }
    }
}
