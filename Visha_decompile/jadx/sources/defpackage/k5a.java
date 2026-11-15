package defpackage;

import java.util.List;

public abstract class k5a extends ku1 implements l2a {
    public l2a e;
    public long f;

    @Override
    public void b() {
        super.b();
        this.e = null;
    }

    @Override
    public List getCues(long j) {
        return ((l2a) zi.e(this.e)).getCues(j - this.f);
    }

    @Override
    public long getEventTime(int i) {
        return ((l2a) zi.e(this.e)).getEventTime(i) + this.f;
    }

    @Override
    public int getEventTimeCount() {
        return ((l2a) zi.e(this.e)).getEventTimeCount();
    }

    @Override
    public int getNextEventTimeIndex(long j) {
        return ((l2a) zi.e(this.e)).getNextEventTimeIndex(j - this.f);
    }

    public void m(long j, l2a l2aVar, long j2) {
        this.c = j;
        this.e = l2aVar;
        if (j2 != Long.MAX_VALUE) {
            j = j2;
        }
        this.f = j;
    }
}
