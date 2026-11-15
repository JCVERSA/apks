package defpackage;

import java.util.Collections;
import java.util.List;

public final class sr6 implements l2a {
    public final List b;

    public sr6(List list) {
        this.b = Collections.unmodifiableList(list);
    }

    @Override
    public List getCues(long j) {
        return j >= 0 ? this.b : Collections.emptyList();
    }

    @Override
    public long getEventTime(int i) {
        zi.a(i == 0);
        return 0L;
    }

    @Override
    public int getEventTimeCount() {
        return 1;
    }

    @Override
    public int getNextEventTimeIndex(long j) {
        return j < 0 ? 0 : -1;
    }
}
