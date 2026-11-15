package kotlinx.coroutines.channels;

import defpackage.e74;
import defpackage.qf7;
import defpackage.ue3;
import defpackage.wh1;
import defpackage.xq8;
import defpackage.zfb;
import kotlinx.coroutines.internal.UndeliveredElementException;

public class b extends BufferedChannel {
    public final int n;
    public final BufferOverflow o;

    public b(int i, BufferOverflow bufferOverflow, e74 e74Var) {
        super(i, e74Var);
        this.n = i;
        this.o = bufferOverflow;
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            throw new IllegalArgumentException(("This implementation does not support suspension for senders, use " + xq8.b(BufferedChannel.class).o() + " instead").toString());
        }
        if (i >= 1) {
            return;
        }
        throw new IllegalArgumentException(("Buffered channel capacity must be at least 1, but " + i + " was specified").toString());
    }

    public static Object n1(b bVar, Object obj, wh1 wh1Var) throws Throwable {
        UndeliveredElementException undeliveredElementExceptionC;
        Object objP1 = bVar.p1(obj, true);
        if (!(objP1 instanceof a.C0413a)) {
            return zfb.a;
        }
        a.e(objP1);
        e74 e74Var = bVar.c;
        if (e74Var == null || (undeliveredElementExceptionC = qf7.c(e74Var, obj, null, 2, null)) == null) {
            throw bVar.i0();
        }
        ue3.a(undeliveredElementExceptionC, bVar.i0());
        throw undeliveredElementExceptionC;
    }

    @Override
    public Object f(Object obj) {
        return p1(obj, false);
    }

    @Override
    public Object l(Object obj, wh1 wh1Var) {
        return n1(this, obj, wh1Var);
    }

    public final Object o1(Object obj, boolean z) {
        e74 e74Var;
        UndeliveredElementException undeliveredElementExceptionC;
        Object objF = super.f(obj);
        if (a.i(objF) || a.h(objF)) {
            return objF;
        }
        if (!z || (e74Var = this.c) == null || (undeliveredElementExceptionC = qf7.c(e74Var, obj, null, 2, null)) == null) {
            return a.b.c(zfb.a);
        }
        throw undeliveredElementExceptionC;
    }

    public final Object p1(Object obj, boolean z) {
        return this.o == BufferOverflow.DROP_LATEST ? o1(obj, z) : d1(obj);
    }

    @Override
    public boolean w0() {
        return this.o == BufferOverflow.DROP_OLDEST;
    }
}
