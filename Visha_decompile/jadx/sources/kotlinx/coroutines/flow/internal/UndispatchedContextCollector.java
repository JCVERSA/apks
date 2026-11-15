package kotlinx.coroutines.flow.internal;

import defpackage.dia;
import defpackage.oz3;
import defpackage.s74;
import defpackage.wh1;
import defpackage.ws0;
import defpackage.z45;
import defpackage.zfb;
import kotlin.coroutines.d;

public final class UndispatchedContextCollector implements oz3 {
    public final d b;
    public final Object c;
    public final s74 d;

    public UndispatchedContextCollector(oz3 oz3Var, d dVar) {
        this.b = dVar;
        this.c = dia.g(dVar);
        this.d = new UndispatchedContextCollector$emitRef$1(oz3Var, null);
    }

    @Override
    public Object emit(Object obj, wh1 wh1Var) {
        Object objB = ws0.b(this.b, obj, this.c, this.d, wh1Var);
        return objB == z45.f() ? objB : zfb.a;
    }
}
