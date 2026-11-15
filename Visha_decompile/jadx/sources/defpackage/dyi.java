package defpackage;

public final class dyi implements fyi {
    public qyi a;

    public static void a(qyi qyiVar, qyi qyiVar2) {
        dyi dyiVar = (dyi) qyiVar;
        if (dyiVar.a != null) {
            throw new IllegalStateException();
        }
        dyiVar.a = qyiVar2;
    }

    @Override
    public final Object zzb() {
        qyi qyiVar = this.a;
        if (qyiVar != null) {
            return qyiVar.zzb();
        }
        throw new IllegalStateException();
    }
}
