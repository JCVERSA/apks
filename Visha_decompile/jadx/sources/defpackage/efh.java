package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.w3;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class efh implements eeh {
    public final Context a;
    public final ScheduledExecutorService b;
    public final Executor c;
    public final int d;
    public final boolean e;
    public final boolean f;
    public final w3 g;

    public efh(w3 w3Var, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i, boolean z, boolean z2) {
        this.g = w3Var;
        this.a = context;
        this.b = scheduledExecutorService;
        this.c = executor;
        this.d = i;
        this.e = z;
        this.f = z2;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static ffh a(efh efhVar, AdvertisingIdClient.Info info) {
        tzh tzhVar = new tzh();
        if (efhVar.e) {
            if (((Boolean) zzbd.zzc().b(cye.r3)).booleanValue()) {
                Context context = efhVar.a;
                xzh xzhVarK = xzh.k(context);
                Objects.requireNonNull(info);
                String id = info.getId();
                Objects.requireNonNull(id);
                tzhVar = xzhVarK.j(id, context.getPackageName(), ((Long) zzbd.zzc().b(cye.w3)).longValue(), efhVar.f);
            }
        } else {
            if (((Boolean) zzbd.zzc().b(cye.q3)).booleanValue()) {
                try {
                    Context context2 = efhVar.a;
                    xzh xzhVarK2 = xzh.k(context2);
                    Objects.requireNonNull(info);
                    String id2 = info.getId();
                    Objects.requireNonNull(id2);
                    tzhVar = xzhVarK2.j(id2, context2.getPackageName(), ((Long) zzbd.zzc().b(cye.w3)).longValue(), efhVar.f);
                } catch (IOException | IllegalArgumentException e) {
                    zzv.zzp().x(e, "AdIdInfoSignalSource.getPaidV1");
                    tzhVar = new tzh();
                }
            }
        }
        return new ffh(info, null, tzhVar);
    }

    public static ffh b(efh efhVar, Throwable th) {
        zzbb.zzb();
        ContentResolver contentResolver = efhVar.a.getContentResolver();
        return new ffh(null, contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id"), new tzh());
    }

    @Override
    public final int zza() {
        return 40;
    }

    @Override
    public final im5 zzb() {
        q7i q7iVarZzE = q7i.zzE(this.g.a(this.a, this.d));
        m2i m2iVar = new m2i() {
            @Override
            public final Object apply(Object obj) {
                return efh.a(this.a, (AdvertisingIdClient.Info) obj);
            }
        };
        Executor executor = this.c;
        return (q7i) j8.e((q7i) j8.o((q7i) j8.m(q7iVarZzE, m2iVar, executor), ((Long) zzbd.zzc().b(cye.i1)).longValue(), TimeUnit.MILLISECONDS, this.b), Throwable.class, new m2i() {
            @Override
            public final Object apply(Object obj) {
                return efh.b(this.a, (Throwable) obj);
            }
        }, executor);
    }
}
