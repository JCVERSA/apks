package defpackage;

import java.util.ArrayDeque;
import java.util.PriorityQueue;

public abstract class gs0 implements o2a {
    public final ArrayDeque a = new ArrayDeque();
    public final ArrayDeque b;
    public final PriorityQueue c;
    public b d;
    public long e;
    public long f;

    public static final class b extends y4a implements Comparable {
        public long k;

        public b() {
        }

        @Override
        public int compareTo(b bVar) {
            if (h() != bVar.h()) {
                return h() ? 1 : -1;
            }
            long j = this.f - bVar.f;
            if (j == 0) {
                j = this.k - bVar.k;
                if (j == 0) {
                    return 0;
                }
            }
            return j > 0 ? 1 : -1;
        }
    }

    public static final class c extends k5a {
        public ku1.a g;

        public c(ku1.a aVar) {
            this.g = aVar;
        }

        @Override
        public final void l() {
            this.g.a(this);
        }
    }

    public gs0() {
        for (int i = 0; i < 10; i++) {
            this.a.add(new b());
        }
        this.b = new ArrayDeque();
        for (int i2 = 0; i2 < 2; i2++) {
            this.b.add(new c(new ku1.a() {
                @Override
                public final void a(ku1 ku1Var) {
                    this.a.j((gs0.c) ku1Var);
                }
            }));
        }
        this.c = new PriorityQueue();
    }

    public abstract l2a a();

    public abstract void b(y4a y4aVar);

    @Override
    public y4a dequeueInputBuffer() {
        zi.g(this.d == null);
        if (this.a.isEmpty()) {
            return null;
        }
        b bVar = (b) this.a.pollFirst();
        this.d = bVar;
        return bVar;
    }

    @Override
    public k5a dequeueOutputBuffer() {
        if (this.b.isEmpty()) {
            return null;
        }
        while (!this.c.isEmpty() && ((b) blb.j((b) this.c.peek())).f <= this.e) {
            b bVar = (b) blb.j((b) this.c.poll());
            if (bVar.h()) {
                k5a k5aVar = (k5a) blb.j((k5a) this.b.pollFirst());
                k5aVar.a(4);
                i(bVar);
                return k5aVar;
            }
            b(bVar);
            if (g()) {
                l2a l2aVarA = a();
                k5a k5aVar2 = (k5a) blb.j((k5a) this.b.pollFirst());
                k5aVar2.m(bVar.f, l2aVarA, Long.MAX_VALUE);
                i(bVar);
                return k5aVar2;
            }
            i(bVar);
        }
        return null;
    }

    public final k5a e() {
        return (k5a) this.b.pollFirst();
    }

    public final long f() {
        return this.e;
    }

    @Override
    public void flush() {
        this.f = 0L;
        this.e = 0L;
        while (!this.c.isEmpty()) {
            i((b) blb.j((b) this.c.poll()));
        }
        b bVar = this.d;
        if (bVar != null) {
            i(bVar);
            this.d = null;
        }
    }

    public abstract boolean g();

    @Override
    public void queueInputBuffer(y4a y4aVar) {
        zi.a(y4aVar == this.d);
        b bVar = (b) y4aVar;
        if (bVar.g()) {
            i(bVar);
        } else {
            long j = this.f;
            this.f = 1 + j;
            bVar.k = j;
            this.c.add(bVar);
        }
        this.d = null;
    }

    public final void i(b bVar) {
        bVar.b();
        this.a.add(bVar);
    }

    public void j(k5a k5aVar) {
        k5aVar.b();
        this.b.add(k5aVar);
    }

    @Override
    public void release() {
    }

    @Override
    public void setPositionUs(long j) {
        this.e = j;
    }
}
