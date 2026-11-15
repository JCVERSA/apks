package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.zzv;
import java.util.concurrent.Callable;

public final class wbh implements eeh {
    public final g8i a;

    public wbh(g8i g8iVar) {
        this.a = g8iVar;
    }

    @Override
    public final int zza() {
        return 24;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                Bundle bundle = new Bundle();
                Runtime runtime = Runtime.getRuntime();
                bundle.putLong("runtime_free", runtime.freeMemory());
                bundle.putLong("runtime_max", runtime.maxMemory());
                bundle.putLong("runtime_total", runtime.totalMemory());
                bundle.putInt("web_view_count", zzv.zzp().c());
                return new xbh(bundle);
            }
        });
    }
}
