package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import freemarker.core.ParseException;
import freemarker.core._ObjectBuilderSettingEvaluationException;
import freemarker.template.TemplateModelException;
import freemarker.template.Version;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.BooleanUtils;

public class z0d {
    public static Map f;
    public static Class g;
    public static Class h;
    public static Class i;
    public final String a;
    public final Class b;
    public final b1d c;
    public int d;
    public boolean e = false;

    public class a extends b {
        public String e;

        public a() {
            super();
        }

        @Override
        public Object a() throws _ObjectBuilderSettingEvaluationException {
            boolean z;
            try {
                Class clsD = hx0.d(this.e);
                try {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(clsD.getName());
                    stringBuffer.append("Builder");
                    clsD = hx0.d(stringBuffer.toString());
                    z = true;
                } catch (ClassNotFoundException unused) {
                    z = false;
                }
                if (!z && g()) {
                    try {
                        Field field = clsD.getField("INSTANCE");
                        if ((field.getModifiers() & 9) == 9) {
                            return field.get(null);
                        }
                    } catch (NoSuchFieldException unused2) {
                    } catch (Exception e) {
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append("Error when trying to access ");
                        stringBuffer2.append(n0a.D(this.e));
                        stringBuffer2.append(Consts.DOT);
                        stringBuffer2.append("INSTANCE");
                        throw new _ObjectBuilderSettingEvaluationException(stringBuffer2.toString(), e);
                    }
                }
                Object objF = f(clsD);
                z0d.this.w(objF, this.b, this.c);
                if (z) {
                    objF = e(objF);
                } else if (objF instanceof qpc) {
                    ((qpc) objF).d();
                }
                if (z0d.this.b.isInstance(objF)) {
                    return objF;
                }
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("The resulting object (of class ");
                stringBuffer3.append(objF.getClass());
                stringBuffer3.append(") is not a(n) ");
                stringBuffer3.append(z0d.this.b.getName());
                stringBuffer3.append(Consts.DOT);
                throw new _ObjectBuilderSettingEvaluationException(stringBuffer3.toString());
            } catch (Exception e2) {
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append("Failed to get class ");
                stringBuffer4.append(n0a.D(this.e));
                stringBuffer4.append(Consts.DOT);
                throw new _ObjectBuilderSettingEvaluationException(stringBuffer4.toString(), e2);
            }
        }

        @Override
        public boolean b() {
            return true;
        }

        public final Object e(Object obj) throws _ObjectBuilderSettingEvaluationException {
            Class<?> cls = obj.getClass();
            try {
                try {
                    return obj.getClass().getMethod("build", null).invoke(obj, null);
                } catch (Exception e) {
                    e = e;
                    if (e instanceof InvocationTargetException) {
                        e = ((InvocationTargetException) e).getTargetException();
                    }
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Failed to call build() method on ");
                    stringBuffer.append(cls.getName());
                    stringBuffer.append(" instance");
                    throw new _ObjectBuilderSettingEvaluationException(stringBuffer.toString(), e);
                }
            } catch (NoSuchMethodException e2) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("The ");
                stringBuffer2.append(cls.getName());
                stringBuffer2.append(" builder class must have a public ");
                stringBuffer2.append("build");
                stringBuffer2.append("() method");
                throw new _ObjectBuilderSettingEvaluationException(stringBuffer2.toString(), e2);
            } catch (Exception e3) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("Failed to get the build() method of the ");
                stringBuffer3.append(cls.getName());
                stringBuffer3.append(" builder class");
                throw new _ObjectBuilderSettingEvaluationException(stringBuffer3.toString(), e3);
            }
        }

        public final Object f(Class cls) throws _ObjectBuilderSettingEvaluationException {
            if (g()) {
                try {
                    return cls.newInstance();
                } catch (Exception e) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Failed to call ");
                    stringBuffer.append(cls.getName());
                    stringBuffer.append(" 0-argument constructor");
                    throw new _ObjectBuilderSettingEvaluationException(stringBuffer.toString(), e);
                }
            }
            freemarker.ext.beans.b bVarB = z0d.this.c.b();
            ArrayList arrayList = new ArrayList(this.a.size());
            for (int i = 0; i < this.a.size(); i++) {
                try {
                    arrayList.add(bVarB.c(this.a.get(i)));
                } catch (TemplateModelException e2) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Failed to wrap arg #");
                    stringBuffer2.append(i + 1);
                    throw new _ObjectBuilderSettingEvaluationException(stringBuffer2.toString(), e2);
                }
            }
            try {
                return bVarB.F(cls, arrayList);
            } catch (Exception e3) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("Failed to call ");
                stringBuffer3.append(cls.getName());
                stringBuffer3.append(" constructor");
                throw new _ObjectBuilderSettingEvaluationException(stringBuffer3.toString(), e3);
            }
        }

        public final boolean g() {
            return this.a.isEmpty() && this.c.isEmpty();
        }
    }

    public abstract class b extends e {
        public List a;
        public List b;
        public List c;

        public b() {
            super();
            this.a = new ArrayList();
            this.b = new ArrayList();
            this.c = new ArrayList();
        }

        public abstract boolean b();
    }

    public static class c extends e {
        public static final c a = new c();

        public c() {
            super();
        }

        @Override
        public Object a() {
            return null;
        }
    }

    public static class d {
        public final String a;

        public d(String str) {
            this.a = str;
        }
    }

    public static abstract class e {
        public e() {
        }

        public abstract Object a();
    }

    public z0d(String str, int i2, Class cls, b1d b1dVar) {
        this.a = str;
        this.d = i2;
        this.b = cls;
        this.c = b1dVar;
    }

    public static Class d(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static Object g(String str, Class cls, b1d b1dVar) {
        return new z0d(str, 0, cls, b1dVar).e();
    }

    public static synchronized String x(String str) {
        try {
            if (f == null) {
                HashMap map = new HashMap();
                f = map;
                Class clsD = g;
                if (clsD == null) {
                    clsD = d("freemarker.template.DefaultObjectWrapper");
                    g = clsD;
                }
                map.put("DefaultObjectWrapper", clsD.getName());
                Map map2 = f;
                Class clsD2 = h;
                if (clsD2 == null) {
                    clsD2 = d("freemarker.ext.beans.BeansWrapper");
                    h = clsD2;
                }
                map2.put("BeansWrapper", clsD2.getName());
                Map map3 = f;
                Class clsD3 = i;
                if (clsD3 == null) {
                    clsD3 = d("freemarker.template.SimpleObjectWrapper");
                    i = clsD3;
                }
                map3.put("SimpleObjectWrapper", clsD3.getName());
            }
            String str2 = (String) f.get(str);
            if (str2 != null) {
                str = str2;
            }
        } catch (Throwable th) {
            throw th;
        }
        return str;
    }

    public final Object e() {
        return h(v());
    }

    public final Object f(Object obj) {
        return obj instanceof e ? ((e) obj).a() : obj;
    }

    public final Object h(a aVar) {
        return !this.e ? hx0.d(aVar.e).newInstance() : aVar.a();
    }

    public final a i(boolean z, boolean z2) throws _ObjectBuilderSettingEvaluationException {
        int i2 = this.d;
        a aVar = new a();
        String strK = k(z2);
        if (strK == null) {
            return null;
        }
        aVar.e = x(strK);
        if (!strK.equals(aVar.e)) {
            this.e = true;
        }
        y();
        char cM = m("(");
        if (cM != 0 || z) {
            if (cM != 0) {
                n(aVar);
            }
            return aVar;
        }
        if (!z2) {
            throw new _ObjectBuilderSettingEvaluationException("(", this.a, this.d);
        }
        this.d = i2;
        return null;
    }

    public final char j(String str, boolean z) throws _ObjectBuilderSettingEvaluationException {
        int i2 = 0;
        char cCharAt = this.d < this.a.length() ? this.a.charAt(this.d) : (char) 0;
        if (str.indexOf(cCharAt) != -1) {
            this.d++;
            return cCharAt;
        }
        if (z) {
            return (char) 0;
        }
        StringBuffer stringBuffer = new StringBuffer();
        while (i2 < str.length()) {
            if (i2 != 0) {
                stringBuffer.append(" or ");
            }
            int i3 = i2 + 1;
            stringBuffer.append(n0a.D(str.substring(i2, i3)));
            i2 = i3;
        }
        if (z) {
            stringBuffer.append(" or end-of-string");
        }
        throw new _ObjectBuilderSettingEvaluationException(stringBuffer.toString(), this.a, this.d);
    }

    public final String k(boolean z) throws _ObjectBuilderSettingEvaluationException {
        int i2 = this.d;
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            String strP = p(true);
            if (strP == null) {
                if (!z) {
                    throw new _ObjectBuilderSettingEvaluationException("name", this.a, this.d);
                }
                this.d = i2;
                return null;
            }
            stringBuffer.append(strP);
            y();
            if (this.d >= this.a.length() || this.a.charAt(this.d) != '.') {
                return stringBuffer.toString();
            }
            stringBuffer.append('.');
            this.d++;
            y();
        }
    }

    public final Object l(boolean z) throws _ObjectBuilderSettingEvaluationException {
        int i2 = this.d;
        boolean z2 = false;
        boolean z3 = false;
        while (this.d != this.a.length()) {
            char cCharAt = this.a.charAt(this.d);
            if (cCharAt != '.') {
                if (!s(cCharAt) && cCharAt != '-') {
                    break;
                }
            } else if (z2) {
                z3 = true;
            } else {
                z2 = true;
            }
            this.d++;
        }
        int i3 = this.d;
        if (i2 == i3) {
            if (z) {
                return null;
            }
            throw new _ObjectBuilderSettingEvaluationException("number-like", this.a, this.d);
        }
        String strSubstring = this.a.substring(i2, i3);
        if (z3) {
            try {
                return new Version(strSubstring);
            } catch (IllegalArgumentException e2) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Malformed version number: ");
                stringBuffer.append(strSubstring);
                throw new _ObjectBuilderSettingEvaluationException(stringBuffer.toString(), e2);
            }
        }
        try {
            if (strSubstring.endsWith(Consts.DOT)) {
                throw new NumberFormatException("A number can't end with a dot");
            }
            if (strSubstring.startsWith(Consts.DOT) || strSubstring.startsWith("-.") || strSubstring.startsWith("+.")) {
                throw new NumberFormatException("A number can't start with a dot");
            }
            return new BigDecimal(strSubstring);
        } catch (NumberFormatException e3) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Malformed number: ");
            stringBuffer2.append(strSubstring);
            throw new _ObjectBuilderSettingEvaluationException(stringBuffer2.toString(), e3);
        }
    }

    public final char m(String str) {
        return j(str, true);
    }

    public final void n(b bVar) throws _ObjectBuilderSettingEvaluationException {
        this.e = true;
        y();
        if (m(")") != ')') {
            do {
                y();
                Object objR = r(false);
                if (objR != null) {
                    y();
                    if (objR instanceof d) {
                        bVar.b.add(((d) objR).a);
                        y();
                        o("=");
                        y();
                        int i2 = this.d;
                        Object objR2 = r(false);
                        if (objR2 instanceof d) {
                            throw new _ObjectBuilderSettingEvaluationException("concrete value", this.a, i2);
                        }
                        bVar.c.add(f(objR2));
                    } else {
                        if (!bVar.b.isEmpty()) {
                            throw new _ObjectBuilderSettingEvaluationException("Positional parameters must precede named parameters");
                        }
                        if (!bVar.b()) {
                            throw new _ObjectBuilderSettingEvaluationException("Positional parameters not supported here");
                        }
                        bVar.a.add(f(objR));
                    }
                    y();
                }
            } while (o(",)") == ',');
        }
    }

    public final char o(String str) {
        return j(str, false);
    }

    public final String p(boolean z) throws _ObjectBuilderSettingEvaluationException {
        if (!u(this.d < this.a.length() ? this.a.charAt(this.d) : (char) 0)) {
            if (z) {
                return null;
            }
            throw new _ObjectBuilderSettingEvaluationException("class name", this.a, this.d);
        }
        int i2 = this.d;
        this.d = i2 + 1;
        while (this.d != this.a.length() && t(this.a.charAt(this.d))) {
            this.d++;
        }
        return this.a.substring(i2, this.d);
    }

    public final Object q(boolean z) throws _ObjectBuilderSettingEvaluationException {
        char cCharAt;
        int i2 = this.d;
        char c2 = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            if (this.d == this.a.length()) {
                if (c2 == 0) {
                    break;
                }
                throw new _ObjectBuilderSettingEvaluationException(String.valueOf(c2), this.a, this.d);
            }
            char cCharAt2 = this.a.charAt(this.d);
            if (c2 == 0) {
                if (cCharAt2 == 'r' && this.d + 1 < this.a.length()) {
                    cCharAt2 = this.a.charAt(this.d + 1);
                    z3 = true;
                }
                c2 = '\'';
                if (cCharAt2 != '\'') {
                    c2 = '\"';
                    if (cCharAt2 != '\"') {
                        break;
                    }
                }
                if (z3) {
                    this.d++;
                }
                this.d++;
            } else {
                if (z2) {
                    z2 = false;
                } else if (cCharAt2 == '\\' && !z3) {
                    z2 = true;
                } else {
                    if (cCharAt2 == c2) {
                        break;
                    }
                    if (cCharAt2 == '{' && ((cCharAt = this.a.charAt(this.d - 1)) == '$' || cCharAt == '#')) {
                        throw new _ObjectBuilderSettingEvaluationException("${...} and #{...} aren't allowed here.");
                    }
                }
                this.d++;
            }
        }
        int i3 = this.d;
        if (i2 == i3) {
            if (z) {
                return null;
            }
            throw new _ObjectBuilderSettingEvaluationException("string literal", this.a, this.d);
        }
        String strSubstring = this.a.substring(i2 + (z3 ? 2 : 1), i3);
        try {
            this.d++;
            return z3 ? strSubstring : n0a.a(strSubstring);
        } catch (ParseException e2) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Malformed string literal: ");
            stringBuffer.append(strSubstring);
            throw new _ObjectBuilderSettingEvaluationException(stringBuffer.toString(), e2);
        }
    }

    public final Object r(boolean z) throws _ObjectBuilderSettingEvaluationException {
        if (this.d < this.a.length()) {
            Object objL = l(true);
            if (objL != null) {
                return objL;
            }
            Object objQ = q(true);
            if (objQ != null) {
                return objQ;
            }
            a aVarI = i(false, true);
            if (aVarI != null) {
                return aVarI;
            }
            String strP = p(true);
            if (strP != null) {
                if (strP.equals(BooleanUtils.TRUE)) {
                    return Boolean.TRUE;
                }
                if (strP.equals(BooleanUtils.FALSE)) {
                    return Boolean.FALSE;
                }
                return strP.equals("null") ? c.a : new d(strP);
            }
        }
        if (z) {
            return null;
        }
        throw new _ObjectBuilderSettingEvaluationException("value or name", this.a, this.d);
    }

    public final boolean s(char c2) {
        return c2 >= '0' && c2 <= '9';
    }

    public final boolean t(char c2) {
        return u(c2) || s(c2);
    }

    public final boolean u(char c2) {
        return Character.isLetter(c2) || c2 == '_' || c2 == '$';
    }

    public final a v() throws _ObjectBuilderSettingEvaluationException {
        y();
        a aVarI = i(true, false);
        y();
        if (this.d == this.a.length()) {
            return aVarI;
        }
        throw new _ObjectBuilderSettingEvaluationException("end-of-expression", this.a, this.d);
    }

    public final void w(Object obj, List list, List list2) throws _ObjectBuilderSettingEvaluationException {
        if (list.isEmpty()) {
            return;
        }
        Class<?> cls = obj.getClass();
        try {
            PropertyDescriptor[] propertyDescriptors = Introspector.getBeanInfo(cls).getPropertyDescriptors();
            HashMap map = new HashMap((propertyDescriptors.length * 4) / 3, 1.0f);
            for (PropertyDescriptor propertyDescriptor : propertyDescriptors) {
                Method writeMethod = propertyDescriptor.getWriteMethod();
                if (writeMethod != null) {
                    map.put(propertyDescriptor.getName(), writeMethod);
                }
            }
            ofa ofaVar = null;
            for (int i2 = 0; i2 < list.size(); i2++) {
                String str = (String) list.get(i2);
                if (!map.containsKey(str)) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("The ");
                    stringBuffer.append(cls.getName());
                    stringBuffer.append(" class has no writeable JavaBeans property called ");
                    stringBuffer.append(n0a.D(str));
                    stringBuffer.append(Consts.DOT);
                    throw new _ObjectBuilderSettingEvaluationException(stringBuffer.toString());
                }
                Method method = (Method) map.put(str, null);
                if (method == null) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("JavaBeans property ");
                    stringBuffer2.append(n0a.D(str));
                    stringBuffer2.append(" is set twice.");
                    throw new _ObjectBuilderSettingEvaluationException(stringBuffer2.toString());
                }
                if (ofaVar == null) {
                    try {
                        zfa zfaVarC = this.c.b().c(obj);
                        if (!(zfaVarC instanceof ofa)) {
                            StringBuffer stringBuffer3 = new StringBuffer();
                            stringBuffer3.append("The ");
                            stringBuffer3.append(cls.getName());
                            stringBuffer3.append(" class is not a wrapped as TemplateHashModel.");
                            throw new _ObjectBuilderSettingEvaluationException(stringBuffer3.toString());
                        }
                        ofaVar = (ofa) zfaVarC;
                    } catch (Exception e2) {
                        StringBuffer stringBuffer4 = new StringBuffer();
                        stringBuffer4.append("Failed to set ");
                        stringBuffer4.append(n0a.D(str));
                        throw new _ObjectBuilderSettingEvaluationException(stringBuffer4.toString(), e2);
                    }
                }
                zfa zfaVar = ofaVar.get(method.getName());
                if (zfaVar == null) {
                    StringBuffer stringBuffer5 = new StringBuffer();
                    stringBuffer5.append("Can't find ");
                    stringBuffer5.append(method);
                    stringBuffer5.append(" as FreeMarker method.");
                    throw new _ObjectBuilderSettingEvaluationException(stringBuffer5.toString());
                }
                if (!(zfaVar instanceof yfa)) {
                    StringBuffer stringBuffer6 = new StringBuffer();
                    stringBuffer6.append(n0a.D(method.getName()));
                    stringBuffer6.append(" wasn't a TemplateMethodModelEx.");
                    throw new _ObjectBuilderSettingEvaluationException(stringBuffer6.toString());
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.c.b().c(list2.get(i2)));
                ((yfa) zfaVar).exec(arrayList);
            }
        } catch (Exception e3) {
            StringBuffer stringBuffer7 = new StringBuffer();
            stringBuffer7.append("Failed to inspect ");
            stringBuffer7.append(cls.getName());
            stringBuffer7.append(" class");
            throw new _ObjectBuilderSettingEvaluationException(stringBuffer7.toString(), e3);
        }
    }

    public final void y() {
        while (this.d != this.a.length() && Character.isWhitespace(this.a.charAt(this.d))) {
            this.d++;
        }
    }
}
