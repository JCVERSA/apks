package defpackage;

import java.util.List;

public final class z08 implements l2a {
    public final List b;

    public z08(List list) {
        this.b = list;
    }

    @Override
    public List getCues(long j) {
        return this.b;
    }

    @Override
    public long getEventTime(int i) {
        return 0L;
    }

    @Override
    public int getEventTimeCount() {
        return 1;
    }

    @Override
    public int getNextEventTimeIndex(long j) {
        return -1;
    }
}
