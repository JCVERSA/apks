package defpackage;

import java.util.concurrent.Executor;
import java.util.logging.Logger;

public class e42 implements g29 {
    public static final Logger f = Logger.getLogger(j9b.class.getName());
    public final fpc a;
    public final Executor b;
    public final b50 c;
    public final ge3 d;
    public final e8a e;

    public e42(Executor executor, b50 b50Var, fpc fpcVar, ge3 ge3Var, e8a e8aVar) {
        this.b = executor;
        this.c = b50Var;
        this.a = fpcVar;
        this.d = ge3Var;
        this.e = e8aVar;
    }

    @Override
    public void a(final a9b a9bVar, final xd3 xd3Var, final m9b m9bVar) {
        this.b.execute(new Runnable() {
            @Override
            public final void run() {
                this.b.e(a9bVar, m9bVar, xd3Var);
            }
        });
    }

    public final Object d(a9b a9bVar, xd3 xd3Var) {
        this.d.s(a9bVar, xd3Var);
        this.a.a(a9bVar, 1);
        return null;
    }

    public final void e(final a9b a9bVar, m9b m9bVar, xd3 xd3Var) {
        try {
            z8b z8bVar = this.c.get(a9bVar.b());
            if (z8bVar == null) {
                String str = String.format("Transport backend '%s' is not registered", a9bVar.b());
                f.warning(str);
                m9bVar.a(new IllegalArgumentException(str));
            } else {
                final xd3 xd3VarB = z8bVar.b(xd3Var);
                this.e.a(new e8a.a() {
                    @Override
                    public final Object execute() {
                        return this.a.d(a9bVar, xd3VarB);
                    }
                });
                m9bVar.a(null);
            }
        } catch (Exception e) {
            f.warning("Error scheduling event " + e.getMessage());
            m9bVar.a(e);
        }
    }
}
