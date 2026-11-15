package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.tasks.a;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class qfh implements eeh {
    public final qef a;
    public final ScheduledExecutorService b;
    public final g8i c;

    public qfh(String str, kwe kweVar, qef qefVar, ScheduledExecutorService scheduledExecutorService, g8i g8iVar) {
        this.a = qefVar;
        this.b = scheduledExecutorService;
        this.c = g8iVar;
    }

    public static rfh a(qfh qfhVar, Exception exc) {
        qfhVar.a.x(exc, "AppSetIdInfoGmscoreSignal");
        return new rfh(null, -1);
    }

    @Override
    public final int zza() {
        return 43;
    }

    @Override
    public final im5 zzb() {
        if (((Boolean) zzbd.zzc().b(cye.e3)).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.j3)).booleanValue()) {
                im5 im5VarA = c0i.a(a.e(null), null);
                k7i k7iVar = new k7i() {
                    @Override
                    public final im5 zza(Object obj) {
                        ze zeVar = (ze) obj;
                        return zeVar == null ? j8.h(new rfh(null, -1)) : j8.h(new rfh(zeVar.a(), zeVar.b()));
                    }
                };
                g8i g8iVar = this.c;
                im5 im5VarN = j8.n(im5VarA, k7iVar, g8iVar);
                if (((Boolean) hze.a.e()).booleanValue()) {
                    im5VarN = j8.o(im5VarN, ((Long) hze.b.e()).longValue(), TimeUnit.MILLISECONDS, this.b);
                }
                return j8.e(im5VarN, Exception.class, new m2i() {
                    @Override
                    public final Object apply(Object obj) {
                        return qfh.a(this.a, (Exception) obj);
                    }
                }, g8iVar);
            }
        }
        return j8.h(new rfh(null, -1));
    }
}
