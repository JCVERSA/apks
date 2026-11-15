package com.transsion.transfer.androidasync.future;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

public class l {
    public static f c(Iterable iterable, z zVar) {
        w wVar = new w();
        e(iterable.iterator(), zVar, wVar, null);
        return wVar;
    }

    public static f d(Object[] objArr, z zVar) {
        return c(Arrays.asList(objArr), zVar);
    }

    public static void e(final Iterator it, final z zVar, final w wVar, Exception e10) {
        while (it.hasNext()) {
            try {
                f fVarThen = zVar.then(it.next());
                Objects.requireNonNull(wVar);
                fVarThen.j(new x() {
                    @Override
                    public final void a(Object obj) {
                        wVar.J(obj);
                    }
                }).e(new d() {
                    @Override
                    public final void a(Exception exc) {
                        l.e(it, zVar, wVar, exc);
                    }
                });
                return;
            } catch (Exception e11) {
                e10 = e11;
            }
        }
        if (e10 == null) {
            wVar.G(new Exception("empty list"));
        } else {
            wVar.G(e10);
        }
    }
}
