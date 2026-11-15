package ea;

import com.google.android.exoplayer2.util.p0;
import da.i;
import da.j;
import da.m;
import da.n;
import java.util.ArrayDeque;
import java.util.PriorityQueue;

abstract class e implements j {

    private final ArrayDeque f59546a = new ArrayDeque();

    private final ArrayDeque f59547b;

    private final PriorityQueue f59548c;

    private b f59549d;

    private long f59550e;

    private long f59551f;

    private static final class b extends m implements Comparable {

        private long f59552j;

        private b() {
        }

        @Override
        public int compareTo(b bVar) {
            if (h() != bVar.h()) {
                return h() ? 1 : -1;
            }
            long j10 = this.f24204e - bVar.f24204e;
            if (j10 == 0) {
                j10 = this.f59552j - bVar.f59552j;
                if (j10 == 0) {
                    return 0;
                }
            }
            return j10 > 0 ? 1 : -1;
        }
    }

    static final class c extends n {

        private com.google.android.exoplayer2.decoder.f.a f59553f;

        public c(com.google.android.exoplayer2.decoder.f.a aVar) {
            this.f59553f = aVar;
        }

        @Override
        public final void l() {
            this.f59553f.a(this);
        }
    }

    public e() {
        for (int i10 = 0; i10 < 10; i10++) {
            this.f59546a.add(new b());
        }
        this.f59547b = new ArrayDeque();
        for (int i11 = 0; i11 < 2; i11++) {
            this.f59547b.add(new c(new com.google.android.exoplayer2.decoder.f.a() {
                @Override
                public final void a(com.google.android.exoplayer2.decoder.f fVar) {
                    this.f59545a.j((e.c) fVar);
                }
            }));
        }
        this.f59548c = new PriorityQueue();
    }

    private void i(b bVar) {
        bVar.b();
        this.f59546a.add(bVar);
    }

    protected abstract i a();

    protected abstract void b(m mVar);

    @Override
    public m dequeueInputBuffer() {
        com.google.android.exoplayer2.util.a.g(this.f59549d == null);
        if (this.f59546a.isEmpty()) {
            return null;
        }
        b bVar = (b) this.f59546a.pollFirst();
        this.f59549d = bVar;
        return bVar;
    }

    @Override
    public n dequeueOutputBuffer() {
        if (this.f59547b.isEmpty()) {
            return null;
        }
        while (!this.f59548c.isEmpty() && ((b) p0.j((b) this.f59548c.peek())).f24204e <= this.f59550e) {
            b bVar = (b) p0.j((b) this.f59548c.poll());
            if (bVar.h()) {
                n nVar = (n) p0.j((n) this.f59547b.pollFirst());
                nVar.a(4);
                i(bVar);
                return nVar;
            }
            b(bVar);
            if (g()) {
                i iVarA = a();
                n nVar2 = (n) p0.j((n) this.f59547b.pollFirst());
                nVar2.m(bVar.f24204e, iVarA, Long.MAX_VALUE);
                i(bVar);
                return nVar2;
            }
            i(bVar);
        }
        return null;
    }

    protected final n e() {
        return (n) this.f59547b.pollFirst();
    }

    protected final long f() {
        return this.f59550e;
    }

    @Override
    public void flush() {
        this.f59551f = 0L;
        this.f59550e = 0L;
        while (!this.f59548c.isEmpty()) {
            i((b) p0.j((b) this.f59548c.poll()));
        }
        b bVar = this.f59549d;
        if (bVar != null) {
            i(bVar);
            this.f59549d = null;
        }
    }

    protected abstract boolean g();

    @Override
    public void queueInputBuffer(m mVar) {
        com.google.android.exoplayer2.util.a.a(mVar == this.f59549d);
        b bVar = (b) mVar;
        if (bVar.g()) {
            i(bVar);
        } else {
            long j10 = this.f59551f;
            this.f59551f = 1 + j10;
            bVar.f59552j = j10;
            this.f59548c.add(bVar);
        }
        this.f59549d = null;
    }

    protected void j(n nVar) {
        nVar.b();
        this.f59547b.add(nVar);
    }

    @Override
    public void setPositionUs(long j10) {
        this.f59550e = j10;
    }

    @Override
    public void release() {
    }
}
