package defpackage;

import android.content.Context;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzffn;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

public final class tqg implements fyi {
    public final qyi a;
    public final qyi b;

    public tqg(qyi qyiVar, qyi qyiVar2) {
        this.a = qyiVar;
        this.b = qyiVar2;
    }

    @Override
    public final Object zzb() {
        lrh lrhVar = (lrh) this.a.zzb();
        final CookieManager cookieManagerZza = zzv.zzr().zza((Context) this.b.zzb());
        crh crhVarI = xqh.a(new Callable() {
            @Override
            public final Object call() {
                CookieManager cookieManager = cookieManagerZza;
                if (cookieManager == null) {
                    return "";
                }
                return cookieManager.getCookie((String) zzbd.zzc().b(cye.c1));
            }
        }, zzffn.WEBVIEW_COOKIE, lrhVar).i(1L, TimeUnit.SECONDS);
        final pqh pqhVar = new pqh() {
            @Override
            public final Object zza(Object obj) {
                return "";
            }
        };
        return crhVarI.c(Exception.class, new k7i(pqhVar) {
            @Override
            public final im5 zza(Object obj) {
                return j8.h("");
            }
        }).a();
    }
}
