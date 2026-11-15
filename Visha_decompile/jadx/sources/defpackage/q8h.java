package defpackage;

import java.util.concurrent.Callable;

public final class q8h implements eeh {
    public final g8i a;
    public final lkg b;
    public final String c;
    public final enh d;

    public q8h(g8i g8iVar, lkg lkgVar, enh enhVar, String str) {
        this.a = g8iVar;
        this.b = lkgVar;
        this.d = enhVar;
        this.c = str;
    }

    public static r8h a(q8h q8hVar) {
        enh enhVar = q8hVar.d;
        lkg lkgVar = q8hVar.b;
        return new r8h(lkgVar.b(enhVar.f, q8hVar.c), lkgVar.a());
    }

    @Override
    public final int zza() {
        return 17;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                return q8h.a(this.b);
            }
        });
    }
}
