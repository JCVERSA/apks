package defpackage;

import java.util.Iterator;
import java.util.concurrent.Executor;

public class cpc {
    public final Executor a;
    public final ge3 b;
    public final fpc c;
    public final e8a d;

    public cpc(Executor executor, ge3 ge3Var, fpc fpcVar, e8a e8aVar) {
        this.a = executor;
        this.b = ge3Var;
        this.c = fpcVar;
        this.d = e8aVar;
    }

    public void c() {
        this.a.execute(new Runnable() {
            @Override
            public final void run() {
                this.b.e();
            }
        });
    }

    public final Object d() {
        Iterator it = this.b.x().iterator();
        while (it.hasNext()) {
            this.c.a((a9b) it.next(), 1);
        }
        return null;
    }

    public final void e() {
        this.d.a(new e8a.a() {
            @Override
            public final Object execute() {
                return this.a.d();
            }
        });
    }
}
