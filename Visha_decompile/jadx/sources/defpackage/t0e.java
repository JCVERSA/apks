package defpackage;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a;

public final class t0e extends yda {
    public final yda.a d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t0e(yda.a aVar, Feature[] featureArr, boolean z, int i) {
        super(featureArr, z, i);
        this.d = aVar;
    }

    @Override
    public final void b(a.b bVar, zda zdaVar) {
        this.d.a.accept(bVar, zdaVar);
    }
}
