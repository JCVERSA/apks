package defpackage;

import androidx.media3.common.C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.common.primitives.Ints;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.List;

public class u4a implements nk3 {
    public final o2a a;
    public final k d;
    public qk3 g;
    public fva h;
    public int i;
    public final mm1 b = new mm1();
    public final qw7 c = new qw7();
    public final List e = new ArrayList();
    public final List f = new ArrayList();
    public int j = 0;
    public long k = C.TIME_UNSET;

    public u4a(o2a o2aVar, k kVar) {
        this.a = o2aVar;
        this.d = kVar.b().e0("text/x-exoplayer-cues").I(kVar.m).E();
    }

    @Override
    public void a(qk3 qk3Var) {
        zi.g(this.j == 0);
        this.g = qk3Var;
        this.h = qk3Var.track(0, 3);
        this.g.endTracks();
        this.g.d(new jz4(new long[]{0}, new long[]{0}, C.TIME_UNSET));
        this.h.b(this.d);
        this.j = 1;
    }

    @Override
    public int b(pk3 pk3Var, id8 id8Var) throws ParserException, InterruptedIOException {
        int i = this.j;
        zi.g((i == 0 || i == 5) ? false : true);
        if (this.j == 1) {
            this.c.K(pk3Var.getLength() != -1 ? Ints.d(pk3Var.getLength()) : 1024);
            this.i = 0;
            this.j = 2;
        }
        if (this.j == 2 && e(pk3Var)) {
            d();
            g();
            this.j = 4;
        }
        if (this.j == 3 && f(pk3Var)) {
            g();
            this.j = 4;
        }
        return this.j == 4 ? -1 : 0;
    }

    @Override
    public boolean c(pk3 pk3Var) {
        return true;
    }

    public final void d() throws ParserException, InterruptedIOException {
        try {
            y4a y4aVar = (y4a) this.a.dequeueInputBuffer();
            while (y4aVar == null) {
                Thread.sleep(5L);
                y4aVar = (y4a) this.a.dequeueInputBuffer();
            }
            y4aVar.m(this.i);
            y4aVar.d.put(this.c.d(), 0, this.i);
            y4aVar.d.limit(this.i);
            this.a.queueInputBuffer(y4aVar);
            k5a k5aVar = (k5a) this.a.dequeueOutputBuffer();
            while (k5aVar == null) {
                Thread.sleep(5L);
                k5aVar = (k5a) this.a.dequeueOutputBuffer();
            }
            for (int i = 0; i < k5aVar.getEventTimeCount(); i++) {
                byte[] bArrA = this.b.a(k5aVar.getCues(k5aVar.getEventTime(i)));
                this.e.add(Long.valueOf(k5aVar.getEventTime(i)));
                this.f.add(new qw7(bArrA));
            }
            k5aVar.l();
        } catch (SubtitleDecoderException e) {
            throw ParserException.createForMalformedContainer("SubtitleDecoder failed.", e);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public final boolean e(pk3 pk3Var) {
        int iB = this.c.b();
        int i = this.i;
        if (iB == i) {
            this.c.c(i + 1024);
        }
        int i2 = pk3Var.read(this.c.d(), this.i, this.c.b() - this.i);
        if (i2 != -1) {
            this.i += i2;
        }
        long length = pk3Var.getLength();
        return (length != -1 && ((long) this.i) == length) || i2 == -1;
    }

    public final boolean f(pk3 pk3Var) {
        return pk3Var.skip((pk3Var.getLength() > (-1L) ? 1 : (pk3Var.getLength() == (-1L) ? 0 : -1)) != 0 ? Ints.d(pk3Var.getLength()) : 1024) == -1;
    }

    public final void g() {
        zi.i(this.h);
        zi.g(this.e.size() == this.f.size());
        long j = this.k;
        for (int iG = j == C.TIME_UNSET ? 0 : blb.g(this.e, Long.valueOf(j), true, true); iG < this.f.size(); iG++) {
            qw7 qw7Var = (qw7) this.f.get(iG);
            qw7Var.O(0);
            int length = qw7Var.d().length;
            this.h.d(qw7Var, length);
            this.h.e(((Long) this.e.get(iG)).longValue(), 1, length, 0, null);
        }
    }

    @Override
    public void release() {
        if (this.j == 5) {
            return;
        }
        this.a.release();
        this.j = 5;
    }

    @Override
    public void seek(long j, long j2) {
        int i = this.j;
        zi.g((i == 0 || i == 5) ? false : true);
        this.k = j2;
        if (this.j == 2) {
            this.j = 1;
        }
        if (this.j == 4) {
            this.j = 3;
        }
    }
}
