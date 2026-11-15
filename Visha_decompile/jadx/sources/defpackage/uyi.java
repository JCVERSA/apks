package defpackage;

public final class uyi implements qyi {
    public static final Object c = new Object();
    public volatile qyi a;
    public volatile Object b = c;

    public uyi(qyi qyiVar) {
        this.a = qyiVar;
    }

    public static qyi a(qyi qyiVar) {
        return ((qyiVar instanceof uyi) || (qyiVar instanceof eyi)) ? qyiVar : new uyi(qyiVar);
    }

    @Override
    public final Object zzb() {
        Object obj = this.b;
        if (obj != c) {
            return obj;
        }
        qyi qyiVar = this.a;
        if (qyiVar == null) {
            return this.b;
        }
        Object objZzb = qyiVar.zzb();
        this.b = objZzb;
        this.a = null;
        return objZzb;
    }
}
