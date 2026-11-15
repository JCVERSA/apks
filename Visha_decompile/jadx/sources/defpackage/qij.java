package defpackage;

import java.util.ArrayDeque;
import java.util.Queue;

public final class qij {
    public final Object a = new Object();
    public Queue b;
    public boolean c;

    public final void a(mhj mhjVar) {
        synchronized (this.a) {
            try {
                if (this.b == null) {
                    this.b = new ArrayDeque();
                }
                this.b.add(mhjVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(xda xdaVar) {
        mhj mhjVar;
        synchronized (this.a) {
            if (this.b != null && !this.c) {
                this.c = true;
                while (true) {
                    synchronized (this.a) {
                        try {
                            mhjVar = (mhj) this.b.poll();
                            if (mhjVar == null) {
                                this.c = false;
                                return;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    mhjVar.c(xdaVar);
                }
            }
        }
    }
}
