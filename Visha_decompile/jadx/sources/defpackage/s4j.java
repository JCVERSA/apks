package defpackage;

import com.google.android.gms.measurement.internal.a;
import com.google.android.gms.measurement.internal.j;

public final class s4j extends a {
    public final j e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s4j(j jVar, uoi uoiVar) {
        super(uoiVar);
        this.e = jVar;
    }

    @Override
    public final void c() {
        this.e.a.b().v().a("Tasks have been queued for a long time");
    }
}
