package defpackage;

import android.os.Handler;
import java.util.concurrent.CopyOnWriteArrayList;

public final class jjj {
    public final int a;
    public final bnj b;
    public final CopyOnWriteArrayList c;

    public jjj(CopyOnWriteArrayList copyOnWriteArrayList, int i, bnj bnjVar) {
        this.c = copyOnWriteArrayList;
        this.a = 0;
        this.b = bnjVar;
    }

    public final jjj a(int i, bnj bnjVar) {
        return new jjj(this.c, 0, bnjVar);
    }

    public final void b(Handler handler, kjj kjjVar) {
        this.c.add(new ijj(handler, kjjVar));
    }

    public final void c(kjj kjjVar) {
        CopyOnWriteArrayList<ijj> copyOnWriteArrayList = this.c;
        for (ijj ijjVar : copyOnWriteArrayList) {
            if (ijjVar.a == kjjVar) {
                copyOnWriteArrayList.remove(ijjVar);
            }
        }
    }

    public jjj() {
        this(new CopyOnWriteArrayList(), 0, null);
    }
}
