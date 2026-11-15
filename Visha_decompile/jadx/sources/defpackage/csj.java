package defpackage;

import java.util.concurrent.Executor;

public final class csj implements a6e {
    public final Executor b;
    public final qfg c;

    public csj(Executor executor, qfg qfgVar) {
        this.b = executor;
        this.c = qfgVar;
    }

    @Override
    public final void execute(Runnable runnable) {
        this.b.execute(runnable);
    }

    @Override
    public final void zza() {
        this.c.zza(this.b);
    }
}
