package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.j8;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class y5h implements eeh {
    public final im5 a;
    public final Executor b;
    public final ScheduledExecutorService c;

    public y5h(im5 im5Var, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.a = im5Var;
        this.b = executor;
        this.c = scheduledExecutorService;
    }

    @Override
    public final int zza() {
        return 6;
    }

    @Override
    public final im5 zzb() {
        k7i k7iVar = new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return j8.h(new z5h((String) obj));
            }
        };
        im5 im5Var = this.a;
        Executor executor = this.b;
        im5 im5VarN = j8.n(im5Var, k7iVar, executor);
        qxe qxeVar = cye.Bc;
        if (((Integer) zzbd.zzc().b(qxeVar)).intValue() > 0) {
            im5VarN = j8.o(im5VarN, ((Integer) zzbd.zzc().b(qxeVar)).intValue(), TimeUnit.MILLISECONDS, this.c);
        }
        return j8.f(im5VarN, Throwable.class, new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return ((Throwable) obj) instanceof TimeoutException ? j8.h(new z5h(Integer.toString(17))) : j8.h(new z5h(null));
            }
        }, executor);
    }
}
