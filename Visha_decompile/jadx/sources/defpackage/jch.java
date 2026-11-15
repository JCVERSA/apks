package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import java.util.concurrent.Callable;

public final class jch implements eeh {
    public static String c;
    public final g8i a;
    public final Context b;

    public jch(g8i g8iVar, Context context) {
        this.a = g8iVar;
        this.b = context;
    }

    public static kch a(jch jchVar) {
        if (!((Boolean) zzbd.zzc().b(cye.m5)).booleanValue()) {
            return new kch(null);
        }
        if (!((Boolean) zzbd.zzc().b(cye.v5)).booleanValue()) {
            return new kch(zzv.zzB().zzf(jchVar.b));
        }
        if (c == null) {
            c = zzv.zzB().zzf(jchVar.b);
        }
        return new kch(c);
    }

    @Override
    public final int zza() {
        return 27;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                return jch.a(this.b);
            }
        });
    }
}
