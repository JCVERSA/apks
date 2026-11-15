package defpackage;

import com.google.android.gms.ads.internal.zzv;
import java.util.concurrent.Callable;

public final class xah implements eeh {
    public final g8i a;

    public xah(g8i g8iVar) {
        this.a = g8iVar;
    }

    @Override
    public final int zza() {
        return 20;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                return new yah(zzv.zzt().zzb(), zzv.zzt().zzm());
            }
        });
    }
}
