package defpackage;

import java.util.Collections;
import java.util.List;

public final class vv9 implements l2a {
    public final List b;
    public final List c;

    public vv9(List list, List list2) {
        this.b = list;
        this.c = list2;
    }

    @Override
    public List getCues(long j) {
        int iG = blb.g(this.c, Long.valueOf(j), true, false);
        return iG == -1 ? Collections.emptyList() : (List) this.b.get(iG);
    }

    @Override
    public long getEventTime(int i) {
        zi.a(i >= 0);
        zi.a(i < this.c.size());
        return ((Long) this.c.get(i)).longValue();
    }

    @Override
    public int getEventTimeCount() {
        return this.c.size();
    }

    @Override
    public int getNextEventTimeIndex(long j) {
        int iD = blb.d(this.c, Long.valueOf(j), false, false);
        if (iD < this.c.size()) {
            return iD;
        }
        return -1;
    }
}
