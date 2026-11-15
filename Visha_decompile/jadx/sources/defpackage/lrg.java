package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzdvg;
import com.google.android.gms.internal.ads.zzfgn;
import java.io.InputStreamReader;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;

public final class lrg implements lsg {
    public static final Pattern h = Pattern.compile("Received error HTTP response code: (.*)");
    public final jqg a;
    public final g8i b;
    public final enh c;
    public final ScheduledExecutorService d;
    public final pug e;
    public final zzfgn f;
    public final Context g;

    public lrg(Context context, enh enhVar, jqg jqgVar, g8i g8iVar, ScheduledExecutorService scheduledExecutorService, pug pugVar, zzfgn zzfgnVar) {
        this.g = context;
        this.c = enhVar;
        this.a = jqgVar;
        this.b = g8iVar;
        this.d = scheduledExecutorService;
        this.e = pugVar;
        this.f = zzfgnVar;
    }

    @Override
    public final im5 a(zzbuy zzbuyVar) {
        Context context = this.g;
        im5 im5VarC = this.a.c(zzbuyVar);
        wrh wrhVarA = vrh.a(context, 11);
        gsh.d(im5VarC, wrhVarA);
        im5 im5VarN = j8.n(im5VarC, new k7i() {
            @Override
            public final im5 zza(Object obj) {
                msg msgVar = (msg) obj;
                return j8.h(new vmh(new smh(this.a.c), umh.a(new InputStreamReader(msgVar.b()), msgVar.a())));
            }
        }, this.b);
        if (((Boolean) zzbd.zzc().b(cye.E5)).booleanValue()) {
            im5VarN = j8.f(j8.o(im5VarN, ((Integer) zzbd.zzc().b(cye.F5)).intValue(), TimeUnit.SECONDS, this.d), TimeoutException.class, new k7i() {
                @Override
                public final im5 zza(Object obj) {
                    return j8.g(new zzdvg(5));
                }
            }, zef.g);
        }
        gsh.a(im5VarN, this.f, wrhVarA);
        j8.r(im5VarN, new krg(this), zef.g);
        return im5VarN;
    }
}
