package defpackage;

import com.google.android.gms.internal.ads.zzfuv;

public final class m3i implements k3i {
    public static final k3i e = new k3i() {
        @Override
        public final Object zza() {
            throw new IllegalStateException();
        }
    };
    public final zzfuv b = new zzfuv();
    public volatile k3i c;
    public Object d;

    public m3i(k3i k3iVar) {
        this.c = k3iVar;
    }

    public final String toString() {
        Object obj = this.c;
        if (obj == e) {
            obj = "<supplier that returned " + String.valueOf(this.d) + ">";
        }
        return "Suppliers.memoize(" + String.valueOf(obj) + ")";
    }

    @Override
    public final Object zza() {
        k3i k3iVar = this.c;
        k3i k3iVar2 = e;
        if (k3iVar != k3iVar2) {
            synchronized (this.b) {
                try {
                    if (this.c != k3iVar2) {
                        Object objZza = this.c.zza();
                        this.d = objZza;
                        this.c = k3iVar2;
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
