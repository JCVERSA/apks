package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class mih extends rlh {
    public final long b;
    public final List c;
    public final List d;

    public mih(int i, long j) {
        super(i, null);
        this.b = j;
        this.c = new ArrayList();
        this.d = new ArrayList();
    }

    public final mih b(int i) {
        List list = this.d;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            mih mihVar = (mih) list.get(i2);
            if (mihVar.a == i) {
                return mihVar;
            }
        }
        return null;
    }

    public final kjh c(int i) {
        List list = this.c;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            kjh kjhVar = (kjh) list.get(i2);
            if (kjhVar.a == i) {
                return kjhVar;
            }
        }
        return null;
    }

    public final void d(mih mihVar) {
        this.d.add(mihVar);
    }

    public final void e(kjh kjhVar) {
        this.c.add(kjhVar);
    }

    @Override
    public final String toString() {
        List list = this.c;
        return rlh.a(this.a) + " leaves: " + Arrays.toString(list.toArray()) + " containers: " + Arrays.toString(this.d.toArray());
    }
}
