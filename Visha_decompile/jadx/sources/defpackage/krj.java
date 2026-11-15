package defpackage;

import android.os.Handler;
import java.util.concurrent.CopyOnWriteArrayList;

public final class krj {
    public final CopyOnWriteArrayList a = new CopyOnWriteArrayList();

    public final void a(Handler handler, lrj lrjVar) {
        c(lrjVar);
        this.a.add(new jrj(handler, lrjVar));
    }

    public final void b(final int i, final long j, final long j2) {
        for (final jrj jrjVar : this.a) {
            if (!jrjVar.c) {
                jrjVar.a.post(new Runnable() {
                    @Override
                    public final void run() {
                        jrjVar.b.E(i, j, j2);
                    }
                });
            }
        }
    }

    public final void c(lrj lrjVar) {
        CopyOnWriteArrayList<jrj> copyOnWriteArrayList = this.a;
        for (jrj jrjVar : copyOnWriteArrayList) {
            if (jrjVar.b == lrjVar) {
                jrjVar.c();
                copyOnWriteArrayList.remove(jrjVar);
            }
        }
    }
}
