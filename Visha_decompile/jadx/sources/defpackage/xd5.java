package defpackage;

import java.math.BigDecimal;
import java.math.BigInteger;
import org.python.core.Py;
import org.python.core.PyLong;
import org.python.core.PyObject;
import org.python.core.PyString;

public class xd5 implements gc7 {
    public static final Class g;
    public static final xd5 h;
    public static Class i;
    public final eq6 e = new vd5(this);
    public boolean f = true;

    public class a extends PyObject implements aga {
        public final zfa b;

        public a(zfa zfaVar) {
            this.b = zfaVar;
        }

        @Override
        public zfa b() {
            return this.b;
        }
    }

    static {
        Class clsD = i;
        if (clsD == null) {
            clsD = d("org.python.core.PyObject");
            i = clsD;
        }
        g = clsD;
        h = new xd5();
    }

    public static Class d(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    @Override
    public zfa c(Object obj) {
        if (obj == null) {
            return null;
        }
        return this.e.c(obj);
    }

    public boolean e() {
        return this.f;
    }

    public PyObject f(zfa zfaVar) {
        if (zfaVar instanceof c8) {
            return Py.java2py(((c8) zfaVar).getAdaptedObject(g));
        }
        if (zfaVar instanceof lpc) {
            return Py.java2py(((lpc) zfaVar).getWrappedObject());
        }
        if (zfaVar instanceof mga) {
            return new PyString(((mga) zfaVar).getAsString());
        }
        if (!(zfaVar instanceof hga)) {
            return new a(zfaVar);
        }
        Number asNumber = ((hga) zfaVar).getAsNumber();
        if (asNumber instanceof BigDecimal) {
            asNumber = ms7.a(asNumber);
        }
        return asNumber instanceof BigInteger ? new PyLong((BigInteger) asNumber) : Py.java2py(asNumber);
    }
}
