package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzad;
import java.util.concurrent.Callable;

public final class beh implements eeh {
    public final g8i a;
    public final Context b;

    public beh(g8i g8iVar, Context context) {
        this.a = g8iVar;
        this.b = context;
    }

    public static aeh a(beh behVar) {
        return new aeh(zzad.zzb(behVar.b, (String) zzbd.zzc().b(cye.e6)));
    }

    @Override
    public final int zza() {
        return 37;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                return beh.a(this.b);
            }
        });
    }
}
