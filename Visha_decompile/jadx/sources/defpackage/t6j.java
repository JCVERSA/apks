package defpackage;

import com.google.android.gms.measurement.internal.a;

public final class t6j extends a {
    public final w6j e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t6j(w6j w6jVar, uoi uoiVar) {
        super(uoiVar);
        this.e = w6jVar;
    }

    @Override
    public final void c() {
        w6j w6jVar = this.e;
        w6jVar.d.g();
        w6jVar.d(false, false, w6jVar.d.a.c().elapsedRealtime());
        w6jVar.d.a.y().m(w6jVar.d.a.c().elapsedRealtime());
    }
}
