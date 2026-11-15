package defpackage;

import freemarker.template.utility.NullArgumentException;
import java.net.URL;

public class ex0 extends zeb {
    public final Class b;
    public final ClassLoader c;
    public final String d;

    public ex0(Class cls, String str) {
        this(cls, false, null, str);
    }

    public static boolean h(String str) {
        int length = str.length();
        for (int i = (length <= 0 || str.charAt(0) != '/') ? 0 : 1; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '/') {
                return true;
            }
            if (cCharAt == ':') {
                return false;
            }
        }
        return true;
    }

    @Override
    public URL f(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.d);
        stringBuffer.append(str);
        String string = stringBuffer.toString();
        if (this.d.equals("/") && !h(string)) {
            return null;
        }
        Class cls = this.b;
        return cls != null ? cls.getResource(string) : this.c.getResource(string);
    }

    public String toString() {
        String string;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(rfa.b(this));
        stringBuffer.append("(");
        if (this.b != null) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("resourceLoaderClass=");
            stringBuffer2.append(this.b.getName());
            string = stringBuffer2.toString();
        } else {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("classLoader=");
            stringBuffer3.append(n0a.C(this.c));
            string = stringBuffer3.toString();
        }
        stringBuffer.append(string);
        stringBuffer.append(", basePackagePath");
        stringBuffer.append("=");
        stringBuffer.append(n0a.D(this.d));
        String str = "";
        if (this.b != null && !this.d.startsWith("/")) {
            str = " /* relatively to resourceLoaderClass pkg */";
        }
        stringBuffer.append(str);
        stringBuffer.append(")");
        return stringBuffer.toString();
    }

    public ex0(Class cls, boolean z, ClassLoader classLoader, String str) {
        if (!z) {
            NullArgumentException.check("resourceLoaderClass", cls);
        }
        NullArgumentException.check("basePackagePath", str);
        if (classLoader != null) {
            cls = null;
        } else if (cls == null) {
            cls = getClass();
        }
        this.b = cls;
        if (cls == null && classLoader == null) {
            throw new NullArgumentException("classLoader");
        }
        this.c = classLoader;
        String strE = zeb.e(str);
        if (classLoader != null && strE.startsWith("/")) {
            strE = strE.substring(1);
        }
        this.d = strE;
    }
}
