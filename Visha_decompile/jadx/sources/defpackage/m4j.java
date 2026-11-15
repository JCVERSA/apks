package defpackage;

import com.google.android.gms.measurement.internal.a;
import com.google.android.gms.measurement.internal.j;

public final class m4j extends a {
    public final j e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m4j(j jVar, uoi uoiVar) {
        super(uoiVar);
        this.e = jVar;
    }

    @Override
    public final void c() {
        j jVar = this.e;
        jVar.g();
        if (jVar.y()) {
            jVar.a.b().u().a("Inactivity, disconnecting from the service");
            jVar.P();
        }
    }
}
