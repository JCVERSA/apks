package defpackage;

public final class eyi implements qyi, zxi {
    public static final Object c = new Object();
    public volatile qyi a;
    public volatile Object b = c;

    public eyi(qyi qyiVar) {
        this.a = qyiVar;
    }

    public static zxi a(qyi qyiVar) {
        return qyiVar instanceof zxi ? (zxi) qyiVar : new eyi(qyiVar);
    }

    public static qyi b(qyi qyiVar) {
        return qyiVar instanceof eyi ? qyiVar : new eyi(qyiVar);
    }

    public final synchronized Object c() {
        try {
            Object obj = this.b;
            Object obj2 = c;
            if (obj != obj2) {
                return obj;
            }
            Object objZzb = this.a.zzb();
            Object obj3 = this.b;
            if (obj3 != obj2 && obj3 != objZzb) {
                throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + objZzb + ". This is likely due to a circular dependency.");
            }
            this.b = objZzb;
            this.a = null;
            return objZzb;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final Object zzb() {
        Object obj = this.b;
        return obj == c ? c() : obj;
    }
}
