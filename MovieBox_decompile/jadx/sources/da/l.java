package da;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.a0;
import i9.e0;
import i9.z;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.List;

public class l implements i9.l {

    private final j f58972a;

    private final p1 f58975d;

    private i9.n f58978g;

    private e0 f58979h;

    private int f58980i;

    private final d f58973b = new d();

    private final d0 f58974c = new d0();

    private final List f58976e = new ArrayList();

    private final List f58977f = new ArrayList();

    private int f58981j = 0;

    private long f58982k = C.TIME_UNSET;

    public l(j jVar, p1 p1Var) {
        this.f58972a = jVar;
        this.f58975d = p1Var.b().e0("text/x-exoplayer-cues").I(p1Var.f24901l).E();
    }

    private void a() throws ParserException, InterruptedIOException {
        try {
            m mVar = (m) this.f58972a.dequeueInputBuffer();
            while (mVar == null) {
                Thread.sleep(5L);
                mVar = (m) this.f58972a.dequeueInputBuffer();
            }
            mVar.m(this.f58980i);
            mVar.f24202c.put(this.f58974c.d(), 0, this.f58980i);
            mVar.f24202c.limit(this.f58980i);
            this.f58972a.queueInputBuffer(mVar);
            n nVar = (n) this.f58972a.dequeueOutputBuffer();
            while (nVar == null) {
                Thread.sleep(5L);
                nVar = (n) this.f58972a.dequeueOutputBuffer();
            }
            for (int i10 = 0; i10 < nVar.getEventTimeCount(); i10++) {
                byte[] bArrA = this.f58973b.a(nVar.getCues(nVar.getEventTime(i10)));
                this.f58976e.add(Long.valueOf(nVar.getEventTime(i10)));
                this.f58977f.add(new d0(bArrA));
            }
            nVar.l();
        } catch (SubtitleDecoderException e10) {
            throw ParserException.createForMalformedContainer("SubtitleDecoder failed.", e10);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    private boolean e(i9.m mVar) {
        int iB = this.f58974c.b();
        int i10 = this.f58980i;
        if (iB == i10) {
            this.f58974c.c(i10 + 1024);
        }
        int i11 = mVar.read(this.f58974c.d(), this.f58980i, this.f58974c.b() - this.f58980i);
        if (i11 != -1) {
            this.f58980i += i11;
        }
        long length = mVar.getLength();
        return (length != -1 && ((long) this.f58980i) == length) || i11 == -1;
    }

    private boolean f(i9.m mVar) {
        return mVar.skip((mVar.getLength() > (-1L) ? 1 : (mVar.getLength() == (-1L) ? 0 : -1)) != 0 ? Ints.d(mVar.getLength()) : 1024) == -1;
    }

    private void g() {
        com.google.android.exoplayer2.util.a.i(this.f58979h);
        com.google.android.exoplayer2.util.a.g(this.f58976e.size() == this.f58977f.size());
        long j10 = this.f58982k;
        for (int iG = j10 == C.TIME_UNSET ? 0 : p0.g(this.f58976e, Long.valueOf(j10), true, true); iG < this.f58977f.size(); iG++) {
            d0 d0Var = (d0) this.f58977f.get(iG);
            d0Var.P(0);
            int length = d0Var.d().length;
            this.f58979h.c(d0Var, length);
            this.f58979h.e(((Long) this.f58976e.get(iG)).longValue(), 1, length, 0, null);
        }
    }

    @Override
    public void b(i9.n nVar) {
        com.google.android.exoplayer2.util.a.g(this.f58981j == 0);
        this.f58978g = nVar;
        this.f58979h = nVar.track(0, 3);
        this.f58978g.endTracks();
        this.f58978g.g(new z(new long[]{0}, new long[]{0}, C.TIME_UNSET));
        this.f58979h.d(this.f58975d);
        this.f58981j = 1;
    }

    @Override
    public boolean c(i9.m mVar) {
        return true;
    }

    @Override
    public int d(i9.m mVar, a0 a0Var) throws ParserException, InterruptedIOException {
        int i10 = this.f58981j;
        com.google.android.exoplayer2.util.a.g((i10 == 0 || i10 == 5) ? false : true);
        if (this.f58981j == 1) {
            this.f58974c.L(mVar.getLength() != -1 ? Ints.d(mVar.getLength()) : 1024);
            this.f58980i = 0;
            this.f58981j = 2;
        }
        if (this.f58981j == 2 && e(mVar)) {
            a();
            g();
            this.f58981j = 4;
        }
        if (this.f58981j == 3 && f(mVar)) {
            g();
            this.f58981j = 4;
        }
        return this.f58981j == 4 ? -1 : 0;
    }

    @Override
    public void release() {
        if (this.f58981j == 5) {
            return;
        }
        this.f58972a.release();
        this.f58981j = 5;
    }

    @Override
    public void seek(long j10, long j11) {
        int i10 = this.f58981j;
        com.google.android.exoplayer2.util.a.g((i10 == 0 || i10 == 5) ? false : true);
        this.f58982k = j11;
        if (this.f58981j == 2) {
            this.f58981j = 1;
        }
        if (this.f58981j == 4) {
            this.f58981j = 3;
        }
    }
}
