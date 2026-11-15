package org.apache.tools.ant;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public final class o {
    static Class A;
    static Class B;

    private static final Map f68115h = new Hashtable();

    private static final Map f68116i = new HashMap(8);

    static Class f68117j;

    static Class f68118k;

    static Class f68119l;

    static Class f68120m;

    static Class f68121n;

    static Class f68122o;

    static Class f68123p;

    static Class f68124q;

    static Class f68125r;

    static Class f68126s;

    static Class f68127t;

    static Class f68128u;

    static Class f68129v;

    static Class f68130w;

    static Class f68131x;

    static Class f68132y;

    static Class f68133z;

    private Hashtable f68134a = new Hashtable();

    private Hashtable f68135b = new Hashtable();

    private Hashtable f68136c = new Hashtable();

    private Hashtable f68137d = new Hashtable();

    private List f68138e = new ArrayList();

    private Method f68139f;

    private Class f68140g;

    private static class a extends e {

        private Constructor f68141b;

        private int f68142c;

        a(Method method, Constructor constructor, int i10) {
            super(method);
            this.f68141b = constructor;
            this.f68142c = i10;
        }

        private void e(Object obj, Object obj2) throws IllegalAccessException, InvocationTargetException {
            b().invoke(obj, obj2);
        }

        @Override
        Object a(Project project, Object obj, Object obj2) throws IllegalAccessException, InstantiationException, InvocationTargetException {
            if (obj2 == null) {
                Constructor constructor = this.f68141b;
                obj2 = constructor.newInstance(constructor.getParameterTypes().length == 0 ? new Object[0] : new Object[]{project});
            }
            if (this.f68142c == 1) {
                e(obj, obj2);
            }
            return obj2;
        }

        @Override
        boolean c() {
            return true;
        }

        @Override
        void d(Object obj, Object obj2) throws IllegalAccessException, InvocationTargetException {
            if (this.f68142c == 2) {
                e(obj, obj2);
            }
        }
    }

    static abstract class b {

        private Method f68143a;

        protected b(Method method) {
            this.f68143a = method;
        }

        abstract void a(Project project, Object obj, String str);
    }

    private static class c extends e {
        c(Method method) {
            super(method);
        }

        @Override
        Object a(Project project, Object obj, Object obj2) {
            return b().invoke(obj, null);
        }
    }

    public static final class d {

        private e f68144a;

        private Object f68145b;

        private Project f68146c;

        private Object f68147d;

        private String f68148e;

        d(Project project, Object obj, e eVar, g gVar) {
            this(project, obj, eVar);
        }

        public Object a() {
            if (this.f68148e != null) {
                if (!this.f68144a.c()) {
                    throw new BuildException("Not allowed to use the polymorphic form for this element");
                }
                Object objD = ComponentHelper.j(this.f68146c).d(this.f68148e);
                this.f68147d = objD;
                if (objD == null) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Unable to create object of type ");
                    stringBuffer.append(this.f68148e);
                    throw new BuildException(stringBuffer.toString());
                }
            }
            try {
                Object objA = this.f68144a.a(this.f68146c, this.f68145b, this.f68147d);
                this.f68147d = objA;
                Project project = this.f68146c;
                if (project != null) {
                    project.K(objA);
                }
                return this.f68147d;
            } catch (IllegalAccessException e10) {
                throw new BuildException(e10);
            } catch (IllegalArgumentException e11) {
                if (this.f68148e == null) {
                    throw e11;
                }
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("Invalid type used ");
                stringBuffer2.append(this.f68148e);
                throw new BuildException(stringBuffer2.toString());
            } catch (InstantiationException e12) {
                throw new BuildException(e12);
            } catch (InvocationTargetException e13) {
                throw o.g(e13);
            }
        }

        public void b(String str) {
            this.f68148e = str;
        }

        public void c() {
            try {
                this.f68144a.d(this.f68145b, this.f68147d);
            } catch (IllegalAccessException e10) {
                throw new BuildException(e10);
            } catch (IllegalArgumentException e11) {
                if (this.f68148e == null) {
                    throw e11;
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Invalid type used ");
                stringBuffer.append(this.f68148e);
                throw new BuildException(stringBuffer.toString());
            } catch (InstantiationException e12) {
                throw new BuildException(e12);
            } catch (InvocationTargetException e13) {
                throw o.g(e13);
            }
        }

        private d(Project project, Object obj, e eVar) {
            this.f68146c = project;
            this.f68145b = obj;
            this.f68144a = eVar;
        }
    }

    static abstract class e {

        private Method f68149a;

        protected e(Method method) {
            this.f68149a = method;
        }

        abstract Object a(Project project, Object obj, Object obj2);

        Method b() {
            return this.f68149a;
        }

        boolean c() {
            return false;
        }

        void d(Object obj, Object obj2) {
        }
    }

    static {
        Class[] clsArr = {Boolean.TYPE, Byte.TYPE, Character.TYPE, Short.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE};
        Class clsC = f68117j;
        if (clsC == null) {
            clsC = c("java.lang.Boolean");
            f68117j = clsC;
        }
        Class clsC2 = f68118k;
        if (clsC2 == null) {
            clsC2 = c("java.lang.Byte");
            f68118k = clsC2;
        }
        Class clsC3 = f68119l;
        if (clsC3 == null) {
            clsC3 = c("java.lang.Character");
            f68119l = clsC3;
        }
        Class clsC4 = f68120m;
        if (clsC4 == null) {
            clsC4 = c("java.lang.Short");
            f68120m = clsC4;
        }
        Class clsC5 = f68121n;
        if (clsC5 == null) {
            clsC5 = c("java.lang.Integer");
            f68121n = clsC5;
        }
        Class clsC6 = f68122o;
        if (clsC6 == null) {
            clsC6 = c("java.lang.Long");
            f68122o = clsC6;
        }
        Class clsC7 = f68123p;
        if (clsC7 == null) {
            clsC7 = c("java.lang.Float");
            f68123p = clsC7;
        }
        Class clsC8 = f68124q;
        if (clsC8 == null) {
            clsC8 = c("java.lang.Double");
            f68124q = clsC8;
        }
        Class[] clsArr2 = {clsC, clsC2, clsC3, clsC4, clsC5, clsC6, clsC7, clsC8};
        for (int i10 = 0; i10 < 8; i10++) {
            f68116i.put(clsArr[i10], clsArr2[i10]);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:101:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:103:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:141:0x023a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:48:0x00da  */
    /* JADX WARN: Code duplicated, block: B:50:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:64:0x0115  */
    /* JADX WARN: Code duplicated, block: B:66:0x011d  */
    /* JADX WARN: Code duplicated, block: B:67:0x012b  */
    /* JADX WARN: Code duplicated, block: B:69:0x0133  */
    /* JADX WARN: Code duplicated, block: B:78:0x015f  */
    /* JADX WARN: Code duplicated, block: B:80:0x0167  */
    private o(Class cls) throws NoSuchMethodException {
        Constructor<?> constructor;
        Constructor<?> constructor2;
        b bVarF;
        int i10 = 1;
        this.f68139f = null;
        this.f68140g = cls;
        Method[] methods = cls.getMethods();
        for (int i11 = 0; i11 < methods.length; i11 += i10) {
            Method method = methods[i11];
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (parameterTypes.length == i10 && Void.TYPE.equals(returnType) && ("add".equals(name) || "addConfigured".equals(name))) {
                n(method);
            } else {
                Class clsC = f68125r;
                if (clsC == null) {
                    clsC = c("org.apache.tools.ant.ProjectComponent");
                    f68125r = clsC;
                }
                if (!clsC.isAssignableFrom(cls) || parameterTypes.length != i10 || !q(name, parameterTypes[0])) {
                    if (o() && parameterTypes.length == i10 && "addTask".equals(name)) {
                        Class clsC2 = f68126s;
                        if (clsC2 == null) {
                            clsC2 = c("org.apache.tools.ant.Task");
                            f68126s = clsC2;
                        }
                        if (!clsC2.equals(parameterTypes[0])) {
                            if (!"addText".equals(name)) {
                                if (!name.startsWith("set")) {
                                    if (!name.startsWith("create")) {
                                        if (!name.startsWith("addConfigured")) {
                                            if (name.startsWith("add")) {
                                                i10 = 1;
                                            } else {
                                                i10 = 1;
                                            }
                                        } else if (name.startsWith("add")) {
                                            i10 = 1;
                                        } else {
                                            i10 = 1;
                                        }
                                    } else if (!name.startsWith("addConfigured")) {
                                        if (name.startsWith("add")) {
                                            i10 = 1;
                                        } else {
                                            i10 = 1;
                                        }
                                    } else if (name.startsWith("add")) {
                                        i10 = 1;
                                    } else {
                                        i10 = 1;
                                    }
                                } else if (!name.startsWith("create")) {
                                    if (!name.startsWith("addConfigured")) {
                                        if (name.startsWith("add")) {
                                            i10 = 1;
                                        } else {
                                            i10 = 1;
                                        }
                                    } else if (name.startsWith("add")) {
                                        i10 = 1;
                                    } else {
                                        i10 = 1;
                                    }
                                } else if (!name.startsWith("addConfigured")) {
                                    if (name.startsWith("add")) {
                                        i10 = 1;
                                    } else {
                                        i10 = 1;
                                    }
                                } else if (name.startsWith("add")) {
                                    i10 = 1;
                                } else {
                                    i10 = 1;
                                }
                            } else if (!name.startsWith("set")) {
                                if (!name.startsWith("create")) {
                                    if (!name.startsWith("addConfigured")) {
                                        if (name.startsWith("add")) {
                                            i10 = 1;
                                        } else {
                                            i10 = 1;
                                        }
                                    } else if (name.startsWith("add")) {
                                        i10 = 1;
                                    } else {
                                        i10 = 1;
                                    }
                                } else if (!name.startsWith("addConfigured")) {
                                    if (name.startsWith("add")) {
                                        i10 = 1;
                                    } else {
                                        i10 = 1;
                                    }
                                } else if (name.startsWith("add")) {
                                    i10 = 1;
                                } else {
                                    i10 = 1;
                                }
                            } else if (!name.startsWith("create")) {
                                if (!name.startsWith("addConfigured")) {
                                    if (name.startsWith("add")) {
                                        i10 = 1;
                                    } else {
                                        i10 = 1;
                                    }
                                } else if (name.startsWith("add")) {
                                    i10 = 1;
                                } else {
                                    i10 = 1;
                                }
                            } else if (!name.startsWith("addConfigured")) {
                                if (name.startsWith("add")) {
                                    i10 = 1;
                                } else {
                                    i10 = 1;
                                }
                            } else if (name.startsWith("add")) {
                                i10 = 1;
                            } else {
                                i10 = 1;
                            }
                        }
                    } else if (!"addText".equals(name) && Void.TYPE.equals(returnType) && parameterTypes.length == i10) {
                        Class clsC3 = f68127t;
                        if (clsC3 == null) {
                            clsC3 = c("java.lang.String");
                            f68127t = clsC3;
                        }
                        if (clsC3.equals(parameterTypes[0])) {
                            this.f68139f = methods[i11];
                        } else if (!name.startsWith("set")) {
                            if (!name.startsWith("create")) {
                                if (!name.startsWith("addConfigured")) {
                                    if (name.startsWith("add")) {
                                        i10 = 1;
                                    } else {
                                        i10 = 1;
                                    }
                                } else if (name.startsWith("add")) {
                                    i10 = 1;
                                } else {
                                    i10 = 1;
                                }
                            } else if (!name.startsWith("addConfigured")) {
                                if (name.startsWith("add")) {
                                    i10 = 1;
                                } else {
                                    i10 = 1;
                                }
                            } else if (name.startsWith("add")) {
                                i10 = 1;
                            } else {
                                i10 = 1;
                            }
                        } else if (!name.startsWith("create")) {
                            if (!name.startsWith("addConfigured")) {
                                if (name.startsWith("add")) {
                                    i10 = 1;
                                } else {
                                    i10 = 1;
                                }
                            } else if (name.startsWith("add")) {
                                i10 = 1;
                            } else {
                                i10 = 1;
                            }
                        } else if (!name.startsWith("addConfigured")) {
                            if (name.startsWith("add")) {
                                i10 = 1;
                            } else {
                                i10 = 1;
                            }
                        } else if (name.startsWith("add")) {
                            i10 = 1;
                        } else {
                            i10 = 1;
                        }
                    } else if (!name.startsWith("set") && Void.TYPE.equals(returnType) && parameterTypes.length == i10 && !parameterTypes[0].isArray()) {
                        String strM = m(name, "set");
                        if (this.f68135b.get(strM) == null) {
                            bVarF = f(method, parameterTypes[0], strM);
                            if (bVarF != null) {
                                this.f68134a.put(strM, parameterTypes[0]);
                                this.f68135b.put(strM, bVarF);
                            }
                        } else {
                            Class clsC4 = f68127t;
                            if (clsC4 == null) {
                                clsC4 = c("java.lang.String");
                                f68127t = clsC4;
                            }
                            if (!clsC4.equals(parameterTypes[0])) {
                                bVarF = f(method, parameterTypes[0], strM);
                                if (bVarF != null) {
                                    this.f68134a.put(strM, parameterTypes[0]);
                                    this.f68135b.put(strM, bVarF);
                                }
                            }
                        }
                    } else if (!name.startsWith("create") && !returnType.isArray() && !returnType.isPrimitive() && parameterTypes.length == 0) {
                        String strM2 = m(name, "create");
                        if (this.f68137d.get(strM2) == null) {
                            this.f68136c.put(strM2, returnType);
                            this.f68137d.put(strM2, new c(method));
                        }
                    } else if (!name.startsWith("addConfigured") && Void.TYPE.equals(returnType) && parameterTypes.length == i10) {
                        Class clsC5 = f68127t;
                        if (clsC5 == null) {
                            clsC5 = c("java.lang.String");
                            f68127t = clsC5;
                        }
                        if (!clsC5.equals(parameterTypes[0]) && !parameterTypes[0].isArray() && !parameterTypes[0].isPrimitive()) {
                            try {
                                constructor2 = parameterTypes[0].getConstructor(null);
                            } catch (NoSuchMethodException unused) {
                                Class<?> cls2 = parameterTypes[0];
                                Class<?> clsC6 = f68128u;
                                if (clsC6 == null) {
                                    clsC6 = c("org.apache.tools.ant.Project");
                                    f68128u = clsC6;
                                }
                                constructor2 = cls2.getConstructor(clsC6);
                            }
                            try {
                                String strM3 = m(name, "addConfigured");
                                this.f68136c.put(strM3, parameterTypes[0]);
                                this.f68137d.put(strM3, new a(method, constructor2, 2));
                            } catch (NoSuchMethodException unused2) {
                            }
                            i10 = 1;
                        } else if (name.startsWith("add")) {
                            i10 = 1;
                        } else {
                            i10 = 1;
                        }
                    } else if (name.startsWith("add") || !Void.TYPE.equals(returnType)) {
                        i10 = 1;
                    } else if (parameterTypes.length == 1) {
                        Class clsC7 = f68127t;
                        if (clsC7 == null) {
                            clsC7 = c("java.lang.String");
                            f68127t = clsC7;
                        }
                        if (!clsC7.equals(parameterTypes[0]) && !parameterTypes[0].isArray() && !parameterTypes[0].isPrimitive()) {
                            try {
                                constructor = parameterTypes[0].getConstructor(null);
                            } catch (NoSuchMethodException unused3) {
                                Class<?> cls3 = parameterTypes[0];
                                Class<?> clsC8 = f68128u;
                                if (clsC8 == null) {
                                    clsC8 = c("org.apache.tools.ant.Project");
                                    f68128u = clsC8;
                                }
                                constructor = cls3.getConstructor(clsC8);
                            }
                            String strM4 = m(name, "add");
                            if (this.f68136c.get(strM4) == null) {
                                this.f68136c.put(strM4, parameterTypes[0]);
                                this.f68137d.put(strM4, new a(method, constructor, 1));
                            }
                        }
                        i10 = 1;
                    } else {
                        i10 = 1;
                    }
                }
            }
        }
    }

    static Class c(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    private String d(String str) {
        return str.length() <= 20 ? str : new StringBuffer(str).replace(8, str.length() - 8, "...").toString();
    }

    private e e(Project project, Object obj, String str) {
        ComponentHelper componentHelperJ;
        Class clsI;
        Method methodH;
        Object objD;
        if (this.f68138e.size() == 0 || (clsI = (componentHelperJ = ComponentHelper.j(project)).i(str)) == null || (methodH = h(clsI, this.f68138e)) == null || (objD = componentHelperJ.d(str)) == null) {
            return null;
        }
        return new f(this, methodH, objD, objD);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private b f(Method method, Class cls, String str) throws NoSuchMethodException {
        Class cls2;
        Constructor constructor;
        boolean z10;
        Map map = f68116i;
        if (map.containsKey(cls)) {
            cls = (Class) map.get(cls);
        }
        Class clsC = f68127t;
        if (clsC == null) {
            clsC = c("java.lang.String");
            f68127t = clsC;
        }
        if (clsC.equals(cls)) {
            return new h(this, method, method);
        }
        Class clsC2 = f68119l;
        if (clsC2 == null) {
            clsC2 = c("java.lang.Character");
            f68119l = clsC2;
        }
        if (clsC2.equals(cls)) {
            return new i(this, method, str, method);
        }
        Class clsC3 = f68117j;
        if (clsC3 == null) {
            clsC3 = c("java.lang.Boolean");
            f68117j = clsC3;
        }
        if (clsC3.equals(cls)) {
            return new j(this, method, method);
        }
        Class clsC4 = f68133z;
        if (clsC4 == null) {
            clsC4 = c("java.lang.Class");
            f68133z = clsC4;
        }
        if (clsC4.equals(cls)) {
            return new k(this, method, method);
        }
        Class clsC5 = A;
        if (clsC5 == null) {
            clsC5 = c("java.io.File");
            A = clsC5;
        }
        if (clsC5.equals(cls)) {
            return new l(this, method, method);
        }
        Class cls3 = B;
        if (cls3 == null) {
            cls2 = cls3;
            Class clsC6 = c("org.apache.tools.ant.types.EnumeratedAttribute");
            B = clsC6;
            cls2 = clsC6;
        }
        cls2 = cls3;
        if (cls2.isAssignableFrom(cls)) {
            return new m(this, method, cls, method);
        }
        if (Enum.class != 0 && Enum.class.isAssignableFrom(cls)) {
            return new n(this, method, method, cls);
        }
        Class clsC7 = f68122o;
        if (clsC7 == null) {
            clsC7 = c("java.lang.Long");
            f68122o = clsC7;
        }
        if (clsC7.equals(cls)) {
            return new org.apache.tools.ant.d(this, method, method);
        }
        try {
            try {
                Class<?> clsC8 = f68128u;
                if (clsC8 == null) {
                    clsC8 = c("org.apache.tools.ant.Project");
                    f68128u = clsC8;
                }
                Class<?> clsC9 = f68127t;
                if (clsC9 == null) {
                    clsC9 = c("java.lang.String");
                    f68127t = clsC9;
                }
                constructor = cls.getConstructor(clsC8, clsC9);
                z10 = true;
            } catch (NoSuchMethodException unused) {
                return null;
            }
        } catch (NoSuchMethodException unused2) {
            Class<?> clsC10 = f68127t;
            if (clsC10 == null) {
                clsC10 = c("java.lang.String");
                f68127t = clsC10;
            }
            constructor = cls.getConstructor(clsC10);
            z10 = false;
        }
        return new org.apache.tools.ant.e(this, method, z10, constructor, method);
    }

    public static BuildException g(InvocationTargetException invocationTargetException) {
        Throwable targetException = invocationTargetException.getTargetException();
        return targetException instanceof BuildException ? (BuildException) targetException : new BuildException(targetException);
    }

    private Method h(Class cls, List list) {
        Method method = null;
        Class<?> cls2 = null;
        for (int i10 = 0; i10 < list.size(); i10++) {
            Method method2 = (Method) list.get(i10);
            Class<?> cls3 = method2.getParameterTypes()[0];
            if (cls3.isAssignableFrom(cls)) {
                if (cls2 == null) {
                    method = method2;
                    cls2 = cls3;
                } else if (!cls3.isAssignableFrom(cls2)) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("ambiguous: types ");
                    stringBuffer.append(cls2.getName());
                    stringBuffer.append(" and ");
                    stringBuffer.append(cls3.getName());
                    stringBuffer.append(" match ");
                    stringBuffer.append(cls.getName());
                    throw new BuildException(stringBuffer.toString());
                }
            }
        }
        return method;
    }

    private String j(Project project, Object obj) {
        return project.p(obj);
    }

    public static o k(Project project, Class cls) {
        Map map = f68115h;
        o oVar = (o) map.get(cls.getName());
        if (oVar == null || oVar.f68140g != cls) {
            oVar = new o(cls);
            if (project != null) {
                map.put(cls.getName(), oVar);
            }
        }
        return oVar;
    }

    private e l(Project project, String str, Object obj, String str2, w wVar) {
        String strD = r.d(str2);
        String strC = r.c(str2);
        if (strD.equals("antlib:org.apache.tools.ant")) {
            strD = "";
        }
        if (str.equals("antlib:org.apache.tools.ant")) {
            str = "";
        }
        e eVarE = (strD.equals(str) || strD.length() == 0) ? (e) this.f68137d.get(strC.toLowerCase(Locale.US)) : null;
        if (eVarE == null) {
            eVarE = e(project, obj, str2);
        }
        if (eVarE == null) {
            t(project, obj, str2);
        }
        return eVarE;
    }

    private static String m(String str, String str2) {
        return str.substring(str2.length()).toLowerCase(Locale.US);
    }

    private void n(Method method) {
        Class<?> cls = method.getParameterTypes()[0];
        for (int i10 = 0; i10 < this.f68138e.size(); i10++) {
            Method method2 = (Method) this.f68138e.get(i10);
            if (method2.getParameterTypes()[0].equals(cls)) {
                if (method.getName().equals("addConfigured")) {
                    this.f68138e.set(i10, method);
                    return;
                }
                return;
            } else {
                if (method2.getParameterTypes()[0].isAssignableFrom(cls)) {
                    this.f68138e.add(i10, method);
                    return;
                }
            }
        }
        this.f68138e.add(method);
    }

    private boolean q(String str, Class cls) {
        if ("setLocation".equals(str)) {
            Class clsC = f68129v;
            if (clsC == null) {
                clsC = c("org.apache.tools.ant.Location");
                f68129v = clsC;
            }
            if (clsC.equals(cls)) {
                return true;
            }
        }
        if (!"setTaskType".equals(str)) {
            return false;
        }
        Class clsC2 = f68127t;
        if (clsC2 == null) {
            clsC2 = c("java.lang.String");
            f68127t = clsC2;
        }
        return clsC2.equals(cls);
    }

    public void b(Project project, Object obj, String str) {
        Method method = this.f68139f;
        if (method != null) {
            try {
                method.invoke(obj, str);
                return;
            } catch (IllegalAccessException e10) {
                throw new BuildException(e10);
            } catch (InvocationTargetException e11) {
                throw g(e11);
            }
        }
        String strTrim = str.trim();
        if (strTrim.length() == 0) {
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(project.p(obj));
        stringBuffer.append(" doesn't support nested text data (\"");
        stringBuffer.append(d(strTrim));
        stringBuffer.append("\").");
        throw new BuildException(stringBuffer.toString());
    }

    public d i(Project project, String str, Object obj, String str2, w wVar) {
        return new d(project, obj, l(project, str, obj, str2, wVar), null);
    }

    public boolean o() {
        Class clsC = f68132y;
        if (clsC == null) {
            clsC = c("org.apache.tools.ant.TaskContainer");
            f68132y = clsC;
        }
        return clsC.isAssignableFrom(this.f68140g);
    }

    public boolean p() {
        Class clsC = f68130w;
        if (clsC == null) {
            clsC = c("org.apache.tools.ant.DynamicElement");
            f68130w = clsC;
        }
        if (!clsC.isAssignableFrom(this.f68140g)) {
            Class clsC2 = f68131x;
            if (clsC2 == null) {
                clsC2 = c("org.apache.tools.ant.DynamicElementNS");
                f68131x = clsC2;
            }
            if (!clsC2.isAssignableFrom(this.f68140g)) {
                return false;
            }
        }
        return true;
    }

    public void r(Project project, Object obj, String str, String str2) {
        b bVar = (b) this.f68135b.get(str.toLowerCase(Locale.US));
        if (bVar != null) {
            try {
                bVar.a(project, obj, str2);
                return;
            } catch (IllegalAccessException e10) {
                throw new BuildException(e10);
            } catch (InvocationTargetException e11) {
                throw g(e11);
            }
        }
        if (str.indexOf(58) != -1) {
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(j(project, obj));
        stringBuffer.append(" doesn't support the \"");
        stringBuffer.append(str);
        stringBuffer.append("\" attribute.");
        throw new UnsupportedAttributeException(stringBuffer.toString(), str);
    }

    public boolean s(String str, String str2) {
        if (p() || this.f68138e.size() > 0) {
            return true;
        }
        if (!this.f68137d.containsKey(r.c(str2).toLowerCase(Locale.US))) {
            return false;
        }
        String strD = r.d(str2);
        if (strD.equals("antlib:org.apache.tools.ant")) {
            strD = "";
        }
        if ("".equals(strD)) {
            return true;
        }
        if (str.equals("antlib:org.apache.tools.ant")) {
            str = "";
        }
        return strD.equals(str);
    }

    public void t(Project project, Object obj, String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(project.p(obj));
        stringBuffer.append(" doesn't support the nested \"");
        stringBuffer.append(str);
        stringBuffer.append("\" element.");
        throw new UnsupportedElementException(stringBuffer.toString(), str);
    }
}
