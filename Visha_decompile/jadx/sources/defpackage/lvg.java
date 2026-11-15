package defpackage;

public final class lvg {
    public static final Object h = new Object();
    public final String a;
    public final yrg b;
    public final Object c;
    public final Object d;
    public final Object e = new Object();
    public volatile Object f = null;
    public volatile Object g = null;

    public lvg(String str, Object obj, Object obj2, yrg yrgVar, ytg ytgVar) {
        this.a = str;
        this.c = obj;
        this.d = obj2;
        this.b = yrgVar;
    }

    public final Object a(Object obj) {
        synchronized (this.e) {
        }
        if (obj != null) {
            return obj;
        }
        if (wsg.a == null) {
            return this.c;
        }
        synchronized (h) {
            try {
                if (b7e.a()) {
                    return this.g == null ? this.c : this.g;
                }
                try {
                    for (lvg lvgVar : kwg.a) {
                        if (b7e.a()) {
                            throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                        }
                        Object objZza = null;
                        try {
                            yrg yrgVar = lvgVar.b;
                            if (yrgVar != null) {
                                objZza = yrgVar.zza();
                            }
                        } catch (IllegalStateException unused) {
                        }
                        synchronized (h) {
                            lvgVar.g = objZza;
                        }
                    }
                } catch (SecurityException unused2) {
                }
                yrg yrgVar2 = this.b;
                if (yrgVar2 == null) {
                    return this.c;
                }
                try {
                    return yrgVar2.zza();
                } catch (IllegalStateException unused3) {
                    return this.c;
                } catch (SecurityException unused4) {
                    return this.c;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String b() {
        return this.a;
    }
}
