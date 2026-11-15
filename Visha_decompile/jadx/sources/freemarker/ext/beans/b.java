package freemarker.ext.beans;

import defpackage.ai0;
import defpackage.an6;
import defpackage.bfa;
import defpackage.c8;
import defpackage.co4;
import defpackage.d1d;
import defpackage.dh;
import defpackage.dy5;
import defpackage.eq6;
import defpackage.et1;
import defpackage.ffa;
import defpackage.fq6;
import defpackage.fu7;
import defpackage.g0d;
import defpackage.gc7;
import defpackage.gv8;
import defpackage.hc7;
import defpackage.hga;
import defpackage.hx0;
import defpackage.im9;
import defpackage.km9;
import defpackage.lf8;
import defpackage.lpc;
import defpackage.lw0;
import defpackage.m0d;
import defpackage.m71;
import defpackage.mga;
import defpackage.mv0;
import defpackage.mx9;
import defpackage.nga;
import defpackage.o0d;
import defpackage.oe9;
import defpackage.ofa;
import defpackage.p0;
import defpackage.p17;
import defpackage.p71;
import defpackage.pq5;
import defpackage.qc9;
import defpackage.qpc;
import defpackage.sd0;
import defpackage.td0;
import defpackage.u0d;
import defpackage.ud0;
import defpackage.vd0;
import defpackage.w37;
import defpackage.wd0;
import defpackage.xd0;
import defpackage.xe1;
import defpackage.xt8;
import defpackage.yd0;
import defpackage.yz9;
import defpackage.zfa;
import freemarker.core.BugException;
import freemarker.core._TemplateModelException;
import freemarker.ext.util.IdentityHashMap;
import freemarker.template.TemplateModelException;
import freemarker.template.Version;
import freemarker.template.utility.UndeclaredThrowableException;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class b implements gv8, qpc {
    public static Class B;
    public static Class C;
    public static Class D;
    public static Class E;
    public static Class F;
    public static Class G;
    public static Class H;
    public static Class I;
    public static Class J;
    public static Class K;
    public static Class L;
    public static Class M;
    public static Class N;
    public static Class O;
    public static Class P;
    public static Class Q;
    public static Class R;
    public static Class S;
    public static Class T;
    public static Class U;
    public static Class V;
    public static Class W;
    public static Class X;
    public static Class Y;
    public static Class Z;
    public static Class a0;
    public static Class b0;
    public static Class c0;
    public static Class d0;
    public static Class e0;
    public static volatile boolean y;
    public final Object e;
    public c f;
    public final mx9 g;
    public final lw0 h;
    public final eq6 i;
    public final ai0 j;
    public final ai0 k;
    public volatile boolean l;
    public zfa m;
    public int n;
    public gc7 o;
    public boolean p;
    public boolean q;
    public boolean r;
    public final Version s;
    public final fq6 t;
    public static final pq5 u = pq5.k("freemarker.beans");
    public static final Object v = hc7.d;
    public static final Class w = Iterable.class;
    public static final Constructor x = m();
    public static final fq6 z = new vd0();
    public static final fq6 A = new wd0();

    public static final class a {
        public PropertyDescriptor a;
        public String b;
        public boolean c;

        public PropertyDescriptor a() {
            return this.a;
        }

        public String b() {
            return this.b;
        }

        public boolean c() {
            return this.c;
        }

        public void d(Method method) {
            this.a = null;
            this.b = method.getName();
            this.c = true;
        }
    }

    public static final class C0347b {
        public Method a;
        public Class b;

        public Class a() {
            return this.b;
        }

        public Method b() {
            return this.a;
        }

        public void c(Class cls) {
            this.b = cls;
        }

        public void d(Method method) {
            this.a = method;
        }
    }

    public b() {
        this(xe1.k0);
    }

    public static boolean A(Version version) {
        return version.intValue() >= d1d.d;
    }

    public static Version G(Version version) {
        d1d.a(version);
        if (version.intValue() >= d1d.a) {
            return A(version) ? xe1.h0 : xe1.e0;
        }
        throw new IllegalArgumentException("Version must be at least 2.3.0.");
    }

    public static Class i(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static Object j(BigDecimal bigDecimal, Class cls) throws Throwable {
        if (cls != Integer.TYPE) {
            Class clsI = X;
            if (clsI == null) {
                clsI = i("java.lang.Integer");
                X = clsI;
            }
            if (cls != clsI) {
                if (cls != Double.TYPE) {
                    Class clsI2 = Z;
                    if (clsI2 == null) {
                        clsI2 = i("java.lang.Double");
                        Z = clsI2;
                    }
                    if (cls != clsI2) {
                        if (cls != Long.TYPE) {
                            Class clsI3 = Y;
                            if (clsI3 == null) {
                                clsI3 = i("java.lang.Long");
                                Y = clsI3;
                            }
                            if (cls != clsI3) {
                                if (cls != Float.TYPE) {
                                    Class clsI4 = b0;
                                    if (clsI4 == null) {
                                        clsI4 = i("java.lang.Float");
                                        b0 = clsI4;
                                    }
                                    if (cls != clsI4) {
                                        if (cls != Short.TYPE) {
                                            Class clsI5 = d0;
                                            if (clsI5 == null) {
                                                clsI5 = i("java.lang.Short");
                                                d0 = clsI5;
                                            }
                                            if (cls != clsI5) {
                                                if (cls != Byte.TYPE) {
                                                    Class clsI6 = c0;
                                                    if (clsI6 == null) {
                                                        clsI6 = i("java.lang.Byte");
                                                        c0 = clsI6;
                                                    }
                                                    if (cls != clsI6) {
                                                        Class clsI7 = e0;
                                                        if (clsI7 == null) {
                                                            clsI7 = i("java.math.BigInteger");
                                                            e0 = clsI7;
                                                        }
                                                        return clsI7.isAssignableFrom(cls) ? bigDecimal.toBigInteger() : bigDecimal;
                                                    }
                                                }
                                                return new Byte(bigDecimal.byteValue());
                                            }
                                        }
                                        return new Short(bigDecimal.shortValue());
                                    }
                                }
                                return new Float(bigDecimal.floatValue());
                            }
                        }
                        return new Long(bigDecimal.longValue());
                    }
                }
                return new Double(bigDecimal.doubleValue());
            }
        }
        return new Integer(bigDecimal.intValue());
    }

    public static void k(Class[] clsArr, Object[] objArr) {
        int length = clsArr.length;
        int length2 = objArr.length;
        int iMin = Math.min(length, length2);
        for (int i = 0; i < iMin; i++) {
            Object obj = objArr[i];
            if (obj instanceof BigDecimal) {
                objArr[i] = j((BigDecimal) obj, clsArr[i]);
            }
        }
        if (length2 > length) {
            Class cls = clsArr[length - 1];
            while (length < length2) {
                Object obj2 = objArr[length];
                if (obj2 instanceof BigDecimal) {
                    objArr[length] = j((BigDecimal) obj2, cls);
                }
                length++;
            }
        }
    }

    public static lw0 l(b bVar) {
        Constructor constructor = x;
        if (constructor == null) {
            return null;
        }
        try {
            return (lw0) constructor.newInstance(bVar);
        } catch (Exception e) {
            throw new UndeclaredThrowableException(e);
        }
    }

    public static Constructor m() throws Throwable {
        try {
            Class clsI = C;
            if (clsI == null) {
                clsI = i("freemarker.ext.beans.BeansWrapper");
                C = clsI;
            }
            return o0d.class.getDeclaredConstructor(clsI);
        } catch (Exception unused) {
            return null;
        }
    }

    public static Number p(Number number, Class cls, boolean z2) throws Throwable {
        if (cls == number.getClass()) {
            return number;
        }
        if (cls != Integer.TYPE) {
            Class clsI = X;
            if (clsI == null) {
                clsI = i("java.lang.Integer");
                X = clsI;
            }
            if (cls != clsI) {
                if (cls != Long.TYPE) {
                    Class clsI2 = Y;
                    if (clsI2 == null) {
                        clsI2 = i("java.lang.Long");
                        Y = clsI2;
                    }
                    if (cls != clsI2) {
                        if (cls != Double.TYPE) {
                            Class clsI3 = Z;
                            if (clsI3 == null) {
                                clsI3 = i("java.lang.Double");
                                Z = clsI3;
                            }
                            if (cls != clsI3) {
                                Class clsI4 = a0;
                                if (clsI4 == null) {
                                    clsI4 = i("java.math.BigDecimal");
                                    a0 = clsI4;
                                }
                                if (cls == clsI4) {
                                    if (number instanceof BigDecimal) {
                                        return number;
                                    }
                                    if (number instanceof BigInteger) {
                                        return new BigDecimal((BigInteger) number);
                                    }
                                    return number instanceof Long ? BigDecimal.valueOf(number.longValue()) : new BigDecimal(number.doubleValue());
                                }
                                if (cls != Float.TYPE) {
                                    Class clsI5 = b0;
                                    if (clsI5 == null) {
                                        clsI5 = i("java.lang.Float");
                                        b0 = clsI5;
                                    }
                                    if (cls != clsI5) {
                                        if (cls != Byte.TYPE) {
                                            Class clsI6 = c0;
                                            if (clsI6 == null) {
                                                clsI6 = i("java.lang.Byte");
                                                c0 = clsI6;
                                            }
                                            if (cls != clsI6) {
                                                if (cls != Short.TYPE) {
                                                    Class clsI7 = d0;
                                                    if (clsI7 == null) {
                                                        clsI7 = i("java.lang.Short");
                                                        d0 = clsI7;
                                                    }
                                                    if (cls != clsI7) {
                                                        Class clsI8 = e0;
                                                        if (clsI8 == null) {
                                                            clsI8 = i("java.math.BigInteger");
                                                            e0 = clsI8;
                                                        }
                                                        if (cls != clsI8) {
                                                            if (number instanceof OverloadedNumberUtil.NumberWithFallbackType) {
                                                                number = ((OverloadedNumberUtil.NumberWithFallbackType) number).getSourceNumber();
                                                            }
                                                            if (cls.isInstance(number)) {
                                                                return number;
                                                            }
                                                            return null;
                                                        }
                                                        if (number instanceof BigInteger) {
                                                            return number;
                                                        }
                                                        if (!z2) {
                                                            return new BigInteger(number.toString());
                                                        }
                                                        if (number instanceof OverloadedNumberUtil.IntegerBigDecimal) {
                                                            return ((OverloadedNumberUtil.IntegerBigDecimal) number).bigIntegerValue();
                                                        }
                                                        return number instanceof BigDecimal ? ((BigDecimal) number).toBigInteger() : BigInteger.valueOf(number.longValue());
                                                    }
                                                }
                                                return number instanceof Short ? (Short) number : new Short(number.shortValue());
                                            }
                                        }
                                        return number instanceof Byte ? (Byte) number : new Byte(number.byteValue());
                                    }
                                }
                                return number instanceof Float ? (Float) number : new Float(number.floatValue());
                            }
                        }
                        return number instanceof Double ? (Double) number : new Double(number.doubleValue());
                    }
                }
                return number instanceof Long ? (Long) number : new Long(number.longValue());
            }
        }
        return number instanceof Integer ? (Integer) number : new Integer(number.intValue());
    }

    public static final b s() {
        return yd0.a;
    }

    public boolean B() {
        return this.p;
    }

    public boolean C() {
        return this.r;
    }

    public boolean D() {
        return this.l;
    }

    public Object E(List list, Class cls, Map map) {
        if (list instanceof qc9) {
            return P(((qc9) list).c(), cls, false, map);
        }
        if (map != null) {
            Object obj = map.get(list);
            if (obj != null) {
                return obj;
            }
        } else {
            map = new IdentityHashMap();
        }
        Class<?> componentType = cls.getComponentType();
        Object objNewInstance = Array.newInstance(componentType, list.size());
        map.put(list, objNewInstance);
        try {
            Iterator it = list.iterator();
            boolean z2 = false;
            boolean zL = false;
            boolean zIsAssignableFrom = false;
            int i = 0;
            while (it.hasNext()) {
                Object next = it.next();
                if (next != null && !componentType.isInstance(next)) {
                    if (!z2) {
                        zL = hx0.l(componentType);
                        Class clsI = R;
                        if (clsI == null) {
                            clsI = i("java.util.List");
                            R = clsI;
                        }
                        zIsAssignableFrom = clsI.isAssignableFrom(componentType);
                        z2 = true;
                    }
                    if (zL && (next instanceof Number)) {
                        next = p((Number) next, componentType, true);
                    } else {
                        Class<?> clsI2 = Q;
                        if (clsI2 == null) {
                            clsI2 = i("java.lang.String");
                            Q = clsI2;
                        }
                        if (componentType == clsI2 && (next instanceof Character)) {
                            next = String.valueOf(((Character) next).charValue());
                        } else {
                            Class<?> clsI3 = T;
                            if (clsI3 == null) {
                                clsI3 = i("java.lang.Character");
                                T = clsI3;
                            }
                            if ((componentType == clsI3 || componentType == Character.TYPE) && (next instanceof String)) {
                                String str = (String) next;
                                if (str.length() == 1) {
                                    next = new Character(str.charAt(0));
                                }
                            } else if (componentType.isArray()) {
                                if (next instanceof List) {
                                    next = E((List) next, componentType, map);
                                } else if (next instanceof nga) {
                                    next = P((nga) next, componentType, false, map);
                                }
                            } else if (zIsAssignableFrom && next.getClass().isArray()) {
                                next = g(next);
                            }
                        }
                    }
                }
                try {
                    Array.set(objNewInstance, i, next);
                    i++;
                } catch (IllegalArgumentException e) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Failed to convert ");
                    stringBuffer.append(hx0.i(list));
                    stringBuffer.append(" object to ");
                    stringBuffer.append(hx0.i(objNewInstance));
                    stringBuffer.append(": Problematic List item at index ");
                    stringBuffer.append(i);
                    stringBuffer.append(" with value type: ");
                    stringBuffer.append(hx0.i(next));
                    throw new TemplateModelException(stringBuffer.toString(), (Exception) e);
                }
            }
            map.remove(list);
            return objNewInstance;
        } catch (Throwable th) {
            map.remove(list);
            throw th;
        }
    }

    public Object F(Class cls, List list) throws TemplateModelException {
        try {
            Object obj = this.f.k(cls).get(c.s);
            if (obj == null) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Class ");
                stringBuffer.append(cls.getName());
                stringBuffer.append(" has no public constructors.");
                throw new TemplateModelException(stringBuffer.toString());
            }
            if (obj instanceof km9) {
                km9 km9Var = (km9) obj;
                Constructor constructor = (Constructor) km9Var.e();
                try {
                    return constructor.newInstance(km9Var.l(list, this));
                } catch (Exception e) {
                    if (e instanceof TemplateModelException) {
                        throw ((TemplateModelException) e);
                    }
                    throw u0d.o(null, constructor, e);
                }
            }
            if (!(obj instanceof fu7)) {
                throw new BugException();
            }
            an6 an6VarF = ((fu7) obj).f(list, this);
            try {
                return an6VarF.b(this);
            } catch (Exception e2) {
                if (e2 instanceof TemplateModelException) {
                    throw ((TemplateModelException) e2);
                }
                throw u0d.m(null, an6VarF.a(), e2);
            }
        } catch (TemplateModelException e3) {
            throw e3;
        } catch (Exception e4) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Error while creating new instance of class ");
            stringBuffer2.append(cls.getName());
            stringBuffer2.append("; see cause exception");
            throw new TemplateModelException(stringBuffer2.toString(), e4);
        }
    }

    public final void H() {
        mx9 mx9Var = this.g;
        if (mx9Var != null) {
            this.f.y(mx9Var);
        }
        lw0 lw0Var = this.h;
        if (lw0Var != null) {
            this.f.y(lw0Var);
        }
        eq6 eq6Var = this.i;
        if (eq6Var != null) {
            this.f.z(eq6Var);
        }
    }

    public void I(boolean z2) {
        h();
        this.r = z2;
    }

    public void J(boolean z2) {
        h();
        this.i.g(z2);
    }

    public String K() {
        String string;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("simpleMapWrapper=");
        stringBuffer.append(this.q);
        stringBuffer.append(", ");
        stringBuffer.append("exposureLevel=");
        stringBuffer.append(this.f.p());
        stringBuffer.append(", ");
        stringBuffer.append("exposeFields=");
        stringBuffer.append(this.f.o());
        stringBuffer.append(", ");
        stringBuffer.append("sharedClassIntrospCache=");
        if (this.f.u()) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("@");
            stringBuffer2.append(System.identityHashCode(this.f));
            string = stringBuffer2.toString();
        } else {
            string = "none";
        }
        stringBuffer.append(string);
        return stringBuffer.toString();
    }

    public Object L(zfa zfaVar, Class cls) {
        return M(zfaVar, cls, 0);
    }

    public Object M(zfa zfaVar, Class cls, int i) throws Throwable {
        Object objN = N(zfaVar, cls, i, null);
        return ((i & 1) == 0 || !(objN instanceof Number)) ? objN : OverloadedNumberUtil.a((Number) objN, i);
    }

    /* JADX WARN: Code duplicated, block: B:188:0x022e  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0054, code lost:
    
        if (r1 != null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0091, code lost:
    
        if (r1 != null) goto L50;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object N(zfa zfaVar, Class cls, int i, Map map) throws Throwable {
        Class cls2;
        Number numberP;
        if (zfaVar == null || zfaVar == this.m) {
            return null;
        }
        boolean z2 = z();
        if (z2 && cls.isPrimitive()) {
            cls = hx0.m(cls);
        }
        if (zfaVar instanceof c8) {
            Object adaptedObject = ((c8) zfaVar).getAdaptedObject(cls);
            Class clsI = P;
            if (clsI == null) {
                clsI = i("java.lang.Object");
                P = clsI;
            }
            if (cls != clsI && !cls.isInstance(adaptedObject)) {
                Class clsI2 = P;
                if (clsI2 == null) {
                    clsI2 = i("java.lang.Object");
                    P = clsI2;
                }
                if (cls != clsI2) {
                    if (adaptedObject instanceof Number) {
                        if (hx0.l(cls)) {
                            adaptedObject = p((Number) adaptedObject, cls, z2);
                        }
                    }
                }
            }
            return adaptedObject;
        }
        if (zfaVar instanceof lpc) {
            Object wrappedObject = ((lpc) zfaVar).getWrappedObject();
            Class clsI3 = P;
            if (clsI3 == null) {
                clsI3 = i("java.lang.Object");
                P = clsI3;
            }
            if (cls != clsI3 && !cls.isInstance(wrappedObject)) {
                Class clsI4 = P;
                if (clsI4 == null) {
                    clsI4 = i("java.lang.Object");
                    P = clsI4;
                }
                if (cls != clsI4) {
                    if (wrappedObject instanceof Number) {
                        if (hx0.l(cls)) {
                            wrappedObject = p((Number) wrappedObject, cls, z2);
                        }
                    }
                }
            }
            return wrappedObject;
        }
        Class clsI5 = P;
        if (clsI5 == null) {
            clsI5 = i("java.lang.Object");
            P = clsI5;
        }
        if (cls != clsI5) {
            Class clsI6 = Q;
            if (clsI6 == null) {
                clsI6 = i("java.lang.String");
                Q = clsI6;
            }
            if (clsI6 == cls) {
                return zfaVar instanceof mga ? ((mga) zfaVar).getAsString() : hc7.d;
            }
            if (hx0.l(cls) && (zfaVar instanceof hga) && (numberP = p(((hga) zfaVar).getAsNumber(), cls, z2)) != null) {
                return numberP;
            }
            if (Boolean.TYPE != cls) {
                Class clsI7 = L;
                if (clsI7 == null) {
                    clsI7 = i("java.lang.Boolean");
                    L = clsI7;
                }
                if (clsI7 != cls) {
                    Class clsI8 = H;
                    if (clsI8 == null) {
                        clsI8 = i("java.util.Map");
                        H = clsI8;
                    }
                    if (clsI8 == cls && (zfaVar instanceof ofa)) {
                        return new co4((ofa) zfaVar, this);
                    }
                    Class clsI9 = R;
                    if (clsI9 == null) {
                        clsI9 = i("java.util.List");
                        R = clsI9;
                    }
                    if (clsI9 == cls && (zfaVar instanceof nga)) {
                        return new qc9((nga) zfaVar, this);
                    }
                    Class clsI10 = S;
                    if (clsI10 == null) {
                        clsI10 = i("java.util.Set");
                        S = clsI10;
                    }
                    if (clsI10 == cls && (zfaVar instanceof bfa)) {
                        return new oe9((bfa) zfaVar, this);
                    }
                    Class clsI11 = I;
                    if (clsI11 == null) {
                        clsI11 = i("java.util.Collection");
                        I = clsI11;
                    }
                    if (clsI11 == cls || w == cls) {
                        if (zfaVar instanceof bfa) {
                            return new m71((bfa) zfaVar, this);
                        }
                        if (zfaVar instanceof nga) {
                            return new qc9((nga) zfaVar, this);
                        }
                    }
                    if (cls.isArray()) {
                        return zfaVar instanceof nga ? P((nga) zfaVar, cls, true, map) : hc7.d;
                    }
                    if (Character.TYPE != cls) {
                        Class clsI12 = T;
                        if (clsI12 == null) {
                            clsI12 = i("java.lang.Character");
                            T = clsI12;
                        }
                        if (cls != clsI12) {
                            Class cls3 = K;
                            if (cls3 == null) {
                                cls2 = cls3;
                                Class clsI13 = i("java.util.Date");
                                K = clsI13;
                                cls2 = clsI13;
                            }
                            cls2 = cls3;
                            if (cls2.isAssignableFrom(cls) && (zfaVar instanceof ffa)) {
                                Date dateF = ((ffa) zfaVar).f();
                                if (cls.isInstance(dateF)) {
                                    return dateF;
                                }
                            }
                        }
                    }
                    if (zfaVar instanceof mga) {
                        String asString = ((mga) zfaVar).getAsString();
                        if (asString.length() == 1) {
                            return new Character(asString.charAt(0));
                        }
                    }
                    return hc7.d;
                }
            }
            return zfaVar instanceof freemarker.template.a ? Boolean.valueOf(((freemarker.template.a) zfaVar).getAsBoolean()) : hc7.d;
        }
        while (true) {
            if ((i == 0 || (i & 2048) != 0) && (zfaVar instanceof hga)) {
                Number asNumber = ((hga) zfaVar).getAsNumber();
                if (i != 0 || cls.isInstance(asNumber)) {
                    return asNumber;
                }
            }
            if ((i == 0 || (i & 4096) != 0) && (zfaVar instanceof ffa)) {
                Date dateF2 = ((ffa) zfaVar).f();
                if (i != 0 || cls.isInstance(dateF2)) {
                    return dateF2;
                }
            }
            if ((i == 0 || (532480 & i) != 0) && (zfaVar instanceof mga)) {
                if (i != 0) {
                    String asString2 = ((mga) zfaVar).getAsString();
                    if (i == 0 && (524288 & i) != 0) {
                        if (asString2.length() == 1) {
                            return (i & 8192) != 0 ? new mv0(asString2) : new Character(asString2.charAt(0));
                        }
                        if ((i & 8192) != 0) {
                        }
                    }
                    return asString2;
                }
                Class<?> clsI14 = Q;
                if (clsI14 == null) {
                    clsI14 = i("java.lang.String");
                    Q = clsI14;
                }
                if (cls.isAssignableFrom(clsI14)) {
                    String asString3 = ((mga) zfaVar).getAsString();
                    if (i == 0) {
                    }
                    return asString3;
                }
            }
            if ((i == 0 || (i & 16384) != 0) && (zfaVar instanceof freemarker.template.a)) {
                if (i == 0) {
                    Class<?> clsI15 = L;
                    if (clsI15 == null) {
                        clsI15 = i("java.lang.Boolean");
                        L = clsI15;
                    }
                    if (cls.isAssignableFrom(clsI15)) {
                    }
                }
                return Boolean.valueOf(((freemarker.template.a) zfaVar).getAsBoolean());
            }
            if ((i == 0 || (32768 & i) != 0) && (zfaVar instanceof ofa)) {
                if (i == 0) {
                    Class<?> clsI16 = U;
                    if (clsI16 == null) {
                        clsI16 = i("freemarker.ext.beans.HashAdapter");
                        U = clsI16;
                    }
                    if (cls.isAssignableFrom(clsI16)) {
                    }
                }
                return new co4((ofa) zfaVar, this);
            }
            if ((i == 0 || (65536 & i) != 0) && (zfaVar instanceof nga)) {
                if (i == 0) {
                    Class<?> clsI17 = V;
                    if (clsI17 == null) {
                        clsI17 = i("freemarker.ext.beans.SequenceAdapter");
                        V = clsI17;
                    }
                    if (cls.isAssignableFrom(clsI17)) {
                    }
                }
                return new qc9((nga) zfaVar, this);
            }
            if ((i == 0 || (131072 & i) != 0) && (zfaVar instanceof bfa)) {
                if (i == 0) {
                    Class<?> clsI18 = W;
                    if (clsI18 == null) {
                        clsI18 = i("freemarker.ext.beans.SetAdapter");
                        W = clsI18;
                    }
                    if (cls.isAssignableFrom(clsI18)) {
                    }
                }
                return new oe9((bfa) zfaVar, this);
            }
            if ((262144 & i) != 0 && (zfaVar instanceof nga)) {
                return new qc9((nga) zfaVar, this);
            }
            if (i == 0) {
                return cls.isInstance(zfaVar) ? zfaVar : hc7.d;
            }
            i = 0;
        }
    }

    public Object O(zfa zfaVar, Class cls) throws TemplateModelException {
        Object objL = L(zfaVar, cls);
        if (objL != hc7.d) {
            return objL;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Can not unwrap model of type ");
        stringBuffer.append(zfaVar.getClass().getName());
        stringBuffer.append(" to type ");
        stringBuffer.append(cls.getName());
        throw new TemplateModelException(stringBuffer.toString());
    }

    public Object P(nga ngaVar, Class cls, boolean z2, Map map) {
        Map identityHashMap = map;
        if (identityHashMap != null) {
            Object obj = identityHashMap.get(ngaVar);
            if (obj != null) {
                return obj;
            }
        } else {
            identityHashMap = new IdentityHashMap();
        }
        Map map2 = identityHashMap;
        Class<?> componentType = cls.getComponentType();
        Object objNewInstance = Array.newInstance(componentType, ngaVar.size());
        map2.put(ngaVar, objNewInstance);
        try {
            int size = ngaVar.size();
            for (int i = 0; i < size; i++) {
                zfa zfaVar = ngaVar.get(i);
                Object objN = N(zfaVar, componentType, 0, map2);
                Object obj2 = hc7.d;
                if (objN == obj2) {
                    if (!z2) {
                        throw new _TemplateModelException(new Object[]{"Failed to convert ", new g0d(ngaVar), " object to ", new m0d(objNewInstance.getClass()), ": Problematic sequence item at index ", new Integer(i), " with value type: ", new g0d(zfaVar)});
                    }
                    map2.remove(ngaVar);
                    return obj2;
                }
                Array.set(objNewInstance, i, objN);
            }
            map2.remove(ngaVar);
            return objNewInstance;
        } catch (Throwable th) {
            map2.remove(ngaVar);
            throw th;
        }
    }

    @Override
    public ofa a(Object obj) {
        return new p0(obj, this);
    }

    @Override
    public Object b(zfa zfaVar) throws Throwable {
        Class clsI = P;
        if (clsI == null) {
            clsI = i("java.lang.Object");
            P = clsI;
        }
        return O(zfaVar, clsI);
    }

    @Override
    public zfa c(Object obj) {
        return obj == null ? this.m : this.i.c(obj);
    }

    @Override
    public void d() {
        this.l = true;
    }

    public List g(Object obj) {
        if (!(obj instanceof Object[])) {
            return Array.getLength(obj) == 0 ? Collections.EMPTY_LIST : new lf8(obj);
        }
        Object[] objArr = (Object[]) obj;
        return objArr.length == 0 ? Collections.EMPTY_LIST : new p17(objArr);
    }

    public void h() {
        if (this.l) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Can't modify the ");
            stringBuffer.append(getClass().getName());
            stringBuffer.append(" object, as it was write protected.");
            throw new IllegalStateException(stringBuffer.toString());
        }
    }

    public void n(boolean z2) {
        if (z2) {
            d();
        }
        H();
    }

    public void o(Class cls, Method method, a aVar) {
    }

    public c q() {
        return this.f;
    }

    public int r() {
        return this.n;
    }

    public int t() {
        return this.f.p();
    }

    public String toString() {
        String string;
        String strK = K();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(hx0.i(this));
        stringBuffer.append("@");
        stringBuffer.append(System.identityHashCode(this));
        stringBuffer.append("(");
        stringBuffer.append(this.s);
        stringBuffer.append(", ");
        if (strK.length() != 0) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(strK);
            stringBuffer2.append(", ...");
            string = stringBuffer2.toString();
        } else {
            string = "";
        }
        stringBuffer.append(string);
        stringBuffer.append(")");
        return stringBuffer.toString();
    }

    public Version u() {
        return this.s;
    }

    public fq6 v(Class cls) throws Throwable {
        Class clsI = H;
        if (clsI == null) {
            clsI = i("java.util.Map");
            H = clsI;
        }
        if (clsI.isAssignableFrom(cls)) {
            return this.q ? im9.c : dy5.i;
        }
        Class clsI2 = I;
        if (clsI2 == null) {
            clsI2 = i("java.util.Collection");
            I = clsI2;
        }
        if (clsI2.isAssignableFrom(cls)) {
            return p71.i;
        }
        Class clsI3 = J;
        if (clsI3 == null) {
            clsI3 = i("java.lang.Number");
            J = clsI3;
        }
        if (clsI3.isAssignableFrom(cls)) {
            return w37.h;
        }
        Class clsI4 = K;
        if (clsI4 == null) {
            clsI4 = i("java.util.Date");
            K = clsI4;
        }
        if (clsI4.isAssignableFrom(cls)) {
            return et1.i;
        }
        Class clsI5 = L;
        if (clsI5 == null) {
            clsI5 = i("java.lang.Boolean");
            L = clsI5;
        }
        if (clsI5 == cls) {
            return this.t;
        }
        Class clsI6 = M;
        if (clsI6 == null) {
            clsI6 = i("java.util.ResourceBundle");
            M = clsI6;
        }
        if (clsI6.isAssignableFrom(cls)) {
            return xt8.i;
        }
        Class clsI7 = N;
        if (clsI7 == null) {
            clsI7 = i("java.util.Iterator");
            N = clsI7;
        }
        if (clsI7.isAssignableFrom(cls)) {
            return z;
        }
        Class clsI8 = O;
        if (clsI8 == null) {
            clsI8 = i("java.util.Enumeration");
            O = clsI8;
        }
        if (clsI8.isAssignableFrom(cls)) {
            return A;
        }
        return cls.isArray() ? dh.i : yz9.h;
    }

    public gc7 w() {
        return this.o;
    }

    public Object x() {
        return this.e;
    }

    public zfa y(Object obj, Method method, Object[] objArr) {
        return method.getReturnType() == Void.TYPE ? zfa.X4 : w().c(method.invoke(obj, objArr));
    }

    public boolean z() {
        return A(u());
    }

    public b(Version version) {
        this(new td0(version), false);
    }

    public b(xd0 xd0Var, boolean z2) {
        this(xd0Var, z2, true);
    }

    public b(xd0 xd0Var, boolean z2, boolean z3) throws Throwable {
        boolean z4;
        this.m = null;
        this.o = this;
        this.p = true;
        this.t = new ud0(this);
        if (xd0Var.e() == null) {
            Class<?> superclass = getClass();
            boolean z5 = false;
            while (!z5) {
                try {
                    Class<?> clsI = B;
                    if (clsI == null) {
                        clsI = i("freemarker.template.DefaultObjectWrapper");
                        B = clsI;
                    }
                    if (superclass != clsI) {
                        Class<?> clsI2 = C;
                        if (clsI2 == null) {
                            clsI2 = i("freemarker.ext.beans.BeansWrapper");
                            C = clsI2;
                        }
                        if (superclass != clsI2) {
                            Class<?> clsI3 = D;
                            if (clsI3 == null) {
                                clsI3 = i("freemarker.template.SimpleObjectWrapper");
                                D = clsI3;
                            }
                            if (superclass == clsI3) {
                                break;
                            }
                            try {
                                Class clsI4 = E;
                                if (clsI4 == null) {
                                    clsI4 = i("java.lang.Class");
                                    E = clsI4;
                                }
                                Class clsI5 = F;
                                if (clsI5 == null) {
                                    clsI5 = i("java.lang.reflect.Method");
                                    F = clsI5;
                                }
                                Class clsI6 = G;
                                if (clsI6 == null) {
                                    clsI6 = i("freemarker.ext.beans.BeansWrapper$MethodAppearanceDecision");
                                    G = clsI6;
                                }
                                superclass.getDeclaredMethod("finetuneMethodAppearance", clsI4, clsI5, clsI6);
                                z5 = true;
                            } catch (NoSuchMethodException unused) {
                                superclass = superclass.getSuperclass();
                            }
                        } else {
                            break;
                        }
                    } else {
                        break;
                    }
                } catch (Throwable th) {
                    pq5 pq5Var = u;
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Failed to check if finetuneMethodAppearance is overidden in ");
                    stringBuffer.append(superclass.getName());
                    stringBuffer.append("; acting like if it was, but this way it won't utilize the shared class introspection ");
                    stringBuffer.append("cache.");
                    pq5Var.o(stringBuffer.toString(), th);
                    z4 = true;
                    z5 = true;
                }
            }
            z4 = false;
            if (z5) {
                if (!z4 && !y) {
                    pq5 pq5Var2 = u;
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Overriding ");
                    Class clsI7 = C;
                    if (clsI7 == null) {
                        clsI7 = i("freemarker.ext.beans.BeansWrapper");
                        C = clsI7;
                    }
                    stringBuffer2.append(clsI7.getName());
                    stringBuffer2.append(".finetuneMethodAppearance is deprecated ");
                    stringBuffer2.append("and will be banned sometimes in the future. Use setMethodAppearanceFineTuner instead.");
                    pq5Var2.z(stringBuffer2.toString());
                    y = true;
                }
                xd0Var = (xd0) xd0Var.a(false);
                xd0Var.j(new freemarker.ext.beans.a(this));
            }
        }
        this.s = xd0Var.d();
        this.q = xd0Var.h();
        this.n = xd0Var.c();
        this.o = xd0Var.f() != null ? xd0Var.f() : this;
        this.r = xd0Var.i();
        if (!z2) {
            Object obj = new Object();
            this.e = obj;
            this.f = new c(xd0Var.c, obj);
        } else {
            c cVarA = xd0Var.c.a();
            this.f = cVarA;
            this.e = cVarA.s();
        }
        this.j = new ai0(Boolean.FALSE, this);
        this.k = new ai0(Boolean.TRUE, this);
        this.g = new mx9(this);
        this.h = l(this);
        this.i = new sd0(this);
        J(xd0Var.g());
        n(z2);
    }
}
