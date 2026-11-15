package defpackage;

import defpackage.m3f;
import defpackage.s5f;

public final class p6f implements iff {
    public final q6f a;

    public p6f(q6f q6fVar) {
        this.a = q6fVar;
    }

    @Override
    public final void zza(Object obj) {
        final s5f s5fVar = (s5f) obj;
        zef.f.execute(new Runnable() {
            @Override
            public final void run() {
                s5f s5fVar2 = s5fVar;
                s5fVar2.a("/result", m3f.o);
                s5fVar2.zzc();
            }
        });
    }
}
