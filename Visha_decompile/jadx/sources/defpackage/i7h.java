package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.internal.ads.j8;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class i7h implements eeh {
    public final qef a;
    public ye b;
    public final ScheduledExecutorService c;
    public final g8i d;
    public final Context e;

    public i7h(Context context, qef qefVar, ScheduledExecutorService scheduledExecutorService, g8i g8iVar) {
        if (!((Boolean) zzbd.zzc().b(cye.i3)).booleanValue()) {
            this.b = AppSet.a(context);
        }
        this.e = context;
        this.a = qefVar;
        this.c = scheduledExecutorService;
        this.d = g8iVar;
    }

    @Override
    public final int zza() {
        return 11;
    }

    @Override
    public final im5 zzb() {
        if (((Boolean) zzbd.zzc().b(cye.e3)).booleanValue()) {
            if (!((Boolean) zzbd.zzc().b(cye.j3)).booleanValue()) {
                if (!((Boolean) zzbd.zzc().b(cye.f3)).booleanValue()) {
                    return j8.m(c0i.a(this.b.a(), null), new m2i() {
                        @Override
                        public final Object apply(Object obj) {
                            ze zeVar = (ze) obj;
                            return new j7h(zeVar.a(), zeVar.b());
                        }
                    }, zef.g);
                }
                xda xdaVarA = ((Boolean) zzbd.zzc().b(cye.i3)).booleanValue() ? joh.a(this.e) : this.b.a();
                if (xdaVarA == null) {
                    return j8.h(new j7h(null, -1));
                }
                im5 im5VarN = j8.n(c0i.a(xdaVarA, null), new k7i() {
                    @Override
                    public final im5 zza(Object obj) {
                        ze zeVar = (ze) obj;
                        return zeVar == null ? j8.h(new j7h(null, -1)) : j8.h(new j7h(zeVar.a(), zeVar.b()));
                    }
                }, zef.g);
                if (((Boolean) zzbd.zzc().b(cye.g3)).booleanValue()) {
                    im5VarN = j8.o(im5VarN, ((Long) zzbd.zzc().b(cye.h3)).longValue(), TimeUnit.MILLISECONDS, this.c);
                }
                return j8.e(im5VarN, Exception.class, new m2i() {
                    @Override
                    public final Object apply(Object obj) {
                        this.a.a.x((Exception) obj, "AppSetIdInfoSignal");
                        return new j7h(null, -1);
                    }
                }, this.d);
            }
        }
        return j8.h(new j7h(null, -1));
    }
}
