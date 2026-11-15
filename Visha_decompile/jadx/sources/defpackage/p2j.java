package defpackage;

public final class p2j implements k2j {
    public volatile k2j b;
    public volatile boolean c;
    public Object d;

    public p2j(k2j k2jVar) {
        k2jVar.getClass();
        this.b = k2jVar;
    }

    public final String toString() {
        Object obj = this.b;
        StringBuilder sb = new StringBuilder();
        sb.append("Suppliers.memoize(");
        if (obj == null) {
            obj = "<supplier that returned " + this.d + ">";
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }

    @Override
    public final Object zza() {
        if (!this.c) {
            synchronized (this) {
                try {
                    if (!this.c) {
                        k2j k2jVar = this.b;
                        k2jVar.getClass();
                        Object objZza = k2jVar.zza();
                        this.d = objZza;
                        this.c = true;
                        this.b = null;
                        return objZza;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.d;
    }
}
