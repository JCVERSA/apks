package defpackage;

import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzbnp;

public final class l7f implements gff {
    public final eff a;
    public final m6f b;

    public l7f(n7f n7fVar, eff effVar, m6f m6fVar) {
        this.a = effVar;
        this.b = m6fVar;
    }

    @Override
    public final void zza() {
        zze.zza("callJs > getEngine: Promise rejected");
        this.a.d(new zzbnp("Unable to obtain a JavascriptEngine."));
        this.b.h();
    }
}
