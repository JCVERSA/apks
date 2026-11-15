package defpackage;

import com.google.android.gms.ads.nonagon.signalgeneration.zzab;
import com.google.android.gms.ads.nonagon.signalgeneration.zzac;
import com.google.android.gms.ads.nonagon.signalgeneration.zzaz;
import com.google.android.gms.internal.ads.e4;

public final class bnf implements zzab {
    public final zlf a;
    public ryf b;
    public zzaz c;

    public bnf(zlf zlfVar, dnf dnfVar) {
        this.a = zlfVar;
    }

    @Override
    public final zzab zza(ryf ryfVar) {
        this.b = ryfVar;
        return this;
    }

    @Override
    public final zzab zzb(zzaz zzazVar) {
        this.c = zzazVar;
        return this;
    }

    @Override
    public final zzac zzc() {
        pyi.c(this.b, ryf.class);
        pyi.c(this.c, zzaz.class);
        return new e4(this.a, this.c, new ivf(), new qxf(), new fng(), this.b, null, null);
    }
}
