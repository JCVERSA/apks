package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.j8;
import java.util.ArrayList;
import java.util.concurrent.Executor;

public final class c7h implements eeh {
    public final Executor a;
    public final qef b;

    public c7h(Executor executor, qef qefVar) {
        this.a = executor;
        this.b = qefVar;
    }

    @Override
    public final int zza() {
        return 10;
    }

    @Override
    public final im5 zzb() {
        return ((Boolean) zzbd.zzc().b(cye.d3)).booleanValue() ? j8.h(new d7h(null)) : j8.m(this.b.l(), new m2i() {
            @Override
            public final Object apply(Object obj) {
                ArrayList arrayList = (ArrayList) obj;
                if (true == arrayList.isEmpty()) {
                    arrayList = null;
                }
                return new d7h(arrayList);
            }
        }, this.a);
    }
}
