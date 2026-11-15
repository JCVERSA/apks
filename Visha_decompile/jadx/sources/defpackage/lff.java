package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class lff {
    public final eff a;
    public final AtomicInteger b;

    public lff() {
        eff effVar = new eff();
        this.a = effVar;
        this.b = new AtomicInteger(0);
        j8.r(effVar, new jff(this), zef.g);
    }

    public final int a() {
        return this.b.get();
    }

    public final void c() {
        this.a.d(new Exception());
    }

    public final void d(Throwable th, String str) {
        this.a.d(th);
        if (((Boolean) zzbd.zzc().b(cye.L7)).booleanValue()) {
            zzv.zzp().w(th, str);
        }
    }

    public final void e(Object obj) {
        this.a.c(obj);
    }

    public final void f(iff iffVar, gff gffVar) {
        j8.r(this.a, new kff(this, iffVar, gffVar), zef.g);
    }
}
