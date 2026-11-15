package defpackage;

import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;

public final class foh {
    public final Deque a = new LinkedBlockingDeque();
    public final Callable b;
    public final g8i c;

    public foh(Callable callable, g8i g8iVar) {
        this.b = callable;
        this.c = g8iVar;
    }

    public final synchronized im5 a() {
        c(1);
        return (im5) this.a.poll();
    }

    public final synchronized void b(im5 im5Var) {
        this.a.addFirst(im5Var);
    }

    public final synchronized void c(int i) {
        Deque deque = this.a;
        int size = i - deque.size();
        for (int i2 = 0; i2 < size; i2++) {
            deque.add(this.c.m(this.b));
        }
    }
}
