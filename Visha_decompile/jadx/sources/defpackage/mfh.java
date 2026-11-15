package defpackage;

import android.content.pm.PackageInfo;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.w3;
import java.util.concurrent.Executor;

public final class mfh implements eeh {
    public final Executor a;
    public final String b;

    public mfh(w3 w3Var, Executor executor, String str, PackageInfo packageInfo, int i) {
        this.a = executor;
        this.b = str;
    }

    @Override
    public final int zza() {
        return 41;
    }

    @Override
    public final im5 zzb() {
        im5 im5VarH = j8.h(this.b);
        m2i m2iVar = new m2i() {
            @Override
            public final Object apply(Object obj) {
                return new nfh((String) obj);
            }
        };
        Executor executor = this.a;
        return j8.f(j8.m(im5VarH, m2iVar, executor), Throwable.class, new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return j8.h(new nfh(this.a.b));
            }
        }, executor);
    }
}
