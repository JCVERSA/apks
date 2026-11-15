package defpackage;

public final class kph implements v7i {
    public final nph a;
    public final oph b;

    public kph(oph ophVar, nph nphVar) {
        this.a = nphVar;
        this.b = ophVar;
    }

    @Override
    public final void zza(Throwable th) {
        oph ophVar = this.b;
        synchronized (ophVar) {
            ophVar.e = null;
        }
    }

    @Override
    public final void zzb(Object obj) {
        oph ophVar = this.b;
        synchronized (ophVar) {
            try {
                ophVar.e = null;
                ophVar.d.addFirst(this.a);
                if (ophVar.f == 1) {
                    ophVar.h();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
