package defpackage;

import java.util.concurrent.ConcurrentLinkedQueue;

public final class bc7 {
    public final int a;
    public final c74 b;
    public final e74 c;
    public final ConcurrentLinkedQueue d;

    public bc7(int i, c74 c74Var, e74 e74Var) {
        y45.j(c74Var, "factory");
        y45.j(e74Var, "reset");
        this.a = i;
        this.b = c74Var;
        this.c = e74Var;
        this.d = new ConcurrentLinkedQueue();
    }

    public final Object a() {
        Object objPoll = this.d.poll();
        return objPoll == null ? this.b.invoke() : objPoll;
    }

    public final void b(Object obj) {
        if (this.d.size() < this.a) {
            this.c.invoke(obj);
            this.d.offer(obj);
        }
    }
}
