package defpackage;

import java.util.Collections;
import java.util.List;

public final class cbb implements l2a {
    public static final cbb c = new cbb();
    public final List b;

    public cbb(jm1 jm1Var) {
        this.b = Collections.singletonList(jm1Var);
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

    public cbb() {
        this.b = Collections.emptyList();
    }
}
