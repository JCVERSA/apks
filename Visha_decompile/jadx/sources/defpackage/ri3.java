package defpackage;

import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;

public final class ri3 implements o2a {
    public final km1 a = new km1();
    public final y4a b = new y4a();
    public final Deque c = new ArrayDeque();
    public int d;
    public boolean e;

    public class a extends k5a {
        public a() {
        }

        @Override
        public void l() {
            ri3.this.e(this);
        }
    }

    public static final class b implements l2a {
        public final long b;
        public final ImmutableList c;

        public b(long j, ImmutableList immutableList) {
            this.b = j;
            this.c = immutableList;
        }

        @Override
        public List getCues(long j) {
            return j >= this.b ? this.c : ImmutableList.of();
        }

        @Override
        public long getEventTime(int i) {
            zi.a(i == 0);
            return this.b;
        }

        @Override
        public int getEventTimeCount() {
            return 1;
        }

        @Override
        public int getNextEventTimeIndex(long j) {
            return this.b > j ? 0 : -1;
        }
    }

    public ri3() {
        for (int i = 0; i < 2; i++) {
            this.c.addFirst(new a());
        }
        this.d = 0;
    }

    public void e(k5a k5aVar) {
        zi.g(this.c.size() < 2);
        zi.a(!this.c.contains(k5aVar));
        k5aVar.b();
        this.c.addFirst(k5aVar);
    }

    @Override
    public y4a dequeueInputBuffer() {
        zi.g(!this.e);
        if (this.d != 0) {
            return null;
        }
        this.d = 1;
        return this.b;
    }

    @Override
    public k5a dequeueOutputBuffer() {
        zi.g(!this.e);
        if (this.d != 2 || this.c.isEmpty()) {
            return null;
        }
        k5a k5aVar = (k5a) this.c.removeFirst();
        if (this.b.h()) {
            k5aVar.a(4);
        } else {
            y4a y4aVar = this.b;
            k5aVar.m(this.b.f, new b(y4aVar.f, this.a.a(((ByteBuffer) zi.e(y4aVar.d)).array())), 0L);
        }
        this.b.b();
        this.d = 0;
        return k5aVar;
    }

    @Override
    public void queueInputBuffer(y4a y4aVar) {
        zi.g(!this.e);
        zi.g(this.d == 1);
        zi.a(this.b == y4aVar);
        this.d = 2;
    }

    @Override
    public void flush() {
        zi.g(!this.e);
        this.b.b();
        this.d = 0;
    }

    @Override
    public void release() {
        this.e = true;
    }

    @Override
    public void setPositionUs(long j) {
    }
}
