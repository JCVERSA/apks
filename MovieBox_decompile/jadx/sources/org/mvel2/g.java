package org.mvel2;

import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.mvel2.ast.InvokationContextFactory;
import org.mvel2.ast.Proto;
import org.mvel2.ast.TypeDescriptor;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.ImmutableDefaultFactory;
import org.mvel2.util.MethodStub;
import org.mvel2.util.m;
import org.mvel2.util.n;
import org.mvel2.util.p;
import org.mvel2.util.s;
import org.mvel2.util.t;

public class g {

    private static final Object[] f68814o = new Object[0];

    private static final Map f68815p = Collections.synchronizedMap(new WeakHashMap(10));

    private static final Map f68816q = Collections.synchronizedMap(new WeakHashMap(10));

    private static final Map f68817r = Collections.synchronizedMap(new WeakHashMap(10));

    private static final Map f68818s = Collections.synchronizedMap(new WeakHashMap(10));

    private int f68819a;

    private int f68820b;

    private int f68821c;

    private char[] f68822d;

    private int f68823e;

    private int f68824f;

    private Object f68825g;

    private Object f68826h;

    private Object f68827i;

    private Class f68828j;

    private boolean f68829k;

    private boolean f68830l;

    private VariableResolverFactory f68831m;

    private ParserContext f68832n;

    public g(String str, Object obj) {
        this.f68819a = 0;
        this.f68820b = 0;
        this.f68828j = null;
        this.f68829k = true;
        this.f68830l = false;
        char[] charArray = str.toCharArray();
        this.f68822d = charArray;
        int length = charArray.length;
        this.f68824f = length;
        this.f68823e = length;
        this.f68826h = obj;
        this.f68831m = new ImmutableDefaultFactory();
    }

    public static void A(Object obj, VariableResolverFactory variableResolverFactory, String str, Object obj2, ParserContext parserContext) {
        new g(str.toCharArray(), obj, variableResolverFactory, null, parserContext).y(obj2);
    }

    private void D() {
        if (this.f68820b < this.f68824f) {
            while (m.q0(this.f68822d[this.f68820b])) {
                int i10 = this.f68820b + 1;
                this.f68820b = i10;
                if (i10 >= this.f68824f) {
                    return;
                }
            }
        }
    }

    private static void a(Class cls, Integer num, Method method) {
        Map map = f68817r;
        synchronized (map) {
            try {
                WeakHashMap weakHashMap = (WeakHashMap) map.get(cls);
                if (weakHashMap == null) {
                    weakHashMap = new WeakHashMap();
                    map.put(cls, weakHashMap);
                }
                weakHashMap.put(num, new WeakReference(new Object[]{method, method.getParameterTypes()}));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static void b(Class cls, Integer num, Member member) {
        Map map = f68815p;
        synchronized (map) {
            try {
                WeakHashMap weakHashMap = (WeakHashMap) map.get(cls);
                if (weakHashMap == null) {
                    weakHashMap = new WeakHashMap();
                    map.put(cls, weakHashMap);
                }
                weakHashMap.put(num, new WeakReference(member));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static void c(Class cls, Integer num, Member member) {
        Map map = f68816q;
        synchronized (map) {
            try {
                WeakHashMap weakHashMap = (WeakHashMap) map.get(cls);
                if (weakHashMap == null) {
                    weakHashMap = new WeakHashMap();
                    map.put(cls, weakHashMap);
                }
                weakHashMap.put(num, new WeakReference(member));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private String d() {
        return new String(this.f68822d, this.f68821c, B(this.f68820b) - this.f68821c);
    }

    private static Object[] e(Class cls, Integer num) {
        WeakReference weakReference;
        Map map = (Map) f68817r.get(cls);
        if (map == null || (weakReference = (WeakReference) map.get(num)) == null) {
            return null;
        }
        return (Object[]) weakReference.get();
    }

    public static Class[] f(Method method) {
        Class[] clsArr;
        Map map = f68818s;
        WeakReference weakReference = (WeakReference) map.get(method);
        if (weakReference != null && (clsArr = (Class[]) weakReference.get()) != null) {
            return clsArr;
        }
        Class<?>[] parameterTypes = method.getParameterTypes();
        map.put(method, new WeakReference(parameterTypes));
        return parameterTypes;
    }

    private static Member g(Class cls, Integer num) {
        WeakReference weakReference;
        WeakHashMap weakHashMap = (WeakHashMap) f68815p.get(cls);
        if (weakHashMap == null || (weakReference = (WeakReference) weakHashMap.get(num)) == null) {
            return null;
        }
        return (Member) weakReference.get();
    }

    private static Member h(Class cls, Integer num) {
        WeakReference weakReference;
        Map map = (Map) f68816q.get(cls);
        if (map == null || (weakReference = (WeakReference) map.get(num)) == null) {
            return null;
        }
        return (Member) weakReference.get();
    }

    private static int i(String str, String str2) {
        return str.hashCode() + str2.hashCode();
    }

    private Object j() {
        this.f68827i = this.f68826h;
        try {
            return !d.f68807h ? u() : n();
        } catch (IllegalAccessException e10) {
            throw new PropertyAccessException("could not access property", this.f68822d, this.f68820b, e10, this.f68832n);
        } catch (IndexOutOfBoundsException e11) {
            int i10 = this.f68820b;
            int i11 = this.f68823e;
            if (i10 >= i11) {
                this.f68820b = i11 - 1;
            }
            throw new PropertyAccessException("array or collections index out of bounds in property: " + new String(this.f68822d, this.f68820b, this.f68823e), this.f68822d, this.f68820b, e11, this.f68832n);
        } catch (NullPointerException e12) {
            throw new PropertyAccessException("null pointer exception in property: " + new String(this.f68822d), this.f68822d, this.f68820b, e12, this.f68832n);
        } catch (InvocationTargetException e13) {
            throw new PropertyAccessException("could not access property", this.f68822d, this.f68820b, e13, this.f68832n);
        } catch (CompileException e14) {
            throw org.mvel2.util.f.a(e14, this.f68822d, this.f68821c);
        } catch (Exception e15) {
            throw new PropertyAccessException("unknown exception in expression: " + new String(this.f68822d), this.f68822d, this.f68820b, e15, this.f68832n);
        }
    }

    public static Object k(String str, Object obj) {
        return new g(str, obj).j();
    }

    public static Object l(String str, Object obj, VariableResolverFactory variableResolverFactory, Object obj2, ParserContext parserContext) {
        return new g(str.toCharArray(), obj, variableResolverFactory, obj2, parserContext).j();
    }

    public static Object m(char[] cArr, int i10, int i11, Object obj, VariableResolverFactory variableResolverFactory, Object obj2, ParserContext parserContext) {
        return new g(cArr, i10, i11, obj, variableResolverFactory, obj2, parserContext).j();
    }

    private Object n() {
        while (this.f68820b < this.f68824f) {
            int iW = w();
            if (iW == 0) {
                Object objP = p(this.f68827i, d());
                this.f68827i = objP;
                if (objP == null && yz.d.e()) {
                    yz.d.b();
                    d();
                    throw null;
                }
            } else if (iW == 1) {
                Object objT = t(this.f68827i, d());
                this.f68827i = objT;
                if (objT == null && yz.d.d()) {
                    yz.d.a();
                    d();
                    throw null;
                }
            } else if (iW == 2) {
                this.f68827i = s(this.f68827i, d());
            } else if (iW == 3) {
                this.f68827i = v(this.f68827i);
            }
            if (this.f68830l) {
                if (this.f68827i == null) {
                    return null;
                }
                this.f68830l = false;
            } else if (this.f68827i == null && this.f68820b < this.f68824f) {
                throw null;
            }
            this.f68829k = false;
        }
        return this.f68827i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:123:0x0211, code lost:
    
        return t(r8, r9);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Object o(Object obj, String str) {
        Class<?> cls;
        if (this.f68829k) {
            if ("this".equals(str)) {
                return this.f68826h;
            }
            if (AbstractParser.LITERALS.containsKey(str)) {
                return AbstractParser.LITERALS.get(str);
            }
            VariableResolverFactory variableResolverFactory = this.f68831m;
            if (variableResolverFactory != null && variableResolverFactory.isResolveable(str)) {
                return this.f68831m.getVariableResolver(str).getValue();
            }
        }
        if (obj != null) {
            boolean z10 = obj instanceof Class;
            if (!z10) {
                cls = obj.getClass();
            } else {
                if (d.f68809j && "class".equals(str)) {
                    return obj;
                }
                cls = (Class) obj;
            }
            Member memberG = g(cls, Integer.valueOf(str.hashCode()));
            if (memberG == null) {
                Integer numValueOf = Integer.valueOf(str.hashCode());
                Member memberB = n.b(cls, str);
                b(cls, numValueOf, memberB);
                memberG = memberB;
            }
            boolean z11 = false;
            if (memberG instanceof Method) {
                try {
                    return ((Method) memberG).invoke(obj, f68814o);
                } catch (IllegalAccessException unused) {
                    synchronized (memberG) {
                        try {
                            try {
                                ((Method) memberG).setAccessible(true);
                                return ((Method) memberG).invoke(obj, f68814o);
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        } finally {
                            ((Method) memberG).setAccessible(false);
                        }
                    }
                } catch (IllegalArgumentException e10) {
                    if (memberG.getDeclaringClass().equals(obj)) {
                        try {
                            throw new CompileException("name collision between innerclass: " + Class.forName(memberG.getDeclaringClass().getName() + "$" + str).getCanonicalName() + "; and bean accessor: " + str + " (" + memberG.toString() + ")", this.f68822d, this.f68821c);
                        } catch (ClassNotFoundException unused2) {
                            throw e10;
                        }
                    }
                    throw e10;
                }
            }
            if (memberG != null) {
                Field field = (Field) memberG;
                this.f68828j = p.i(field.getType());
                return field.get(obj);
            }
            if (obj instanceof Map) {
                Map map = (Map) obj;
                if (map.containsKey(str) || this.f68830l) {
                    return obj instanceof Proto.b ? ((Proto.b) obj).get(str).c(null, this.f68825g, this.f68831m, m.f68901a) : map.get(str);
                }
            }
            if ("length".equals(str) && obj.getClass().isArray()) {
                return Integer.valueOf(Array.getLength(obj));
            }
            if (z10) {
                Class cls2 = (Class) obj;
                for (Method method : cls2.getMethods()) {
                    if (str.equals(method.getName())) {
                        ParserContext parserContext = this.f68832n;
                        return (parserContext == null || parserContext.getParserConfiguration() == null ? !d.f68806g : !this.f68832n.getParserConfiguration().isAllowNakedMethCall()) ? method : method.invoke(obj, m.f68901a);
                    }
                }
                try {
                    return m.D(this.f68831m, cls2.getName() + "$" + str, this.f68832n);
                } catch (ClassNotFoundException unused3) {
                }
            } else {
                if (yz.d.f(cls)) {
                    yz.d.c(cls);
                    throw null;
                }
                if (obj instanceof org.mvel2.ast.b) {
                    return ((org.mvel2.ast.d) obj).c().getVariableResolver(str).getValue();
                }
            }
        }
        Object objC = C();
        if (objC != null) {
            return ((objC instanceof Class) || (objC instanceof Method)) ? objC : ((Field) objC).get(null);
        }
        if ((r0 = this.f68832n) != null) {
        }
        if (obj == null) {
            throw new PropertyAccessException("unresolvable property or identifier: " + str, this.f68822d, this.f68821c, this.f68832n);
        }
        throw new PropertyAccessException("could not access: " + str + "; in class: " + obj.getClass().getName(), this.f68822d, this.f68821c, this.f68832n);
    }

    private Object p(Object obj, String str) {
        if (obj == null || !yz.d.f(obj.getClass())) {
            yz.a.c(obj, str, this.f68831m);
            return o(obj, str);
        }
        yz.d.c(obj.getClass());
        throw null;
    }

    private ClassLoader q() {
        ParserContext parserContext = this.f68832n;
        return parserContext != null ? parserContext.getClassLoader() : Thread.currentThread().getContextClassLoader();
    }

    private Object r(Object obj, String str) {
        if (str.length() != 0 && (obj = o(obj, str)) == null) {
            throw new NullPointerException("null pointer on indexed access for: " + str);
        }
        this.f68828j = null;
        int i10 = this.f68820b + 1;
        this.f68820b = i10;
        D();
        if (this.f68820b == this.f68824f || x(']')) {
            throw new PropertyAccessException("unterminated '['", this.f68822d, this.f68820b, this.f68832n);
        }
        char[] cArr = this.f68822d;
        int i11 = this.f68820b;
        this.f68820b = i11 + 1;
        String str2 = new String(cArr, i10, i11 - i10);
        if (obj instanceof Map) {
            return ((Map) obj).get(d.l(str2, obj, this.f68831m));
        }
        if (obj instanceof List) {
            return ((List) obj).get(((Integer) d.l(str2, obj, this.f68831m)).intValue());
        }
        if (!(obj instanceof Collection)) {
            if (obj.getClass().isArray()) {
                return Array.get(obj, ((Integer) d.l(str2, obj, this.f68831m)).intValue());
            }
            if (obj instanceof CharSequence) {
                return Character.valueOf(((CharSequence) obj).charAt(((Integer) d.l(str2, obj, this.f68831m)).intValue()));
            }
            try {
                return TypeDescriptor.getClassReference(this.f68832n, (Class) obj, new TypeDescriptor(this.f68822d, this.f68819a, this.f68823e, 0));
            } catch (Exception e10) {
                throw new PropertyAccessException("illegal use of []: unknown type: " + obj.getClass().getName(), this.f68822d, this.f68821c, e10, this.f68832n);
            }
        }
        int iIntValue = ((Integer) d.l(str2, obj, this.f68831m)).intValue();
        Collection collection = (Collection) obj;
        if (iIntValue <= collection.size()) {
            Iterator it = collection.iterator();
            for (int i12 = 0; i12 < iIntValue; i12++) {
                it.next();
            }
            return it.next();
        }
        throw new PropertyAccessException("index [" + iIntValue + "] out of bounds on collections", this.f68822d, this.f68820b, this.f68832n);
    }

    private Object s(Object obj, String str) {
        if (str.length() != 0) {
            obj = o(obj, str);
        }
        this.f68828j = null;
        if (obj == null) {
            return null;
        }
        int i10 = this.f68820b + 1;
        this.f68820b = i10;
        D();
        if (this.f68820b == this.f68824f || x(']')) {
            throw new PropertyAccessException("unterminated '['", this.f68822d, this.f68820b, this.f68832n);
        }
        char[] cArr = this.f68822d;
        int i11 = this.f68820b;
        this.f68820b = i11 + 1;
        String str2 = new String(cArr, i10, i11 - i10);
        if (obj instanceof Map) {
            if (!yz.d.f(Map.class)) {
                return ((Map) obj).get(d.l(str2, obj, this.f68831m));
            }
            yz.d.c(Map.class);
            throw null;
        }
        if (obj instanceof List) {
            if (!yz.d.f(List.class)) {
                return ((List) obj).get(((Integer) d.l(str2, obj, this.f68831m)).intValue());
            }
            yz.d.c(List.class);
            throw null;
        }
        if (obj instanceof Collection) {
            if (yz.d.f(Collection.class)) {
                yz.d.c(Collection.class);
                throw null;
            }
            int iIntValue = ((Integer) d.l(str2, obj, this.f68831m)).intValue();
            Collection collection = (Collection) obj;
            if (iIntValue <= collection.size()) {
                Iterator it = collection.iterator();
                for (int i12 = 0; i12 < iIntValue; i12++) {
                    it.next();
                }
                return it.next();
            }
            throw new PropertyAccessException("index [" + iIntValue + "] out of bounds on collections", this.f68822d, this.f68820b, this.f68832n);
        }
        if (obj.getClass().isArray()) {
            if (!yz.d.f(Array.class)) {
                return Array.get(obj, ((Integer) d.l(str2, obj, this.f68831m)).intValue());
            }
            yz.d.c(Array.class);
            throw null;
        }
        if (obj instanceof CharSequence) {
            if (!yz.d.f(CharSequence.class)) {
                return Character.valueOf(((CharSequence) obj).charAt(((Integer) d.l(str2, obj, this.f68831m)).intValue()));
            }
            yz.d.c(CharSequence.class);
            throw null;
        }
        try {
            char[] cArr2 = this.f68822d;
            int i13 = this.f68819a;
            return TypeDescriptor.getClassReference(this.f68832n, (Class) obj, new TypeDescriptor(cArr2, i13, this.f68824f - i13, 0));
        } catch (Exception unused) {
            throw new PropertyAccessException("illegal use of []: unknown type: " + obj.getClass().getName(), this.f68822d, this.f68821c, this.f68832n);
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0027  */
    private Object t(Object obj, String str) {
        String str2;
        Object[] objArr;
        Class<?>[] parameterTypes;
        Method methodL;
        VariableResolverFactory variableResolverFactory;
        int i10 = this.f68820b;
        if (i10 != this.f68824f) {
            char[] cArr = this.f68822d;
            if (cArr[i10] == '(') {
                int iC = m.c(cArr, i10, '(');
                this.f68820b = iC;
                if (iC - i10 > 1) {
                    str2 = new String(this.f68822d, i10 + 1, (iC - i10) - 1);
                } else {
                    str2 = "";
                }
            } else {
                str2 = "";
            }
        } else {
            str2 = "";
        }
        this.f68820b++;
        int i11 = 0;
        if (str2.length() == 0) {
            objArr = m.f68901a;
        } else {
            List listY0 = m.y0(str2.toCharArray(), 0, -1);
            Object[] objArr2 = new Object[listY0.size()];
            for (int i12 = 0; i12 < listY0.size(); i12++) {
                objArr2[i12] = d.q((char[]) listY0.get(i12), this.f68825g, this.f68831m);
            }
            objArr = objArr2;
        }
        if (this.f68829k && (variableResolverFactory = this.f68831m) != null && variableResolverFactory.isResolveable(str)) {
            Object value = this.f68831m.getVariableResolver(str).getValue();
            if (value instanceof Method) {
                Method method = (Method) value;
                obj = method.getDeclaringClass();
                str = method.getName();
            } else {
                if (!(value instanceof MethodStub)) {
                    if (value instanceof org.mvel2.ast.b) {
                        org.mvel2.ast.b bVar = (org.mvel2.ast.b) value;
                        bVar.b().checkArgumentCount(objArr.length);
                        return bVar.a(null, this.f68825g, this.f68831m, objArr);
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("attempt to optimize a method call for a reference that does not point to a method: ");
                    sb2.append(str);
                    sb2.append(" (reference is type: ");
                    sb2.append(obj != null ? obj.getClass().getName() : null);
                    sb2.append(")");
                    throw new OptimizationFailure(sb2.toString());
                }
                MethodStub methodStub = (MethodStub) value;
                obj = methodStub.getClassReference();
                str = methodStub.getMethodName();
            }
            this.f68829k = false;
        }
        if (obj == null) {
            throw new CompileException("no such method or function: " + str, this.f68822d, this.f68820b);
        }
        Class<?> cls = this.f68828j;
        if (cls == null) {
            cls = obj instanceof Class ? (Class) obj : obj.getClass();
        }
        this.f68828j = null;
        if (cls == Proto.b.class) {
            return ((Proto.b) obj).get(str).c(null, this.f68825g, this.f68831m, objArr);
        }
        Object[] objArrE = e(cls, Integer.valueOf(i(str, str2)));
        if (objArrE != null) {
            methodL = (Method) objArrE[0];
            parameterTypes = (Class[]) objArrE[1];
        } else {
            parameterTypes = null;
            methodL = null;
        }
        if (methodL == null) {
            methodL = m.L(objArr, str, cls, cls.getMethods(), false);
            if (methodL != null) {
                a(cls, Integer.valueOf(i(str, str2)), methodL);
                parameterTypes = methodL.getParameterTypes();
            }
            if (methodL == null && (methodL = m.L(objArr, str, cls, cls.getDeclaredMethods(), false)) != null) {
                a(cls, Integer.valueOf(i(str, str2)), methodL);
                parameterTypes = methodL.getParameterTypes();
            }
        }
        if (methodL == null && cls != obj.getClass() && !(obj instanceof Class)) {
            cls = obj.getClass();
            methodL = m.L(objArr, str, cls, cls.getDeclaredMethods(), false);
            if (methodL != null) {
                a(cls, Integer.valueOf(i(str, str2)), methodL);
                parameterTypes = methodL.getParameterTypes();
            }
        }
        if (obj instanceof org.mvel2.ast.d) {
            VariableResolverFactory variableResolverFactoryC = ((org.mvel2.ast.d) obj).c();
            Object value2 = variableResolverFactoryC.getVariableResolver(str).getValue();
            if (value2 instanceof org.mvel2.ast.d) {
                return ((org.mvel2.ast.d) value2).a(obj, this.f68825g, new InvokationContextFactory(this.f68831m, variableResolverFactoryC), objArr);
            }
        }
        if (methodL != null) {
            while (i11 < objArr.length) {
                objArr[i11] = b.b(objArr[i11], t.b(parameterTypes, i11, methodL.isVarArgs()));
                i11++;
            }
            this.f68828j = p.i(methodL.getReturnType());
            try {
                try {
                    return methodL.invoke(obj, t.a(parameterTypes, objArr, methodL.isVarArgs()));
                } catch (Exception e10) {
                    throw new PropertyAccessException("unable to invoke method: " + str, this.f68822d, this.f68820b, e10, this.f68832n);
                }
            } catch (IllegalAccessException unused) {
                Integer numValueOf = Integer.valueOf(i(str, str2));
                Method methodV = m.V(methodL);
                a(cls, numValueOf, methodV);
                return methodV.invoke(obj, objArr);
            } catch (RuntimeException e11) {
                throw e11;
            } catch (Exception e12) {
                throw new PropertyAccessException("unable to invoke method: " + str, this.f68822d, this.f68820b, e12, this.f68832n);
            }
        }
        s sVar = new s();
        while (i11 < objArr.length) {
            Object obj2 = objArr[i11];
            sVar.d(obj2 != null ? obj2.getClass().getName() : null);
            if (i11 < objArr.length - 1) {
                sVar.d(", ");
            }
            i11++;
        }
        if ("size".equals(str) && objArr.length == 0 && cls.isArray()) {
            return Integer.valueOf(Array.getLength(obj));
        }
        throw new PropertyAccessException("unable to resolve method: " + cls.getName() + "." + str + "(" + sVar.toString() + ") [arglength=" + objArr.length + "]", this.f68822d, this.f68821c, this.f68832n);
    }

    private Object u() {
        while (this.f68820b < this.f68824f) {
            int iW = w();
            if (iW == 0) {
                this.f68827i = o(this.f68827i, d());
            } else if (iW == 1) {
                this.f68827i = t(this.f68827i, d());
            } else if (iW == 2) {
                this.f68827i = r(this.f68827i, d());
            } else if (iW == 3) {
                this.f68827i = v(this.f68827i);
            }
            if (this.f68830l) {
                if (this.f68827i == null) {
                    return null;
                }
                this.f68830l = false;
            }
            this.f68829k = false;
        }
        return this.f68827i;
    }

    private Object v(Object obj) {
        int i10 = this.f68819a;
        int i11 = this.f68820b;
        String strTrim = i10 == i11 ? null : new String(this.f68822d, i10, (i11 - i10) - 1).trim();
        char[] cArr = this.f68822d;
        int i12 = this.f68820b;
        int i13 = i12 + 1;
        int iE = m.e(cArr, i12, this.f68824f, '{', this.f68832n);
        this.f68820b = iE;
        m.z0(strTrim, cArr, i13, iE - i13, obj, this.f68831m);
        this.f68820b++;
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0099  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ab A[LOOP:2: B:46:0x00ab->B:48:0x00b7, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:48:0x00b7 A[LOOP:2: B:46:0x00ab->B:48:0x00b7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:51:0x00c7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x00c9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:53:0x00ca A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:54:0x00cb A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:55:0x00cc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:65:0x00a4 A[EDGE_INSN: B:65:0x00a4->B:44:0x00a4 BREAK  A[LOOP:1: B:39:0x0090->B:67:?], SYNTHETIC] */
    private int w() {
        int i10;
        int i11;
        int i12;
        char c10;
        char[] cArr = this.f68822d;
        int i13 = this.f68820b;
        this.f68821c = i13;
        char c11 = cArr[i13];
        if (c11 != '.') {
            if (c11 != '?') {
                if (c11 == '[') {
                    return 2;
                }
                if (c11 == '{' && cArr[i13 - 1] == '.') {
                    return 3;
                }
            }
            while (true) {
                i10 = this.f68820b;
                if (i10 < this.f68824f || !m.q0(this.f68822d[i10])) {
                    i11 = this.f68820b;
                    if (i11 >= this.f68824f || this.f68822d[i11] != '.') {
                        break;
                    }
                    this.f68820b = i11 + 1;
                } else {
                    this.f68820b++;
                }
            }
            this.f68821c = i11;
            do {
                i12 = this.f68820b + 1;
                this.f68820b = i12;
                if (i12 < this.f68824f) {
                    break;
                }
            } while (Character.isJavaIdentifierPart(this.f68822d[i12]));
            if (this.f68820b < this.f68824f) {
                return 0;
            }
            while (m.q0(this.f68822d[this.f68820b])) {
                this.f68820b++;
            }
            c10 = this.f68822d[this.f68820b];
            if (c10 != '(') {
                return 1;
            }
            if (c10 != '[') {
                return 0;
            }
            return 2;
        }
        while (true) {
            int i14 = this.f68820b;
            if (i14 >= this.f68824f || !m.q0(this.f68822d[i14])) {
                break;
            }
            this.f68820b++;
        }
        int i15 = this.f68821c;
        if (i15 + 1 != this.f68824f) {
            char[] cArr2 = this.f68822d;
            int i16 = i15 + 1;
            this.f68821c = i16;
            this.f68820b = i16;
            char c12 = cArr2[i16];
            if (c12 == '?') {
                int i17 = i15 + 2;
                this.f68821c = i17;
                this.f68820b = i17;
                this.f68830l = true;
            } else if (c12 == '{') {
                return 3;
            }
        }
        if (this.f68820b == this.f68819a) {
            int i18 = this.f68821c + 1;
            this.f68821c = i18;
            this.f68820b = i18;
            this.f68830l = true;
        }
        while (true) {
            i10 = this.f68820b;
            if (i10 < this.f68824f) {
            }
            i11 = this.f68820b;
            if (i11 >= this.f68824f) {
                break;
            }
            break;
            break;
        }
        this.f68821c = i11;
        do {
            i12 = this.f68820b + 1;
            this.f68820b = i12;
            if (i12 < this.f68824f) {
                break;
                break;
            }
        } while (Character.isJavaIdentifierPart(this.f68822d[i12]));
        if (this.f68820b < this.f68824f) {
            return 0;
        }
        while (m.q0(this.f68822d[this.f68820b])) {
            this.f68820b++;
        }
        c10 = this.f68822d[this.f68820b];
        if (c10 != '(') {
            return 1;
        }
        if (c10 != '[') {
            return 0;
        }
        return 2;
    }

    private boolean x(char c10) {
        while (true) {
            int i10 = this.f68820b;
            int i11 = this.f68824f;
            if (i10 >= i11) {
                return true;
            }
            char[] cArr = this.f68822d;
            char c11 = cArr[i10];
            if (c11 == '\"' || c11 == '\'') {
                this.f68820b = m.h(c11, cArr, i10, i11);
            }
            char[] cArr2 = this.f68822d;
            int i12 = this.f68820b;
            if (cArr2[i12] == c10) {
                return false;
            }
            this.f68820b = i12 + 1;
        }
    }

    private void y(Object obj) {
        this.f68827i = this.f68826h;
        try {
            int i10 = this.f68824f;
            this.f68824f = m.C(this.f68822d);
            Object objJ = j();
            this.f68827i = objJ;
            if (objJ == null) {
                throw new PropertyAccessException("cannot bind to null context: " + new String(this.f68822d, this.f68820b, this.f68823e), this.f68822d, this.f68820b, this.f68832n);
            }
            this.f68824f = i10;
            if (w() == 2) {
                int i11 = this.f68820b + 1;
                this.f68820b = i11;
                D();
                if (this.f68820b == this.f68823e || x(']')) {
                    throw new PropertyAccessException("unterminated '['", this.f68822d, this.f68820b, this.f68832n);
                }
                String str = new String(this.f68822d, i11, this.f68820b - i11);
                if (!d.f68807h) {
                    Object obj2 = this.f68827i;
                    if (obj2 instanceof Map) {
                        ((Map) obj2).put(d.l(str, this.f68826h, this.f68831m), obj);
                        return;
                    }
                    if (obj2 instanceof List) {
                        ((List) obj2).set(((Integer) d.m(str, this.f68826h, this.f68831m, Integer.class)).intValue(), obj);
                        return;
                    }
                    if (yz.d.f(obj2.getClass())) {
                        yz.d.c(this.f68827i.getClass());
                        throw null;
                    }
                    if (this.f68827i.getClass().isArray()) {
                        Array.set(this.f68827i, ((Integer) d.m(str, this.f68826h, this.f68831m, Integer.class)).intValue(), b.b(obj, m.I(this.f68827i.getClass())));
                        return;
                    }
                    throw new PropertyAccessException("cannot bind to collection property: " + new String(this.f68822d) + ": not a recognized collection type: " + this.f68826h.getClass(), this.f68822d, this.f68820b, this.f68832n);
                }
                yz.a.d(this.f68826h, str, this.f68831m, obj);
                Object obj3 = this.f68827i;
                if (obj3 instanceof Map) {
                    if (yz.d.f(Map.class)) {
                        yz.d.c(Map.class);
                        throw null;
                    }
                    ((Map) this.f68827i).put(d.l(str, this.f68826h, this.f68831m), obj);
                    return;
                }
                if (obj3 instanceof List) {
                    if (yz.d.f(List.class)) {
                        yz.d.c(List.class);
                        throw null;
                    }
                    ((List) this.f68827i).set(((Integer) d.m(str, this.f68826h, this.f68831m, Integer.class)).intValue(), obj);
                    return;
                }
                if (obj3.getClass().isArray()) {
                    if (yz.d.f(Array.class)) {
                        yz.d.c(Array.class);
                        throw null;
                    }
                    Array.set(this.f68827i, ((Integer) d.m(str, this.f68826h, this.f68831m, Integer.class)).intValue(), b.b(obj, m.I(this.f68827i.getClass())));
                    return;
                }
                if (yz.d.f(this.f68827i.getClass())) {
                    yz.d.c(this.f68827i.getClass());
                    throw null;
                }
                throw new PropertyAccessException("cannot bind to collection property: " + new String(this.f68822d) + ": not a recognized collection type: " + this.f68826h.getClass(), this.f68822d, this.f68820b, this.f68832n);
            }
            if (d.f68807h && yz.d.f(this.f68827i.getClass())) {
                yz.d.c(this.f68827i.getClass());
                d();
                throw null;
            }
            String strD = d();
            Member memberH = h(this.f68827i.getClass(), Integer.valueOf(strD == null ? 0 : strD.hashCode()));
            if (memberH == null) {
                Class<?> cls = this.f68827i.getClass();
                Integer numValueOf = Integer.valueOf(strD != null ? strD.hashCode() : -1);
                Member memberD = obj != null ? n.d(this.f68827i.getClass(), strD, obj.getClass()) : n.c(this.f68827i.getClass(), strD);
                c(cls, numValueOf, memberD);
                memberH = memberD;
            }
            if (memberH instanceof Method) {
                Method method = (Method) memberH;
                Class[] clsArrF = f(method);
                if (obj == null || clsArrF[0].isAssignableFrom(obj.getClass())) {
                    method.invoke(this.f68827i, obj);
                    return;
                }
                if (b.a(clsArrF[0], obj.getClass())) {
                    method.invoke(this.f68827i, b.b(obj, clsArrF[0]));
                    return;
                }
                throw new CompileException("cannot convert type: " + obj.getClass() + ": to " + method.getParameterTypes()[0], this.f68822d, this.f68820b);
            }
            if (memberH != null) {
                Field field = (Field) memberH;
                if (obj == null || field.getType().isAssignableFrom(obj.getClass())) {
                    field.set(this.f68827i, obj);
                    return;
                }
                if (b.a(field.getType(), obj.getClass())) {
                    field.set(this.f68827i, b.b(obj, field.getType()));
                    return;
                }
                throw new CompileException("cannot convert type: " + obj.getClass() + ": to " + field.getType(), this.f68822d, this.f68820b);
            }
            Object obj4 = this.f68827i;
            if (obj4 instanceof Map) {
                ((Map) obj4).put(d.l(strD, this.f68826h, this.f68831m), obj);
                return;
            }
            if (obj4 instanceof org.mvel2.ast.b) {
                ((org.mvel2.ast.d) obj4).c().getVariableResolver(strD).setValue(obj);
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("could not access/write property (");
            sb2.append(strD);
            sb2.append(") in: ");
            Object obj5 = this.f68827i;
            sb2.append(obj5 == null ? "Unknown" : obj5.getClass().getName());
            throw new PropertyAccessException(sb2.toString(), this.f68822d, this.f68820b, this.f68832n);
        } catch (IllegalAccessException e10) {
            throw new PropertyAccessException("could not access property", this.f68822d, this.f68821c, e10, this.f68832n);
        } catch (InvocationTargetException e11) {
            throw new PropertyAccessException("could not access property", this.f68822d, this.f68821c, e11, this.f68832n);
        }
    }

    public static void z(Object obj, String str, Object obj2) {
        new g(str, obj).y(obj2);
    }

    protected int B(int i10) {
        while (i10 > 0 && m.q0(this.f68822d[i10 - 1])) {
            i10--;
        }
        return i10;
    }

    /* JADX WARN: Code duplicated, block: B:128:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x00d9 A[Catch: Exception -> 0x011e, TryCatch #0 {Exception -> 0x011e, blocks: (B:3:0x0003, B:4:0x0009, B:6:0x000d, B:17:0x002a, B:20:0x0030, B:27:0x003f, B:28:0x0042, B:30:0x0047, B:32:0x004d, B:36:0x0058, B:38:0x0064, B:40:0x006c, B:41:0x0076, B:43:0x007f, B:44:0x009f, B:46:0x00a4, B:48:0x00ab, B:51:0x00b8, B:54:0x00c0, B:57:0x00c7, B:59:0x00cd, B:69:0x00e8, B:61:0x00d1, B:62:0x00d4, B:64:0x00d9, B:66:0x00df, B:68:0x00e5, B:70:0x00eb, B:71:0x00f2, B:73:0x00f6, B:75:0x00fc, B:80:0x0107, B:82:0x010b, B:84:0x0111), top: B:91:0x0003, inners: #1, #2 }] */
    protected Object C() {
        int i10;
        char[] cArr;
        int i11 = this.f68820b;
        try {
            int i12 = this.f68824f;
            int i13 = i12 - 1;
            boolean z10 = false;
            while (true) {
                int i14 = this.f68819a;
                if (i13 > i14) {
                    char[] cArr2 = this.f68822d;
                    char c10 = cArr2[i13];
                    if (c10 != '\"') {
                        if (c10 != '\'') {
                            int i15 = 1;
                            if (c10 == ')') {
                                int i16 = i13 - 1;
                                int i17 = 1;
                                while (i16 > 0 && i17 != 0) {
                                    char c11 = this.f68822d[i16];
                                    if (c11 == '\"') {
                                        while (i16 > 0) {
                                            cArr = this.f68822d;
                                            if (cArr[i16] == c11) {
                                                break;
                                            }
                                            break;
                                        }
                                    }
                                    switch (c11) {
                                        case '\'':
                                            while (i16 > 0) {
                                                cArr = this.f68822d;
                                                if (cArr[i16] == c11 || cArr[i16 - 1] == '\\') {
                                                }
                                                i16--;
                                                break;
                                            }
                                            break;
                                        case '(':
                                            i17--;
                                            break;
                                        case ')':
                                            i17++;
                                            break;
                                    }
                                    i16--;
                                }
                                z10 = true;
                                int i18 = i16;
                                i13 = i16 + 1;
                                i12 = i18;
                            } else if (c10 == '.') {
                                if (!z10) {
                                    try {
                                        this.f68820b = i12;
                                        String str = new String(cArr2, i14, i12 - i14);
                                        if (d.f68809j && str.endsWith(".class")) {
                                            str = str.substring(0, str.length() - 6);
                                        }
                                        return q().loadClass(str);
                                    } catch (ClassNotFoundException unused) {
                                        ClassLoader classLoaderQ = q();
                                        char[] cArr3 = this.f68822d;
                                        int i19 = this.f68819a;
                                        Class<?> clsLoadClass = classLoaderQ.loadClass(new String(cArr3, i19, i13 - i19));
                                        String str2 = new String(this.f68822d, i13 + 1, (this.f68824f - i13) - 1);
                                        try {
                                            return clsLoadClass.getField(str2);
                                        } catch (NoSuchFieldException unused2) {
                                            for (Method method : clsLoadClass.getMethods()) {
                                                if (str2.equals(method.getName())) {
                                                    return method;
                                                }
                                            }
                                            return null;
                                        }
                                    }
                                }
                                i12 = i13;
                                z10 = false;
                            } else if (c10 == '}') {
                                while (true) {
                                    i13--;
                                    if (i13 <= 0 || i15 == 0) {
                                        break;
                                    }
                                    char c12 = this.f68822d[i13];
                                    if (c12 == '\"' || c12 == '\'') {
                                        while (i13 > 0) {
                                            char[] cArr4 = this.f68822d;
                                            if (cArr4[i13] == c12 || cArr4[i13 - 1] == '\\') {
                                                break;
                                            }
                                            i13--;
                                        }
                                    } else if (c12 == '{') {
                                        i15--;
                                    } else if (c12 == '}') {
                                        i15++;
                                    }
                                }
                            }
                        } else {
                            while (true) {
                                i10 = i13 - 1;
                                if (i10 > 0) {
                                    char[] cArr5 = this.f68822d;
                                    if (cArr5[i10] != '\'' || cArr5[i13 - 2] == '\\') {
                                        i13 = i10;
                                    }
                                }
                            }
                        }
                        i13--;
                    } else {
                        while (true) {
                            i10 = i13 - 1;
                            if (i10 > 0) {
                                char[] cArr6 = this.f68822d;
                                if (cArr6[i10] != '\"' || cArr6[i13 - 2] == '\\') {
                                    i13 = i10;
                                }
                            }
                        }
                    }
                    i13 = i10;
                    i13--;
                }
            }
        } catch (Exception unused3) {
            this.f68820b = i11;
        }
        return null;
    }

    public g(char[] cArr, Object obj, VariableResolverFactory variableResolverFactory, Object obj2, ParserContext parserContext) {
        this.f68819a = 0;
        this.f68820b = 0;
        this.f68828j = null;
        this.f68829k = true;
        this.f68830l = false;
        this.f68822d = cArr;
        int length = cArr.length;
        this.f68824f = length;
        this.f68823e = length;
        this.f68826h = obj;
        this.f68831m = variableResolverFactory;
        this.f68825g = obj2;
        this.f68832n = parserContext;
    }

    public g(char[] cArr, int i10, int i11, Object obj, VariableResolverFactory variableResolverFactory, Object obj2, ParserContext parserContext) {
        this.f68828j = null;
        this.f68829k = true;
        this.f68830l = false;
        this.f68822d = cArr;
        this.f68819a = i10;
        this.f68821c = i10;
        this.f68820b = i10;
        this.f68823e = i11;
        this.f68824f = i10 + i11;
        this.f68826h = obj;
        this.f68831m = variableResolverFactory;
        this.f68825g = obj2;
        this.f68832n = parserContext;
    }
}
