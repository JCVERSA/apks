package defpackage;

import freemarker.core.r1;
import freemarker.core.t0;
import freemarker.core.t1;
import freemarker.template.Template;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;

public class q0d {
    public static final pq5 h = pq5.k("freemarker.runtime");
    public final String a;
    public final Object[] b;
    public t0 c;
    public boolean d;
    public Object e;
    public Object[] f;
    public Template g;

    public static class a {
        public t1 a;
        public jw7 b;

        public a() {
        }
    }

    public q0d(String str) {
        this.a = str;
        this.b = null;
    }

    public static String l(Object obj) {
        return m(obj, false);
    }

    public static String m(Object obj, boolean z) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Class) {
            return hx0.g((Class) obj);
        }
        if ((obj instanceof Method) || (obj instanceof Constructor)) {
            return u0d.p((Member) obj);
        }
        return z ? n0a.a0(obj) : obj.toString();
    }

    public static String n(Object obj) {
        return m(obj, true);
    }

    public final void a(StringBuffer stringBuffer, Object[] objArr) {
        Template templateY = this.g;
        if (templateY == null) {
            t0 t0Var = this.c;
            templateY = t0Var != null ? t0Var.y() : null;
        }
        for (Object obj : objArr) {
            if (obj instanceof Object[]) {
                a(stringBuffer, (Object[]) obj);
            } else {
                String strN = n(obj);
                if (strN == null) {
                    strN = "null";
                }
                if (templateY == null) {
                    stringBuffer.append(strN);
                } else if (strN.length() <= 4 || strN.charAt(0) != '<' || ((strN.charAt(1) != '#' && strN.charAt(1) != '@' && (strN.charAt(1) != '/' || (strN.charAt(2) != '#' && strN.charAt(2) != '@'))) || strN.charAt(strN.length() - 1) != '>')) {
                    stringBuffer.append(strN);
                } else if (templateY.s0() == 2) {
                    stringBuffer.append('[');
                    stringBuffer.append(strN.substring(1, strN.length() - 1));
                    stringBuffer.append(']');
                } else {
                    stringBuffer.append(strN);
                }
            }
        }
    }

    public q0d b(t0 t0Var) {
        this.c = t0Var;
        return this;
    }

    public final boolean c(t0 t0Var, int i) {
        if (t0Var == null || i > 20) {
            return false;
        }
        if ((t0Var instanceof r1) && ((r1) t0Var).X()) {
            return true;
        }
        int iS = t0Var.s();
        for (int i2 = 0; i2 < iS; i2++) {
            Object objU = t0Var.u(i2);
            if ((objU instanceof t0) && c((t0) objU, i + 1)) {
                return true;
            }
        }
        return false;
    }

    public final a d(t1 t1Var, t0 t0Var, int i) {
        a aVarD;
        if (i > 50) {
            return null;
        }
        int iS = t1Var.s();
        for (int i2 = 0; i2 < iS; i2++) {
            Object objU = t1Var.u(i2);
            if (objU == t0Var) {
                a aVar = new a();
                aVar.a = t1Var;
                aVar.b = t1Var.t(i2);
                return aVar;
            }
            if ((objU instanceof t1) && (aVarD = d((t1) objU, t0Var, i + 1)) != null) {
                return aVarD;
            }
        }
        return null;
    }

    public q0d e(boolean z) {
        this.d = z;
        return this;
    }

    public final String[] f(String str) {
        return n0a.U(n0a.O(n0a.O(str, IOUtils.LINE_SEPARATOR_WINDOWS, "\n"), StringUtils.CR, "\n"), '\n');
    }

    public final q0d g(Object obj) {
        if (this.e == null) {
            this.e = obj;
        } else {
            Object[] objArr = this.f;
            if (objArr == null) {
                this.f = new Object[]{obj};
            } else {
                int length = objArr.length;
                Object[] objArr2 = new Object[length + 1];
                for (int i = 0; i < length; i++) {
                    objArr2[i] = this.f[i];
                }
                objArr2[length] = obj;
                this.f = objArr2;
            }
        }
        return this;
    }

    public q0d h(String str) {
        g(str);
        return this;
    }

    public q0d i(Object[] objArr) {
        g(objArr);
        return this;
    }

    public q0d j(Object[] objArr) {
        Object[] objArr2 = this.f;
        if (objArr2 == null) {
            this.f = objArr;
        } else {
            int length = objArr2.length;
            int length2 = objArr.length;
            Object[] objArr3 = new Object[length + length2];
            for (int i = 0; i < length; i++) {
                objArr3[i] = this.f[i];
            }
            for (int i2 = 0; i2 < length2; i2++) {
                objArr3[length + i2] = objArr[i2];
            }
            this.f = objArr3;
        }
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00eb  */
    public String k(ifa ifaVar, boolean z) {
        String str;
        t0 t0Var;
        if (this.c == null && this.f == null && this.e == null && this.b == null) {
            return this.a;
        }
        StringBuffer stringBuffer = new StringBuffer(200);
        if (ifaVar != null && (t0Var = this.c) != null && this.d) {
            try {
                a aVarD = d(ifaVar, t0Var, 0);
                if (aVarD != null) {
                    stringBuffer.append("For ");
                    String strR = aVarD.a.r();
                    char c = '\"';
                    if (strR.indexOf(34) != -1) {
                        c = '`';
                    }
                    stringBuffer.append(c);
                    stringBuffer.append(strR);
                    stringBuffer.append(c);
                    stringBuffer.append(" ");
                    stringBuffer.append(aVarD.b);
                    stringBuffer.append(": ");
                }
            } catch (Throwable th) {
                h.h("Error when searching blamer for better error message.", th);
            }
        }
        String str2 = this.a;
        if (str2 != null) {
            stringBuffer.append(str2);
        } else {
            a(stringBuffer, this.b);
        }
        int i = 1;
        if (this.c != null) {
            for (int length = stringBuffer.length() - 1; length >= 0 && Character.isWhitespace(stringBuffer.charAt(length)); length--) {
                stringBuffer.deleteCharAt(length);
            }
            char cCharAt = stringBuffer.length() > 0 ? stringBuffer.charAt(stringBuffer.length() - 1) : (char) 0;
            if (cCharAt != 0) {
                stringBuffer.append('\n');
            }
            if (cCharAt != ':') {
                stringBuffer.append("The blamed expression:\n");
            }
            String[] strArrF = f(this.c.toString());
            int i2 = 0;
            while (i2 < strArrF.length) {
                stringBuffer.append(i2 == 0 ? "==> " : "\n    ");
                stringBuffer.append(strArrF[i2]);
                i2++;
            }
            stringBuffer.append("  [");
            stringBuffer.append(this.c.w());
            stringBuffer.append(']');
            if (c(this.c, 0)) {
                str = "It has been noticed that you are using ${...} as the sole content of a quoted string. That does nothing but forcably converts the value inside ${...} to string (as it inserts it into the enclosing string). If that's not what you meant, just remove the quotation marks, ${ and }; you don't need them. If you indeed wanted to convert to string, use myExpression?string instead.";
            } else {
                str = null;
            }
        } else {
            str = null;
        }
        if (z) {
            Object[] objArr = this.f;
            int length2 = objArr != null ? objArr.length : 0;
            Object obj = this.e;
            int i3 = length2 + (obj != null ? 1 : 0) + (str != null ? 1 : 0);
            if (objArr == null || i3 != objArr.length) {
                Object[] objArr2 = new Object[i3];
                if (obj != null) {
                    objArr2[0] = obj;
                } else {
                    i = 0;
                }
                if (objArr != null) {
                    int i4 = 0;
                    while (true) {
                        Object[] objArr3 = this.f;
                        if (i4 >= objArr3.length) {
                            break;
                        }
                        objArr2[i] = objArr3[i4];
                        i4++;
                        i++;
                    }
                }
                if (str != null) {
                    objArr2[i] = str;
                }
                objArr = objArr2;
            }
            if (objArr != null && objArr.length > 0) {
                stringBuffer.append("\n\n");
                for (int i5 = 0; i5 < objArr.length; i5++) {
                    if (i5 != 0) {
                        stringBuffer.append('\n');
                    }
                    stringBuffer.append("----");
                    stringBuffer.append('\n');
                    stringBuffer.append("Tip: ");
                    Object obj2 = objArr[i5];
                    if (obj2 instanceof Object[]) {
                        a(stringBuffer, (Object[]) obj2);
                    } else {
                        stringBuffer.append(obj2);
                    }
                }
                stringBuffer.append('\n');
                stringBuffer.append("----");
            }
        }
        return stringBuffer.toString();
    }

    public String toString() {
        return k(null, true);
    }

    public q0d(Object[] objArr) {
        this.b = objArr;
        this.a = null;
    }
}
