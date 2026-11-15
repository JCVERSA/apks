package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import freemarker.core.e1;
import java.util.HashSet;
import java.util.Set;
import okhttp3.HttpUrl;
import org.slf4j.Marker;

public abstract class hx0 {
    public static Class A;
    public static Class a;
    public static Class b;
    public static Class c;
    public static Class d;
    public static Class e;
    public static Class f;
    public static Class g;
    public static Class h;
    public static Class i;
    public static Class j;
    public static Class k;
    public static Class l;
    public static Class m;
    public static Class n;
    public static Class o;
    public static Class p;
    public static Class q;
    public static Class r;
    public static Class s;
    public static Class t;
    public static Class u;
    public static Class v;
    public static Class w;
    public static Class x;
    public static Class y;
    public static Class z;

    public static void a(StringBuffer stringBuffer, Set set, Class cls) throws Throwable {
        Class clsC = i;
        if (clsC == null) {
            clsC = c("freemarker.template.TemplateNodeModel");
            i = clsC;
        }
        if (clsC.isAssignableFrom(cls)) {
            b(stringBuffer, set, "node");
        }
        Class clsC2 = j;
        if (clsC2 == null) {
            clsC2 = c("freemarker.template.TemplateDirectiveModel");
            j = clsC2;
        }
        if (clsC2.isAssignableFrom(cls)) {
            b(stringBuffer, set, "directive");
        } else {
            Class clsC3 = k;
            if (clsC3 == null) {
                clsC3 = c("freemarker.template.TemplateTransformModel");
                k = clsC3;
            }
            if (clsC3.isAssignableFrom(cls)) {
                b(stringBuffer, set, "transform");
            }
        }
        Class clsC4 = a;
        if (clsC4 == null) {
            clsC4 = c("freemarker.template.TemplateSequenceModel");
            a = clsC4;
        }
        if (clsC4.isAssignableFrom(cls)) {
            b(stringBuffer, set, "sequence");
        } else {
            Class clsC5 = b;
            if (clsC5 == null) {
                clsC5 = c("freemarker.template.TemplateCollectionModel");
                b = clsC5;
            }
            if (clsC5.isAssignableFrom(cls)) {
                Class clsC6 = l;
                if (clsC6 == null) {
                    clsC6 = c("freemarker.template.TemplateCollectionModelEx");
                    l = clsC6;
                }
                b(stringBuffer, set, clsC6.isAssignableFrom(cls) ? "extended_collection" : "collection");
            } else {
                Class clsC7 = m;
                if (clsC7 == null) {
                    clsC7 = c("freemarker.template.TemplateModelIterator");
                    m = clsC7;
                }
                if (clsC7.isAssignableFrom(cls)) {
                    b(stringBuffer, set, "iterator");
                }
            }
        }
        Class clsC8 = n;
        if (clsC8 == null) {
            clsC8 = c("freemarker.template.TemplateMethodModel");
            n = clsC8;
        }
        if (clsC8.isAssignableFrom(cls)) {
            b(stringBuffer, set, "method");
        }
        Class clsC9 = o;
        if (clsC9 == null) {
            clsC9 = c("freemarker.core.Environment$Namespace");
            o = clsC9;
        }
        if (clsC9.isAssignableFrom(cls)) {
            b(stringBuffer, set, "namespace");
        } else {
            Class clsC10 = c;
            if (clsC10 == null) {
                clsC10 = c("freemarker.template.TemplateHashModelEx");
                c = clsC10;
            }
            if (clsC10.isAssignableFrom(cls)) {
                b(stringBuffer, set, "extended_hash");
            } else {
                Class clsC11 = p;
                if (clsC11 == null) {
                    clsC11 = c("freemarker.template.TemplateHashModel");
                    p = clsC11;
                }
                if (clsC11.isAssignableFrom(cls)) {
                    b(stringBuffer, set, "hash");
                }
            }
        }
        Class clsC12 = d;
        if (clsC12 == null) {
            clsC12 = c("freemarker.template.TemplateNumberModel");
            d = clsC12;
        }
        if (clsC12.isAssignableFrom(cls)) {
            b(stringBuffer, set, "number");
        }
        Class clsC13 = f;
        if (clsC13 == null) {
            clsC13 = c("freemarker.template.TemplateDateModel");
            f = clsC13;
        }
        if (clsC13.isAssignableFrom(cls)) {
            b(stringBuffer, set, "date_or_time_or_datetime");
        }
        Class clsC14 = e;
        if (clsC14 == null) {
            clsC14 = c("freemarker.template.TemplateBooleanModel");
            e = clsC14;
        }
        if (clsC14.isAssignableFrom(cls)) {
            b(stringBuffer, set, TypedValues.Custom.S_BOOLEAN);
        }
        Class clsC15 = g;
        if (clsC15 == null) {
            clsC15 = c("freemarker.template.TemplateScalarModel");
            g = clsC15;
        }
        if (clsC15.isAssignableFrom(cls)) {
            b(stringBuffer, set, "string");
        }
    }

    public static void b(StringBuffer stringBuffer, Set set, String str) {
        if (set.contains(str)) {
            return;
        }
        if (stringBuffer.length() != 0) {
            stringBuffer.append(Marker.ANY_NON_NULL_MARKER);
        }
        stringBuffer.append(str);
        set.add(str);
    }

    public static Class c(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static Class d(String str) {
        try {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            if (contextClassLoader != null) {
                return Class.forName(str, true, contextClassLoader);
            }
        } catch (ClassNotFoundException | SecurityException unused) {
        }
        return Class.forName(str);
    }

    public static String e(zfa zfaVar) throws Throwable {
        if (zfaVar == null) {
            return "Null";
        }
        HashSet hashSet = new HashSet();
        StringBuffer stringBuffer = new StringBuffer();
        Class clsF = f(zfaVar);
        if (clsF != null) {
            a(stringBuffer, hashSet, clsF);
        }
        if (zfaVar instanceof e1) {
            b(stringBuffer, hashSet, ((e1) zfaVar).s0() ? "function" : "macro");
        }
        a(stringBuffer, hashSet, zfaVar.getClass());
        Class clsK = k(zfaVar);
        String strH = clsK != null ? h(clsK, true) : null;
        stringBuffer.append(" (");
        String strH2 = h(zfaVar.getClass(), true);
        if (strH == null) {
            stringBuffer.append("wrapper: ");
            stringBuffer.append(strH2);
        } else {
            stringBuffer.append(strH);
            stringBuffer.append(" wrapped into ");
            stringBuffer.append(strH2);
        }
        stringBuffer.append(")");
        return stringBuffer.toString();
    }

    public static Class f(zfa zfaVar) throws Throwable {
        if (!(zfaVar instanceof rd0)) {
            if (!(zfaVar instanceof lm9) && !(zfaVar instanceof gu7)) {
                return null;
            }
            Class cls = h;
            if (cls != null) {
                return cls;
            }
            Class clsC = c("freemarker.template.TemplateMethodModelEx");
            h = clsC;
            return clsC;
        }
        if (zfaVar instanceof p71) {
            Class cls2 = a;
            if (cls2 != null) {
                return cls2;
            }
            Class clsC2 = c("freemarker.template.TemplateSequenceModel");
            a = clsC2;
            return clsC2;
        }
        if ((zfaVar instanceof w55) || (zfaVar instanceof gb3)) {
            Class cls3 = b;
            if (cls3 != null) {
                return cls3;
            }
            Class clsC3 = c("freemarker.template.TemplateCollectionModel");
            b = clsC3;
            return clsC3;
        }
        if (zfaVar instanceof dy5) {
            Class cls4 = c;
            if (cls4 != null) {
                return cls4;
            }
            Class clsC4 = c("freemarker.template.TemplateHashModelEx");
            c = clsC4;
            return clsC4;
        }
        if (zfaVar instanceof w37) {
            Class cls5 = d;
            if (cls5 != null) {
                return cls5;
            }
            Class clsC5 = c("freemarker.template.TemplateNumberModel");
            d = clsC5;
            return clsC5;
        }
        if (zfaVar instanceof ai0) {
            Class cls6 = e;
            if (cls6 != null) {
                return cls6;
            }
            Class clsC6 = c("freemarker.template.TemplateBooleanModel");
            e = clsC6;
            return clsC6;
        }
        if (zfaVar instanceof et1) {
            Class cls7 = f;
            if (cls7 != null) {
                return cls7;
            }
            Class clsC7 = c("freemarker.template.TemplateDateModel");
            f = clsC7;
            return clsC7;
        }
        if (!(zfaVar instanceof yz9)) {
            return null;
        }
        if (((rd0) zfaVar).getWrappedObject() instanceof String) {
            Class cls8 = g;
            if (cls8 != null) {
                return cls8;
            }
            Class clsC8 = c("freemarker.template.TemplateScalarModel");
            g = clsC8;
            return clsC8;
        }
        if (!(zfaVar instanceof pfa)) {
            return null;
        }
        Class cls9 = c;
        if (cls9 != null) {
            return cls9;
        }
        Class clsC9 = c("freemarker.template.TemplateHashModelEx");
        c = clsC9;
        return clsC9;
    }

    public static String g(Class cls) {
        return h(cls, false);
    }

    public static String h(Class cls, boolean z2) {
        if (cls == null) {
            return null;
        }
        if (cls.isArray()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(g(cls.getComponentType()));
            stringBuffer.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
            return stringBuffer.toString();
        }
        String name = cls.getName();
        if (name.startsWith("java.lang.") || name.startsWith("java.util.")) {
            return name.substring(10);
        }
        if (!z2) {
            return name;
        }
        if (name.startsWith("freemarker.template.")) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("f.t");
            stringBuffer2.append(name.substring(19));
            return stringBuffer2.toString();
        }
        if (name.startsWith("freemarker.ext.beans.")) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("f.e.b");
            stringBuffer3.append(name.substring(20));
            return stringBuffer3.toString();
        }
        if (name.startsWith("freemarker.core.")) {
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("f.c");
            stringBuffer4.append(name.substring(15));
            return stringBuffer4.toString();
        }
        if (name.startsWith("freemarker.ext.")) {
            StringBuffer stringBuffer5 = new StringBuffer();
            stringBuffer5.append("f.e");
            stringBuffer5.append(name.substring(14));
            return stringBuffer5.toString();
        }
        if (!name.startsWith("freemarker.")) {
            return name;
        }
        StringBuffer stringBuffer6 = new StringBuffer();
        stringBuffer6.append("f");
        stringBuffer6.append(name.substring(10));
        return stringBuffer6.toString();
    }

    public static String i(Object obj) {
        return j(obj, false);
    }

    public static String j(Object obj, boolean z2) {
        return obj == null ? "Null" : h(obj.getClass(), z2);
    }

    public static Class k(zfa zfaVar) {
        Object adaptedObject;
        try {
            if (zfaVar instanceof lpc) {
                adaptedObject = ((lpc) zfaVar).getWrappedObject();
            } else if (zfaVar instanceof c8) {
                c8 c8Var = (c8) zfaVar;
                Class clsC = q;
                if (clsC == null) {
                    clsC = c("java.lang.Object");
                    q = clsC;
                }
                adaptedObject = c8Var.getAdaptedObject(clsC);
            } else {
                adaptedObject = null;
            }
        } catch (Throwable unused) {
        }
        if (adaptedObject != null) {
            return adaptedObject.getClass();
        }
        return null;
    }

    public static boolean l(Class cls) throws Throwable {
        Class clsC = A;
        if (clsC == null) {
            clsC = c("java.lang.Number");
            A = clsC;
        }
        return clsC.isAssignableFrom(cls) || !(!cls.isPrimitive() || cls == Boolean.TYPE || cls == Character.TYPE || cls == Void.TYPE);
    }

    public static Class m(Class cls) {
        if (cls == Integer.TYPE) {
            Class cls2 = r;
            if (cls2 != null) {
                return cls2;
            }
            Class clsC = c("java.lang.Integer");
            r = clsC;
            return clsC;
        }
        if (cls == Boolean.TYPE) {
            Class cls3 = s;
            if (cls3 != null) {
                return cls3;
            }
            Class clsC2 = c("java.lang.Boolean");
            s = clsC2;
            return clsC2;
        }
        if (cls == Long.TYPE) {
            Class cls4 = t;
            if (cls4 != null) {
                return cls4;
            }
            Class clsC3 = c("java.lang.Long");
            t = clsC3;
            return clsC3;
        }
        if (cls == Double.TYPE) {
            Class cls5 = u;
            if (cls5 != null) {
                return cls5;
            }
            Class clsC4 = c("java.lang.Double");
            u = clsC4;
            return clsC4;
        }
        if (cls == Character.TYPE) {
            Class cls6 = v;
            if (cls6 != null) {
                return cls6;
            }
            Class clsC5 = c("java.lang.Character");
            v = clsC5;
            return clsC5;
        }
        if (cls == Float.TYPE) {
            Class cls7 = w;
            if (cls7 != null) {
                return cls7;
            }
            Class clsC6 = c("java.lang.Float");
            w = clsC6;
            return clsC6;
        }
        if (cls == Byte.TYPE) {
            Class cls8 = x;
            if (cls8 != null) {
                return cls8;
            }
            Class clsC7 = c("java.lang.Byte");
            x = clsC7;
            return clsC7;
        }
        if (cls == Short.TYPE) {
            Class cls9 = y;
            if (cls9 != null) {
                return cls9;
            }
            Class clsC8 = c("java.lang.Short");
            y = clsC8;
            return clsC8;
        }
        if (cls != Void.TYPE) {
            return cls;
        }
        Class cls10 = z;
        if (cls10 != null) {
            return cls10;
        }
        Class clsC9 = c("java.lang.Void");
        z = clsC9;
        return clsC9;
    }
}
