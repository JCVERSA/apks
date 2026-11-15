package i3;

import androidx.media3.common.util.a1;
import androidx.media3.decoder.h;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import h3.k;
import h3.l;
import h3.o;
import h3.p;
import java.util.ArrayDeque;

abstract class e implements l {

    private final ArrayDeque f61820a = new ArrayDeque();

    private final ArrayDeque f61821b;

    private final ArrayDeque f61822c;

    private b f61823d;

    private long f61824e;

    private long f61825f;

    private long f61826g;

    private static final class b extends o implements Comparable {

        private long f61827j;

        private b() {
        }

        @Override
        public int compareTo(b bVar) {
            if (isEndOfStream() != bVar.isEndOfStream()) {
                return isEndOfStream() ? 1 : -1;
            }
            long j10 = this.f10608e - bVar.f10608e;
            if (j10 == 0) {
                j10 = this.f61827j - bVar.f61827j;
                if (j10 == 0) {
                    return 0;
                }
            }
            return j10 > 0 ? 1 : -1;
        }
    }

    static final class c extends p {

        private h.a f61828c;

        public c(h.a aVar) {
            this.f61828c = aVar;
        }

        @Override
        public final void release() {
            this.f61828c.a(this);
        }
    }

    public e() {
        for (int i10 = 0; i10 < 10; i10++) {
            this.f61820a.add(new b());
        }
        this.f61821b = new ArrayDeque();
        for (int i11 = 0; i11 < 2; i11++) {
            this.f61821b.add(new c(new h.a() {
                @Override
                public final void a(h hVar) {
                    this.f61819a.l((e.c) hVar);
                }
            }));
        }
        this.f61822c = new ArrayDeque();
        this.f61826g = C.TIME_UNSET;
    }

    private void k(b bVar) {
        bVar.clear();
        this.f61820a.add(bVar);
    }

    @Override
    public final void a(long j10) {
        this.f61826g = j10;
    }

    protected abstract k c();

    protected abstract void d(o oVar);

    @Override
    public o dequeueInputBuffer() {
        androidx.media3.common.util.a.g(this.f61823d == null);
        if (this.f61820a.isEmpty()) {
            return null;
        }
        b bVar = (b) this.f61820a.pollFirst();
        this.f61823d = bVar;
        return bVar;
    }

    @Override
    public p dequeueOutputBuffer() {
        if (this.f61821b.isEmpty()) {
            return null;
        }
        while (!this.f61822c.isEmpty() && ((b) a1.i((b) this.f61822c.peek())).f10608e <= this.f61824e) {
            b bVar = (b) a1.i((b) this.f61822c.poll());
            if (bVar.isEndOfStream()) {
                p pVar = (p) a1.i((p) this.f61821b.pollFirst());
                pVar.addFlag(4);
                k(bVar);
                return pVar;
            }
            d(bVar);
            if (i()) {
                k kVarC = c();
                p pVar2 = (p) a1.i((p) this.f61821b.pollFirst());
                pVar2.a(bVar.f10608e, kVarC, Long.MAX_VALUE);
                k(bVar);
                return pVar2;
            }
            k(bVar);
        }
        return null;
    }

    @Override
    public void flush() {
        this.f61825f = 0L;
        this.f61824e = 0L;
        while (!this.f61822c.isEmpty()) {
            k((b) a1.i((b) this.f61822c.poll()));
        }
        b bVar = this.f61823d;
        if (bVar != null) {
            k(bVar);
            this.f61823d = null;
        }
    }

    protected final p g() {
        return (p) this.f61821b.pollFirst();
    }

    protected final long h() {
        return this.f61824e;
    }

    protected abstract boolean i();

    /* JADX WARN: Code duplicated, block: B:15:0x002d  */
    @Override
    public void queueInputBuffer(o oVar) {
        androidx.media3.common.util.a.a(oVar == this.f61823d);
        b bVar = (b) oVar;
        if (bVar.isEndOfStream()) {
            long j10 = this.f61825f;
            this.f61825f = 1 + j10;
            bVar.f61827j = j10;
            this.f61822c.add(bVar);
        } else {
            long j11 = bVar.f10608e;
            if (j11 != Long.MIN_VALUE) {
                long j12 = this.f61826g;
                if (j12 == C.TIME_UNSET || j11 >= j12) {
                    long j13 = this.f61825f;
                    this.f61825f = 1 + j13;
                    bVar.f61827j = j13;
                    this.f61822c.add(bVar);
                } else {
                    k(bVar);
                }
            } else {
                long j14 = this.f61825f;
                this.f61825f = 1 + j14;
                bVar.f61827j = j14;
                this.f61822c.add(bVar);
            }
        }
        this.f61823d = null;
    }

    protected void l(p pVar) {
        pVar.clear();
        this.f61821b.add(pVar);
    }

    @Override
    public void setPositionUs(long j10) {
        this.f61824e = j10;
    }

    @Override
    public void release() {
    }
}
