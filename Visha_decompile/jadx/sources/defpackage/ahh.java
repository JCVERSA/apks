package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.j8;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Arrays;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class ahh implements eeh {
    public final qef a;
    public final boolean b;
    public final boolean c;
    public final ScheduledExecutorService d;
    public final g8i e;
    public final int f;
    public final int g;

    public ahh(qef qefVar, boolean z, boolean z2, fef fefVar, g8i g8iVar, String str, ScheduledExecutorService scheduledExecutorService, int i, int i2) {
        this.a = qefVar;
        this.b = z;
        this.c = z2;
        this.e = g8iVar;
        this.d = scheduledExecutorService;
        this.f = i;
        this.g = i2;
    }

    public static bhh a(ahh ahhVar, Exception exc) {
        ahhVar.a.x(exc, "TrustlessTokenSignal");
        return new bhh(null);
    }

    @Override
    public final int zza() {
        return 50;
    }

    @Override
    public final im5 zzb() {
        boolean zContains;
        if ((!((Boolean) zzbd.zzc().b(cye.X6)).booleanValue() || !this.c) && this.g != 2) {
            if (((Boolean) zzbd.zzc().b(cye.Z6)).booleanValue()) {
                zContains = Arrays.asList(((String) zzbd.zzc().b(cye.a7)).split(StringUtils.COMMA)).contains(String.valueOf(this.f));
            } else {
                zContains = this.b;
            }
            if (!zContains) {
                return j8.h(new bhh(null));
            }
            im5 im5VarH = j8.h(null);
            m2i m2iVar = new m2i() {
                @Override
                public final Object apply(Object obj) {
                    return new bhh((String) obj);
                }
            };
            g8i g8iVar = this.e;
            return j8.e(j8.o(j8.m(im5VarH, m2iVar, g8iVar), ((Long) n0f.b.e()).longValue(), TimeUnit.MILLISECONDS, this.d), Exception.class, new m2i() {
                @Override
                public final Object apply(Object obj) {
                    return ahh.a(this.a, (Exception) obj);
                }
            }, g8iVar);
        }
        return j8.h(new bhh(null));
    }
}
