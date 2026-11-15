package org.mozilla.javascript;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import okhttp3.HttpUrl;

public class f {
    public Class a;
    public Map b;
    public Map c;
    public Map d;
    public Map e;
    public NativeJavaMethod f;

    public f(Scriptable scriptable, Class cls, boolean z) {
        try {
            Context contextEnterContext = ContextFactory.getGlobal().enterContext();
            ClassShutter classShutter = contextEnterContext.getClassShutter();
            if (classShutter != null && !classShutter.visibleToScripts(cls.getName())) {
                throw Context.reportRuntimeError1("msg.access.prohibited", cls.getName());
            }
            this.b = new HashMap();
            this.d = new HashMap();
            this.a = cls;
            s(scriptable, z, contextEnterContext.hasFeature(13));
            Context.exit();
        } catch (Throwable th) {
            Context.exit();
            throw th;
        }
    }

    public static void a(Class cls, Map map, boolean z, boolean z2) {
        if (Modifier.isPublic(cls.getModifiers()) || z2) {
            try {
                if (!z && !z2) {
                    for (Method method : cls.getMethods()) {
                        a aVar = new a(method);
                        if (!map.containsKey(aVar)) {
                            map.put(aVar, method);
                        }
                    }
                    return;
                }
                while (cls != null) {
                    try {
                        for (Method method2 : cls.getDeclaredMethods()) {
                            int modifiers = method2.getModifiers();
                            if (Modifier.isPublic(modifiers) || Modifier.isProtected(modifiers) || z2) {
                                a aVar2 = new a(method2);
                                if (!map.containsKey(aVar2)) {
                                    if (z2 && !method2.isAccessible()) {
                                        method2.setAccessible(true);
                                    }
                                    map.put(aVar2, method2);
                                }
                            }
                        }
                        for (Class<?> cls2 : cls.getInterfaces()) {
                            a(cls2, map, z, z2);
                        }
                        cls = cls.getSuperclass();
                    } catch (SecurityException unused) {
                        for (Method method3 : cls.getMethods()) {
                            a aVar3 = new a(method3);
                            if (!map.containsKey(aVar3)) {
                                map.put(aVar3, method3);
                            }
                        }
                        return;
                    }
                }
                return;
            } catch (SecurityException unused2) {
                Context.reportWarning("Could not discover accessible methods of class " + cls.getName() + " due to lack of privileges, attemping superclasses/interfaces.");
            }
        }
        for (Class<?> cls3 : cls.getInterfaces()) {
            a(cls3, map, z, z2);
        }
        Class superclass = cls.getSuperclass();
        if (superclass != null) {
            a(superclass, map, z, z2);
        }
    }

    public static Method[] b(Class cls, boolean z, boolean z2) {
        HashMap map = new HashMap();
        a(cls, map, z, z2);
        return (Method[]) map.values().toArray(new Method[map.size()]);
    }

    public static MemberBox c(MemberBox[] memberBoxArr, boolean z) {
        for (MemberBox memberBox : memberBoxArr) {
            if (memberBox.argTypes.length == 0 && (!z || memberBox.isStatic())) {
                if (memberBox.method().getReturnType() != Void.TYPE) {
                    return memberBox;
                }
                return null;
            }
        }
        return null;
    }

    public static MemberBox d(Class cls, MemberBox[] memberBoxArr, boolean z) {
        for (int i = 1; i <= 2; i++) {
            for (MemberBox memberBox : memberBoxArr) {
                if (!z || memberBox.isStatic()) {
                    Class<?>[] clsArr = memberBox.argTypes;
                    if (clsArr.length != 1) {
                        continue;
                    } else if (i != 1) {
                        if (i != 2) {
                            Kit.codeBug();
                        }
                        if (clsArr[0].isAssignableFrom(cls)) {
                            return memberBox;
                        }
                    } else if (clsArr[0] == cls) {
                        return memberBox;
                    }
                }
            }
        }
        return null;
    }

    public static MemberBox e(MemberBox[] memberBoxArr, boolean z) {
        for (MemberBox memberBox : memberBoxArr) {
            if ((!z || memberBox.isStatic()) && memberBox.method().getReturnType() == Void.TYPE && memberBox.argTypes.length == 1) {
                return memberBox;
            }
        }
        return null;
    }

    public static MemberBox g(boolean z, Map map, String str, String str2) {
        String strConcat = str.concat(str2);
        if (!map.containsKey(strConcat)) {
            return null;
        }
        Object obj = map.get(strConcat);
        if (obj instanceof NativeJavaMethod) {
            return c(((NativeJavaMethod) obj).methods, z);
        }
        return null;
    }

    public static String o(Class cls) {
        if (!cls.isArray()) {
            return cls.getName();
        }
        int i = 0;
        do {
            i++;
            cls = cls.getComponentType();
        } while (cls.isArray());
        String name = cls.getName();
        if (i == 1) {
            return name.concat(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
        }
        StringBuilder sb = new StringBuilder(name.length() + (i * 2));
        sb.append(name);
        while (i != 0) {
            i--;
            sb.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
        }
        return sb.toString();
    }

    public static String p(Class[] clsArr) {
        int length = clsArr.length;
        if (length == 0) {
            return "()";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        for (int i = 0; i != length; i++) {
            if (i != 0) {
                sb.append(',');
            }
            sb.append(o(clsArr[i]));
        }
        sb.append(')');
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static f q(Scriptable scriptable, Class cls, Class cls2, boolean z) {
        ClassCache classCache = ClassCache.get(scriptable);
        Map<Class<?>, f> classCacheMap = classCache.getClassCacheMap();
        Class cls3 = cls;
        while (true) {
            f fVar = (f) classCacheMap.get(cls3);
            if (fVar != null) {
                if (cls3 != cls) {
                    classCacheMap.put(cls, fVar);
                }
                return fVar;
            }
            try {
                f fVar2 = new f(classCache.getAssociatedScope(), cls3, z);
                if (classCache.isCachingEnabled()) {
                    classCacheMap.put(cls3, fVar2);
                    if (cls3 != cls) {
                        classCacheMap.put(cls, fVar2);
                    }
                }
                return fVar2;
            } catch (SecurityException e) {
                if (cls2 == null || !cls2.isInterface()) {
                    Class<?> superclass = cls3.getSuperclass();
                    if (superclass == null) {
                        if (!cls3.isInterface()) {
                            throw e;
                        }
                        superclass = ScriptRuntime.ObjectClass;
                    }
                    cls3 = superclass;
                } else {
                    cls3 = cls2;
                    cls2 = null;
                }
            }
        }
    }

    public final MemberBox f(String str, boolean z) {
        MemberBox[] memberBoxArr;
        int iIndexOf = str.indexOf(40);
        if (iIndexOf < 0) {
            return null;
        }
        Map map = z ? this.d : this.b;
        if (z && iIndexOf == 0) {
            memberBoxArr = this.f.methods;
        } else {
            String strSubstring = str.substring(0, iIndexOf);
            Object obj = map.get(strSubstring);
            if (!z && obj == null) {
                obj = this.d.get(strSubstring);
            }
            memberBoxArr = obj instanceof NativeJavaMethod ? ((NativeJavaMethod) obj).methods : null;
        }
        if (memberBoxArr != null) {
            for (MemberBox memberBox : memberBoxArr) {
                String strP = p(memberBox.argTypes);
                if (strP.length() + iIndexOf == str.length() && str.regionMatches(iIndexOf, strP, 0, strP.length())) {
                    return memberBox;
                }
            }
        }
        return null;
    }

    public Object h(Scriptable scriptable, String str, Object obj, boolean z) {
        Object objInvoke;
        Class<?> type;
        Object objK = (z ? this.d : this.b).get(str);
        if (!z && objK == null) {
            objK = this.d.get(str);
        }
        if (objK == null && (objK = k(scriptable, str, obj, z)) == null) {
            return Scriptable.NOT_FOUND;
        }
        if (objK instanceof Scriptable) {
            return objK;
        }
        Context context = Context.getContext();
        try {
            if (objK instanceof org.mozilla.javascript.a) {
                org.mozilla.javascript.a aVar = (org.mozilla.javascript.a) objK;
                MemberBox memberBox = aVar.a;
                if (memberBox == null) {
                    return Scriptable.NOT_FOUND;
                }
                objInvoke = memberBox.invoke(obj, Context.emptyArgs);
                type = aVar.a.method().getReturnType();
            } else {
                Field field = (Field) objK;
                if (z) {
                    obj = null;
                }
                objInvoke = field.get(obj);
                type = field.getType();
            }
            return context.getWrapFactory().wrap(context, ScriptableObject.getTopLevelScope(scriptable), objInvoke, type);
        } catch (Exception e) {
            throw Context.throwAsScriptRuntimeEx(e);
        }
    }

    public final Constructor[] i(boolean z) {
        Class<?> cls;
        if (z && (cls = this.a) != ScriptRuntime.ClassClass) {
            try {
                Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
                AccessibleObject.setAccessible(declaredConstructors, true);
                return declaredConstructors;
            } catch (SecurityException unused) {
                Context.reportWarning("Could not access constructor  of class " + this.a.getName() + " due to lack of privileges.");
            }
        }
        return this.a.getConstructors();
    }

    public final Field[] j(boolean z, boolean z2) {
        if (z2 || z) {
            try {
                ArrayList arrayList = new ArrayList();
                for (Class superclass = this.a; superclass != null; superclass = superclass.getSuperclass()) {
                    for (Field field : superclass.getDeclaredFields()) {
                        int modifiers = field.getModifiers();
                        if (z2 || Modifier.isPublic(modifiers) || Modifier.isProtected(modifiers)) {
                            if (!field.isAccessible()) {
                                field.setAccessible(true);
                            }
                            arrayList.add(field);
                        }
                    }
                }
                return (Field[]) arrayList.toArray(new Field[arrayList.size()]);
            } catch (SecurityException unused) {
            }
        }
        return this.a.getFields();
    }

    public final Object k(Scriptable scriptable, String str, Object obj, boolean z) {
        Map map = z ? this.d : this.b;
        MemberBox memberBoxF = f(str, z);
        if (memberBoxF == null) {
            return null;
        }
        Scriptable functionPrototype = ScriptableObject.getFunctionPrototype(scriptable);
        if (memberBoxF.isCtor()) {
            NativeJavaConstructor nativeJavaConstructor = new NativeJavaConstructor(memberBoxF);
            nativeJavaConstructor.setPrototype(functionPrototype);
            map.put(str, nativeJavaConstructor);
            return nativeJavaConstructor;
        }
        Object obj2 = map.get(memberBoxF.getName());
        if (!(obj2 instanceof NativeJavaMethod) || ((NativeJavaMethod) obj2).methods.length <= 1) {
            return obj2;
        }
        NativeJavaMethod nativeJavaMethod = new NativeJavaMethod(memberBoxF, str);
        nativeJavaMethod.setPrototype(functionPrototype);
        map.put(str, nativeJavaMethod);
        return nativeJavaMethod;
    }

    public Map l(Scriptable scriptable, Object obj, boolean z) {
        Map map = z ? this.e : this.c;
        if (map == null) {
            return null;
        }
        HashMap map2 = new HashMap(map.size());
        for (FieldAndMethods fieldAndMethods : map.values()) {
            FieldAndMethods fieldAndMethods2 = new FieldAndMethods(scriptable, fieldAndMethods.methods, fieldAndMethods.field);
            fieldAndMethods2.javaObject = obj;
            map2.put(fieldAndMethods.field.getName(), fieldAndMethods2);
        }
        return map2;
    }

    public Object[] m(boolean z) {
        Map map = z ? this.d : this.b;
        return map.keySet().toArray(new Object[map.size()]);
    }

    public boolean n(String str, boolean z) {
        return ((z ? this.d : this.b).get(str) == null && f(str, z) == null) ? false : true;
    }

    public void r(Scriptable scriptable, String str, Object obj, Object obj2, boolean z) {
        Map map = z ? this.d : this.b;
        Object obj3 = map.get(str);
        if (!z && obj3 == null) {
            obj3 = this.d.get(str);
        }
        if (obj3 == null) {
            throw t(str);
        }
        if (obj3 instanceof FieldAndMethods) {
            obj3 = ((FieldAndMethods) map.get(str)).field;
        }
        if (!(obj3 instanceof org.mozilla.javascript.a)) {
            if (!(obj3 instanceof Field)) {
                throw Context.reportRuntimeError1(obj3 == null ? "msg.java.internal.private" : "msg.java.method.assign", str);
            }
            Field field = (Field) obj3;
            try {
                field.set(obj, Context.jsToJava(obj2, field.getType()));
                return;
            } catch (IllegalAccessException e) {
                if ((field.getModifiers() & 16) == 0) {
                    throw Context.throwAsScriptRuntimeEx(e);
                }
                return;
            } catch (IllegalArgumentException unused) {
                throw Context.reportRuntimeError3("msg.java.internal.field.type", obj2.getClass().getName(), field, obj.getClass().getName());
            }
        }
        org.mozilla.javascript.a aVar = (org.mozilla.javascript.a) obj3;
        MemberBox memberBox = aVar.b;
        if (memberBox == null) {
            throw t(str);
        }
        NativeJavaMethod nativeJavaMethod = aVar.c;
        if (nativeJavaMethod != null && obj2 != null) {
            nativeJavaMethod.call(Context.getContext(), ScriptableObject.getTopLevelScope(scriptable), scriptable, new Object[]{obj2});
            return;
        }
        try {
            aVar.b.invoke(obj, new Object[]{Context.jsToJava(obj2, memberBox.argTypes[0])});
        } catch (Exception e2) {
            throw Context.throwAsScriptRuntimeEx(e2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:106:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:133:0x0242  */
    public final void s(Scriptable scriptable, boolean z, boolean z2) {
        String lowerCase;
        Object obj;
        NativeJavaMethod nativeJavaMethod;
        MemberBox[] memberBoxArr;
        ObjArray objArray;
        for (Method method : b(this.a, z, z2)) {
            Map map = Modifier.isStatic(method.getModifiers()) ? this.d : this.b;
            String name = method.getName();
            Object obj2 = map.get(name);
            if (obj2 == null) {
                map.put(name, method);
            } else {
                if (obj2 instanceof ObjArray) {
                    objArray = (ObjArray) obj2;
                } else {
                    if (!(obj2 instanceof Method)) {
                        Kit.codeBug();
                    }
                    ObjArray objArray2 = new ObjArray();
                    objArray2.add(obj2);
                    map.put(name, objArray2);
                    objArray = objArray2;
                }
                objArray.add(method);
            }
        }
        int i = 0;
        while (true) {
            int i2 = 1;
            if (i == 2) {
                break;
            }
            Map map2 = i == 0 ? this.d : this.b;
            for (Map.Entry entry : map2.entrySet()) {
                Object value = entry.getValue();
                if (value instanceof Method) {
                    memberBoxArr = new MemberBox[i2];
                    memberBoxArr[0] = new MemberBox((Method) value);
                } else {
                    ObjArray objArray3 = (ObjArray) value;
                    int size = objArray3.size();
                    if (size < 2) {
                        Kit.codeBug();
                    }
                    MemberBox[] memberBoxArr2 = new MemberBox[size];
                    for (int i3 = 0; i3 != size; i3++) {
                        memberBoxArr2[i3] = new MemberBox((Method) objArray3.get(i3));
                    }
                    memberBoxArr = memberBoxArr2;
                }
                NativeJavaMethod nativeJavaMethod2 = new NativeJavaMethod(memberBoxArr);
                if (scriptable != null) {
                    ScriptRuntime.setFunctionProtoAndParent(nativeJavaMethod2, scriptable);
                }
                map2.put(entry.getKey(), nativeJavaMethod2);
                i2 = 1;
            }
            i++;
        }
        for (Field field : j(z, z2)) {
            String name2 = field.getName();
            try {
                boolean zIsStatic = Modifier.isStatic(field.getModifiers());
                Map map3 = zIsStatic ? this.d : this.b;
                Object obj3 = map3.get(name2);
                if (obj3 == null) {
                    map3.put(name2, field);
                } else if (obj3 instanceof NativeJavaMethod) {
                    FieldAndMethods fieldAndMethods = new FieldAndMethods(scriptable, ((NativeJavaMethod) obj3).methods, field);
                    Map map4 = zIsStatic ? this.e : this.c;
                    if (map4 == null) {
                        map4 = new HashMap();
                        if (zIsStatic) {
                            this.e = map4;
                        } else {
                            this.c = map4;
                        }
                    }
                    map4.put(name2, fieldAndMethods);
                    map3.put(name2, fieldAndMethods);
                } else if (!(obj3 instanceof Field)) {
                    Kit.codeBug();
                } else if (((Field) obj3).getDeclaringClass().isAssignableFrom(field.getDeclaringClass())) {
                    map3.put(name2, field);
                }
            } catch (SecurityException unused) {
                Context.reportWarning("Could not access field " + name2 + " of class " + this.a.getName() + " due to lack of privileges.");
            }
        }
        int i4 = 0;
        while (i4 != 2) {
            boolean z3 = i4 == 0;
            Map map5 = z3 ? this.d : this.b;
            HashMap map6 = new HashMap();
            for (String str : map5.keySet()) {
                boolean zStartsWith = str.startsWith("get");
                boolean zStartsWith2 = str.startsWith("set");
                boolean zStartsWith3 = str.startsWith("is");
                if (zStartsWith || zStartsWith3 || zStartsWith2) {
                    String strSubstring = str.substring(zStartsWith3 ? 2 : 3);
                    if (strSubstring.length() != 0) {
                        char cCharAt = strSubstring.charAt(0);
                        if (!Character.isUpperCase(cCharAt)) {
                            lowerCase = strSubstring;
                        } else if (strSubstring.length() == 1) {
                            lowerCase = strSubstring.toLowerCase();
                        } else if (Character.isUpperCase(strSubstring.charAt(1))) {
                            lowerCase = strSubstring;
                        } else {
                            lowerCase = Character.toLowerCase(cCharAt) + strSubstring.substring(1);
                        }
                        if (!map6.containsKey(lowerCase) && ((obj = map5.get(lowerCase)) == null || (z2 && (obj instanceof Member) && Modifier.isPrivate(((Member) obj).getModifiers())))) {
                            MemberBox memberBoxG = g(z3, map5, "get", strSubstring);
                            if (memberBoxG == null) {
                                memberBoxG = g(z3, map5, "is", strSubstring);
                            }
                            String strConcat = "set".concat(strSubstring);
                            MemberBox memberBox = null;
                            if (map5.containsKey(strConcat)) {
                                Object obj4 = map5.get(strConcat);
                                if (obj4 instanceof NativeJavaMethod) {
                                    nativeJavaMethod = (NativeJavaMethod) obj4;
                                    MemberBox memberBoxD = memberBoxG != null ? d(memberBoxG.method().getReturnType(), nativeJavaMethod.methods, z3) : e(nativeJavaMethod.methods, z3);
                                    if (nativeJavaMethod.methods.length <= 1) {
                                        nativeJavaMethod = null;
                                    }
                                    memberBox = memberBoxD;
                                } else {
                                    nativeJavaMethod = null;
                                }
                            } else {
                                nativeJavaMethod = null;
                            }
                            map6.put(lowerCase, new org.mozilla.javascript.a(memberBoxG, memberBox, nativeJavaMethod));
                        }
                    }
                }
            }
            map5.putAll(map6);
            i4++;
        }
        Constructor[] constructorArrI = i(z2);
        MemberBox[] memberBoxArr3 = new MemberBox[constructorArrI.length];
        for (int i5 = 0; i5 != constructorArrI.length; i5++) {
            memberBoxArr3[i5] = new MemberBox((Constructor<?>) constructorArrI[i5]);
        }
        this.f = new NativeJavaMethod(memberBoxArr3, this.a.getSimpleName());
    }

    public RuntimeException t(String str) {
        return Context.reportRuntimeError2("msg.java.member.not.found", this.a.getName(), str);
    }

    public static final class a {
        public final String a;
        public final Class[] b;

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
