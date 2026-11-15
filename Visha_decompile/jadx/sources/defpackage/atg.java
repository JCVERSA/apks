package defpackage;

import android.os.Binder;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzdxq;
import com.google.android.gms.internal.ads.zzdyu;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.Objects;
import java.util.concurrent.ExecutionException;

public final class atg {
    public final g8i a;
    public final dsg b;
    public final zxi c;

    public atg(g8i g8iVar, dsg dsgVar, zxi zxiVar) {
        this.a = g8iVar;
        this.b = dsgVar;
        this.c = zxiVar;
    }

    public final im5 e(final zzbuy zzbuyVar) {
        k7i k7iVar = new k7i() {
            @Override
            public final im5 zza(Object obj) {
                String str = new String(g6i.b((InputStream) obj), StandardCharsets.UTF_8);
                zzbuy zzbuyVar2 = zzbuyVar;
                zzbuyVar2.zzj = str;
                return j8.h(zzbuyVar2);
            }
        };
        final dsg dsgVar = this.b;
        Objects.requireNonNull(dsgVar);
        return g(zzbuyVar, new zsg() {
            @Override
            public final im5 a(zzbuy zzbuyVar2) {
                return dsgVar.c(zzbuyVar2);
            }
        }, new zsg() {
            @Override
            public final im5 a(zzbuy zzbuyVar2) {
                return ((zzdyu) this.a.c.zzb()).zzb(zzbuyVar2, Binder.getCallingUid());
            }
        }, k7iVar);
    }

    public final im5 f(zzbuy zzbuyVar) {
        return g(zzbuyVar, new zsg() {
            @Override
            public final im5 a(zzbuy zzbuyVar2) {
                return this.a.b.d(zzbuyVar2.zzh);
            }
        }, new zsg() {
            @Override
            public final im5 a(zzbuy zzbuyVar2) {
                return ((zzdyu) this.a.c.zzb()).zzj(zzbuyVar2.zzh);
            }
        }, new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return j8.h(null);
            }
        });
    }

    public final im5 g(final zzbuy zzbuyVar, zsg zsgVar, final zsg zsgVar2, final k7i k7iVar) {
        String str = zzbuyVar.zzd;
        zzv.zzq();
        q7i q7iVarZzE = q7i.zzE(zzs.zzD(str) ? j8.g(new zzdxq(1)) : j8.f(zsgVar.a(zzbuyVar), ExecutionException.class, new k7i() {
            @Override
            public final im5 zza(Object obj) {
                Throwable cause = (ExecutionException) obj;
                if (cause.getCause() != null) {
                    cause = cause.getCause();
                }
                return j8.g(cause);
            }
        }, this.a));
        k7i k7iVar2 = new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return j8.h(((msg) obj).b());
            }
        };
        g8i g8iVar = this.a;
        return (q7i) j8.f((q7i) j8.n((q7i) j8.n(q7iVarZzE, k7iVar2, g8iVar), k7iVar, g8iVar), zzdxq.class, new k7i() {
            @Override
            public final im5 zza(Object obj) {
                atg atgVar = this.a;
                return j8.n(zsgVar2.a(zzbuyVar), k7iVar, atgVar.a);
            }
        }, g8iVar);
    }
}
