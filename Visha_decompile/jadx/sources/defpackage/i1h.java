package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.g5;

public final class i1h implements fyi {
    public final qyi a;
    public final qyi b;

    public i1h(qyi qyiVar, qyi qyiVar2) {
        this.a = qyiVar;
        this.b = qyiVar2;
    }

    @Override
    public final g5 zzb() {
        return new g5((Context) this.a.zzb(), (bjg) this.b.zzb());
    }
}
