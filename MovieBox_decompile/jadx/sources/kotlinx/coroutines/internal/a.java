package kotlinx.coroutines.internal;

import kotlin.jvm.functions.Function2;

public abstract class a {

    private static final z f64878a = new z("CLOSED");

    public static final b b(b bVar) {
        while (true) {
            Object objG = bVar.g();
            if (objG == f64878a) {
                return bVar;
            }
            b bVar2 = (b) objG;
            if (bVar2 != null) {
                bVar = bVar2;
            } else if (bVar.m()) {
                return bVar;
            }
        }
    }

    public static final Object c(w wVar, long j10, Function2 function2) {
        while (true) {
            if (wVar.f64918c >= j10 && !wVar.k()) {
                return x.a(wVar);
            }
            Object objG = wVar.g();
            if (objG == f64878a) {
                return x.a(f64878a);
            }
            w wVar2 = (w) ((b) objG);
            if (wVar2 == null) {
                wVar2 = (w) function2.invoke(Long.valueOf(wVar.f64918c + 1), wVar);
                if (wVar.o(wVar2)) {
                    if (wVar.k()) {
                        wVar.n();
                    }
                }
            }
            wVar = wVar2;
        }
    }
}
