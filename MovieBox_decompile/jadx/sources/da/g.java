package da;

import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;

public final class g implements j {

    private final c f58961a = new c();

    private final m f58962b = new m();

    private final Deque f58963c = new ArrayDeque();

    private int f58964d;

    private boolean f58965e;

    class a extends n {
        a() {
        }

        @Override
        public void l() {
            g.this.e(this);
        }
    }

    private static final class b implements i {

        private final long f58967a;

        private final ImmutableList f58968b;

        public b(long j10, ImmutableList immutableList) {
            this.f58967a = j10;
            this.f58968b = immutableList;
        }

        @Override
        public List getCues(long j10) {
            return j10 >= this.f58967a ? this.f58968b : ImmutableList.of();
        }

        @Override
        public long getEventTime(int i10) {
            com.google.android.exoplayer2.util.a.a(i10 == 0);
            return this.f58967a;
        }

        @Override
        public int getEventTimeCount() {
            return 1;
        }

        @Override
        public int getNextEventTimeIndex(long j10) {
            return this.f58967a > j10 ? 0 : -1;
        }
    }

    public g() {
        for (int i10 = 0; i10 < 2; i10++) {
            this.f58963c.addFirst(new a());
        }
        this.f58964d = 0;
    }

    public void e(n nVar) {
        com.google.android.exoplayer2.util.a.g(this.f58963c.size() < 2);
        com.google.android.exoplayer2.util.a.a(!this.f58963c.contains(nVar));
        nVar.b();
        this.f58963c.addFirst(nVar);
    }

    @Override
    public m dequeueInputBuffer() {
        com.google.android.exoplayer2.util.a.g(!this.f58965e);
        if (this.f58964d != 0) {
            return null;
        }
        this.f58964d = 1;
        return this.f58962b;
    }

    @Override
    public n dequeueOutputBuffer() {
        com.google.android.exoplayer2.util.a.g(!this.f58965e);
        if (this.f58964d != 2 || this.f58963c.isEmpty()) {
            return null;
        }
        n nVar = (n) this.f58963c.removeFirst();
        if (this.f58962b.h()) {
            nVar.a(4);
        } else {
            m mVar = this.f58962b;
            nVar.m(this.f58962b.f24204e, new b(mVar.f24204e, this.f58961a.a(((ByteBuffer) com.google.android.exoplayer2.util.a.e(mVar.f24202c)).array())), 0L);
        }
        this.f58962b.b();
        this.f58964d = 0;
        return nVar;
    }

    @Override
    public void queueInputBuffer(m mVar) {
        com.google.android.exoplayer2.util.a.g(!this.f58965e);
        com.google.android.exoplayer2.util.a.g(this.f58964d == 1);
        com.google.android.exoplayer2.util.a.a(this.f58962b == mVar);
        this.f58964d = 2;
    }

    @Override
    public void flush() {
        com.google.android.exoplayer2.util.a.g(!this.f58965e);
        this.f58962b.b();
        this.f58964d = 0;
    }

    @Override
    public void release() {
        this.f58965e = true;
    }

    @Override
    public void setPositionUs(long j10) {
    }
}
