package defpackage;

import java.util.concurrent.Callable;

public final class y6h implements eeh {
    public final g8i a;
    public final enh b;
    public final tef c;

    public y6h(g8i g8iVar, enh enhVar, tef tefVar) {
        this.a = g8iVar;
        this.b = enhVar;
        this.c = tefVar;
    }

    public static z6h a(y6h y6hVar) {
        return new z6h(y6hVar.b.j, y6hVar.c.l());
    }

    @Override
    public final int zza() {
        return 9;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                return y6h.a(this.b);
            }
        });
    }
}
