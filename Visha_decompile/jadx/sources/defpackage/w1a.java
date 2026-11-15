package defpackage;

import java.util.Collections;
import java.util.List;

public final class w1a implements l2a {
    public final jm1[] b;
    public final long[] c;

    public w1a(jm1[] jm1VarArr, long[] jArr) {
        this.b = jm1VarArr;
        this.c = jArr;
    }

    @Override
    public List getCues(long j) {
        jm1 jm1Var;
        int i = blb.i(this.c, j, true, false);
        return (i == -1 || (jm1Var = this.b[i]) == jm1.s) ? Collections.emptyList() : Collections.singletonList(jm1Var);
    }

    @Override
    public long getEventTime(int i) {
        zi.a(i >= 0);
        zi.a(i < this.c.length);
        return this.c[i];
    }

    @Override
    public int getEventTimeCount() {
        return this.c.length;
    }

    @Override
    public int getNextEventTimeIndex(long j) {
        int iE = blb.e(this.c, j, false, false);
        if (iE < this.c.length) {
            return iE;
        }
        return -1;
    }
}
