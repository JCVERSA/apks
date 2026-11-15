package defpackage;

public final class fqf implements v7i {
    public final String a;
    public final gqf b;

    public fqf(gqf gqfVar, String str) {
        this.a = str;
        this.b = gqfVar;
    }

    @Override
    public final void zza(Throwable th) {
        String str = this.a;
        gqf gqfVar = this.b;
        gqfVar.i.a(gqfVar.h.e(gqfVar.f, gqfVar.g, false, str, null, gqfVar.y()), null);
    }

    @Override
    public final void zzb(Object obj) {
        gqf gqfVar = this.b;
        gqfVar.i.a(gqfVar.h.e(gqfVar.f, gqfVar.g, false, this.a, (String) obj, gqfVar.y()), gqfVar.o);
    }
}
