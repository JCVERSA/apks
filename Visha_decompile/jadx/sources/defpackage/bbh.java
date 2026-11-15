package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import java.util.concurrent.Callable;

public final class bbh implements eeh {
    public final Context a;
    public final g8i b;

    public bbh(g8i g8iVar, Context context) {
        this.b = g8iVar;
        this.a = context;
    }

    public static ebh a(bbh bbhVar) {
        zzv.zzq();
        return new ebh(zzs.zzt(bbhVar.a));
    }

    @Override
    public final int zza() {
        return 57;
    }

    @Override
    public final im5 zzb() {
        return this.b.m(new Callable() {
            @Override
            public final Object call() {
                return bbh.a(this.b);
            }
        });
    }
}
