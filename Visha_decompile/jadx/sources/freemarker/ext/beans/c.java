package freemarker.ext.beans;

import defpackage.b65;
import defpackage.c0d;
import defpackage.eq6;
import defpackage.fu7;
import defpackage.ggb;
import defpackage.ha9;
import defpackage.km9;
import defpackage.lw0;
import defpackage.mw0;
import defpackage.pq5;
import defpackage.yw0;
import freemarker.core.BugException;
import freemarker.template.utility.NullArgumentException;
import java.beans.BeanInfo;
import java.beans.IndexedPropertyDescriptor;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.MethodDescriptor;
import java.beans.PropertyDescriptor;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.commons.lang3.BooleanUtils;

public class c {
    public static final pq5 o = pq5.k("freemarker.beans");
    public static final boolean p = BooleanUtils.TRUE.equals(ha9.c("freemarker.development", BooleanUtils.FALSE));
    public static final mw0 q;
    public static final Object r;
    public static final Object s;
    public static final Object t;
    public static Class u;
    public static Class v;
    public final int a;
    public final boolean b;
    public final d c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final Object g;
    public final Map h;
    public final boolean i;
    public final Set j;
    public final Set k;
    public final List l;
    public final ReferenceQueue m;
    public int n;

    static {
        mw0 mw0Var = null;
        try {
            try {
                Class.forName("org.zeroturnaround.javarebel.ClassEventListener");
                try {
                    mw0Var = (mw0) b65.class.newInstance();
                } catch (Throwable th) {
                    o.h("Error initializing JRebel integration. JRebel integration disabled.", th);
                }
            } catch (Throwable th2) {
                if (!(th2 instanceof ClassNotFoundException)) {
                    o.h("Error initializing JRebel integration. JRebel integration disabled.", th2);
                }
            }
        } catch (Throwable unused) {
        }
        q = mw0Var;
        r = new Object();
        s = new Object();
        t = new Object();
    }

    public c(yw0 yw0Var, Object obj) {
        this(yw0Var, obj, false, false);
    }

    public static Class f(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static Map h(Class cls) {
        HashMap map = new HashMap();
        i(cls, map);
        return map;
    }

    public static void i(Class cls, Map map) {
        if (Modifier.isPublic(cls.getModifiers())) {
            try {
                for (Method method : cls.getMethods()) {
                    a aVar = new a(method);
                    List linkedList = (List) map.get(aVar);
                    if (linkedList == null) {
                        linkedList = new LinkedList();
                        map.put(aVar, linkedList);
                    }
                    linkedList.add(method);
                }
                return;
            } catch (SecurityException e) {
                pq5 pq5Var = o;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Could not discover accessible methods of class ");
                stringBuffer.append(cls.getName());
                stringBuffer.append(", attemping superclasses/interfaces.");
                pq5Var.A(stringBuffer.toString(), e);
            }
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            i(cls2, map);
        }
        Class superclass = cls.getSuperclass();
        if (superclass != null) {
            i(superclass, map);
        }
    }

    public static Map l(Map map) {
        Object obj = r;
        Map map2 = (Map) map.get(obj);
        if (map2 != null) {
            return map2;
        }
        HashMap map3 = new HashMap();
        map.put(obj, map3);
        return map3;
    }

    public static Class[] m(Map map, AccessibleObject accessibleObject) {
        return (Class[]) ((Map) map.get(r)).get(accessibleObject);
    }

    public static Method q(a aVar, Map map) {
        List list = (List) map.get(aVar);
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (Method) list.iterator().next();
    }

    public static Method r(Method method, Map map) {
        List<Method> list;
        if (method == null || (list = (List) map.get(new a(method))) == null) {
            return null;
        }
        for (Method method2 : list) {
            if (method2.getReturnType() == method.getReturnType()) {
                return method2;
            }
        }
        return null;
    }

    public final void A(Object obj) {
        synchronized (this.g) {
            this.l.add(new WeakReference(obj, this.m));
            B();
        }
    }

    public final void B() {
        while (true) {
            Reference referencePoll = this.m.poll();
            if (referencePoll == null) {
                return;
            }
            synchronized (this.g) {
                try {
                    Iterator it = this.l.iterator();
                    while (it.hasNext()) {
                        if (it.next() == referencePoll) {
                            it.remove();
                            break;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final MethodDescriptor[] C(MethodDescriptor[] methodDescriptorArr) {
        return methodDescriptorArr;
    }

    public final void a(Map map, Class cls, Map map2) {
        BeanInfo beanInfo = Introspector.getBeanInfo(cls);
        PropertyDescriptor[] propertyDescriptors = beanInfo.getPropertyDescriptors();
        if (propertyDescriptors != null) {
            for (int length = propertyDescriptors.length - 1; length >= 0; length--) {
                e(map, propertyDescriptors[length], cls, map2);
            }
        }
        if (this.a < 2) {
            b.a aVar = new b.a();
            MethodDescriptor[] methodDescriptorArrC = C(beanInfo.getMethodDescriptors());
            if (methodDescriptorArrC != null) {
                b.C0347b c0347b = null;
                for (int length2 = methodDescriptorArrC.length - 1; length2 >= 0; length2--) {
                    Method methodR = r(methodDescriptorArrC[length2].getMethod(), map2);
                    if (methodR != null && t(methodR)) {
                        aVar.d(methodR);
                        if (this.c != null) {
                            if (c0347b == null) {
                                c0347b = new b.C0347b();
                            }
                            c0347b.c(cls);
                            c0347b.d(methodR);
                            this.c.a(c0347b, aVar);
                        }
                        PropertyDescriptor propertyDescriptorA = aVar.a();
                        if (propertyDescriptorA != null && !(map.get(propertyDescriptorA.getName()) instanceof PropertyDescriptor)) {
                            e(map, propertyDescriptorA, cls, map2);
                        }
                        String strB = aVar.b();
                        if (strB != null) {
                            Object obj = map.get(strB);
                            if (obj instanceof Method) {
                                fu7 fu7Var = new fu7(this.d);
                                fu7Var.e((Method) obj);
                                fu7Var.e(methodR);
                                map.put(strB, fu7Var);
                                l(map).remove(obj);
                            } else if (obj instanceof fu7) {
                                ((fu7) obj).e(methodR);
                            } else if (aVar.c() || !(obj instanceof PropertyDescriptor)) {
                                map.put(strB, methodR);
                                l(map).put(methodR, methodR.getParameterTypes());
                            }
                        }
                    }
                }
            }
        }
    }

    public final void b(Map map, Class cls) {
        try {
            Constructor<?>[] constructors = cls.getConstructors();
            if (constructors.length == 1) {
                Constructor<?> constructor = constructors[0];
                map.put(s, new km9(constructor, constructor.getParameterTypes()));
            } else if (constructors.length > 1) {
                fu7 fu7Var = new fu7(this.d);
                for (Constructor<?> constructor2 : constructors) {
                    fu7Var.d(constructor2);
                }
                map.put(s, fu7Var);
            }
        } catch (SecurityException e) {
            pq5 pq5Var = o;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Can't discover constructors for class ");
            stringBuffer.append(cls.getName());
            pq5Var.A(stringBuffer.toString(), e);
        }
    }

    public final void c(Map map, Class cls) {
        Field[] fields = cls.getFields();
        for (Field field : fields) {
            if ((field.getModifiers() & 8) == 0) {
                map.put(field.getName(), field);
            }
        }
    }

    public final void d(Map map, Map map2) {
        Method methodQ = q(a.c, map2);
        if (methodQ == null) {
            methodQ = q(a.d, map2);
        }
        if (methodQ != null) {
            map.put(t, methodQ);
        }
    }

    public final void e(Map map, PropertyDescriptor propertyDescriptor, Class cls, Map map2) {
        if (propertyDescriptor instanceof IndexedPropertyDescriptor) {
            IndexedPropertyDescriptor indexedPropertyDescriptor = (IndexedPropertyDescriptor) propertyDescriptor;
            Method indexedReadMethod = indexedPropertyDescriptor.getIndexedReadMethod();
            Method methodR = r(indexedReadMethod, map2);
            if (methodR == null || !t(methodR)) {
                return;
            }
            if (indexedReadMethod != methodR) {
                try {
                    indexedPropertyDescriptor = new IndexedPropertyDescriptor(indexedPropertyDescriptor.getName(), indexedPropertyDescriptor.getReadMethod(), (Method) null, methodR, (Method) null);
                } catch (IntrospectionException e) {
                    pq5 pq5Var = o;
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Failed creating a publicly-accessible property descriptor for ");
                    stringBuffer.append(cls.getName());
                    stringBuffer.append(" indexed property ");
                    stringBuffer.append(propertyDescriptor.getName());
                    stringBuffer.append(", read method ");
                    stringBuffer.append(methodR);
                    pq5Var.A(stringBuffer.toString(), e);
                    return;
                }
            }
            map.put(indexedPropertyDescriptor.getName(), indexedPropertyDescriptor);
            l(map).put(methodR, methodR.getParameterTypes());
            return;
        }
        Method readMethod = propertyDescriptor.getReadMethod();
        Method methodR2 = r(readMethod, map2);
        if (methodR2 == null || !t(methodR2)) {
            return;
        }
        if (readMethod != methodR2) {
            try {
                PropertyDescriptor propertyDescriptor2 = new PropertyDescriptor(propertyDescriptor.getName(), methodR2, (Method) null);
                try {
                    propertyDescriptor2.setReadMethod(methodR2);
                    propertyDescriptor = propertyDescriptor2;
                } catch (IntrospectionException e2) {
                    e = e2;
                    propertyDescriptor = propertyDescriptor2;
                    pq5 pq5Var2 = o;
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Failed creating a publicly-accessible property descriptor for ");
                    stringBuffer2.append(cls.getName());
                    stringBuffer2.append(" property ");
                    stringBuffer2.append(propertyDescriptor.getName());
                    stringBuffer2.append(", read method ");
                    stringBuffer2.append(methodR2);
                    pq5Var2.A(stringBuffer2.toString(), e);
                    return;
                }
            } catch (IntrospectionException e3) {
                e = e3;
            }
        }
        map.put(propertyDescriptor.getName(), propertyDescriptor);
    }

    public final Map g(Class cls) {
        HashMap map = new HashMap();
        if (this.b) {
            c(map, cls);
        }
        Map mapH = h(cls);
        d(map, mapH);
        if (this.a != 3) {
            try {
                a(map, cls, mapH);
            } catch (IntrospectionException e) {
                pq5 pq5Var = o;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Couldn't properly perform introspection for class ");
                stringBuffer.append(cls);
                pq5Var.A(stringBuffer.toString(), e);
                map.clear();
            }
        }
        b(map, cls);
        if (map.size() > 1) {
            return map;
        }
        if (map.size() == 0) {
            return Collections.EMPTY_MAP;
        }
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        return Collections.singletonMap(entry.getKey(), entry.getValue());
    }

    public final void j() {
        synchronized (this.g) {
            try {
                this.h.clear();
                this.j.clear();
                this.n++;
                Iterator it = this.l.iterator();
                while (it.hasNext()) {
                    Object obj = ((WeakReference) it.next()).get();
                    if (obj != null) {
                        if (obj instanceof lw0) {
                            ((lw0) obj).b();
                        } else {
                            if (!(obj instanceof eq6)) {
                                throw new BugException();
                            }
                            ((eq6) obj).a();
                        }
                    }
                }
                B();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Map k(Class cls) {
        Map map;
        if (this.i && (map = (Map) this.h.get(cls)) != null) {
            return map;
        }
        synchronized (this.g) {
            try {
                Map map2 = (Map) this.h.get(cls);
                if (map2 != null) {
                    return map2;
                }
                String name = cls.getName();
                if (this.j.contains(name)) {
                    x(name);
                }
                while (map2 == null && this.k.contains(cls)) {
                    try {
                        this.g.wait();
                        map2 = (Map) this.h.get(cls);
                    } catch (InterruptedException e) {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("Class inrospection data lookup aborded: ");
                        stringBuffer.append(e);
                        throw new RuntimeException(stringBuffer.toString());
                    }
                }
                if (map2 != null) {
                    return map2;
                }
                this.k.add(cls);
                try {
                    Map mapG = g(cls);
                    synchronized (this.g) {
                        this.h.put(cls, mapG);
                        this.j.add(name);
                    }
                    synchronized (this.g) {
                        this.k.remove(cls);
                        this.g.notifyAll();
                    }
                    return mapG;
                } catch (Throwable th) {
                    synchronized (this.g) {
                        this.k.remove(cls);
                        this.g.notifyAll();
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int n() {
        int i;
        synchronized (this.g) {
            i = this.n;
        }
        return i;
    }

    public boolean o() {
        return this.b;
    }

    public int p() {
        return this.a;
    }

    public Object s() {
        return this.g;
    }

    public boolean t(Method method) {
        return this.a < 1 || !ggb.d(method);
    }

    public boolean u() {
        return this.f;
    }

    public int v(Class cls) {
        Map mapK = k(cls);
        int size = mapK.size();
        if (mapK.containsKey(s)) {
            size--;
        }
        if (mapK.containsKey(t)) {
            size--;
        }
        return mapK.containsKey(r) ? size - 1 : size;
    }

    public Set w(Class cls) {
        HashSet hashSet = new HashSet(k(cls).keySet());
        hashSet.remove(s);
        hashSet.remove(t);
        hashSet.remove(r);
        return hashSet;
    }

    public final void x(String str) {
        pq5 pq5Var = o;
        if (pq5Var.s()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Detected multiple classes with the same name, \"");
            stringBuffer.append(str);
            stringBuffer.append("\". Assuming it was a class-reloading. Clearing class introspection ");
            stringBuffer.append("caches to release old data.");
            pq5Var.n(stringBuffer.toString());
        }
        j();
    }

    public void y(lw0 lw0Var) {
        A(lw0Var);
    }

    public void z(eq6 eq6Var) {
        A(eq6Var);
    }

    public c(yw0 yw0Var, Object obj, boolean z, boolean z2) {
        Map mapD = c0d.d(0, 0.75f, 16);
        this.h = mapD;
        this.i = c0d.b(mapD);
        this.j = new HashSet(0);
        this.k = new HashSet(0);
        this.l = new LinkedList();
        this.m = new ReferenceQueue();
        NullArgumentException.check("sharedLock", obj);
        this.a = yw0Var.d();
        this.b = yw0Var.c();
        this.c = yw0Var.e();
        yw0Var.f();
        this.d = yw0Var.g();
        this.g = obj;
        this.e = z;
        this.f = z2;
        mw0 mw0Var = q;
        if (mw0Var != null) {
            mw0Var.a(this);
        }
    }

    public static final class a {
        public static final a c;
        public static final a d;
        public final String a;
        public final Class[] b;

        static {
            Class clsF = c.u;
            if (clsF == null) {
                clsF = c.f("java.lang.String");
                c.u = clsF;
            }
            c = new a("get", new Class[]{clsF});
            Class clsF2 = c.v;
            if (clsF2 == null) {
                clsF2 = c.f("java.lang.Object");
                c.v = clsF2;
            }
            d = new a("get", new Class[]{clsF2});
        }

        public a(String str, Class[] clsArr) {
            this.a = str;
            this.b = clsArr;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aVar.a.equals(this.a) && Arrays.equals(this.b, aVar.b);
        }

        public int hashCode() {
            return this.b.length ^ this.a.hashCode();
        }

        public a(Method method) {
            this(method.getName(), method.getParameterTypes());
        }
    }
}
