package defpackage;

import com.google.android.gms.ads.internal.zzv;
import java.util.concurrent.Callable;

public final class m8h implements eeh {
    public final g8i a;

    public m8h(g8i g8iVar) {
        this.a = g8iVar;
    }

    @Override
    public final int zza() {
        return 55;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable(this) {
            @Override
            public final Object call() {
                return new n8h(zzv.zzC().currentTimeMillis() - zzv.zzp().j().zzg().a());
            }
        });
    }
}
