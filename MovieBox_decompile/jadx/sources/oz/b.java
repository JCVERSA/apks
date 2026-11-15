package oz;

import android.support.v4.media.session.c;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.util.f;

public class b {

    static Class f68942a;

    static Class f68943b;

    static Class a(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    static Throwable e(Throwable th2, BuildException buildException, boolean z10) {
        if (th2 != null) {
            return th2;
        }
        Throwable exception = buildException.getException();
        if (z10 && (exception instanceof ClassNotFoundException)) {
            return null;
        }
        return exception;
    }

    protected a b(String str) {
        Class clsA = f68942a;
        if (clsA == null) {
            clsA = a("org.apache.tools.ant.util.regexp.RegexpMatcherFactory");
            f68942a = clsA;
        }
        ClassLoader classLoader = clsA.getClassLoader();
        Class clsA2 = f68943b;
        if (clsA2 == null) {
            clsA2 = a("org.apache.tools.ant.util.regexp.RegexpMatcher");
            f68943b = clsA2;
        }
        c.a(org.apache.tools.ant.util.a.f(str, classLoader, clsA2));
        return null;
    }

    public a c() {
        d(null);
        return null;
    }

    public a d(Project project) {
        String string;
        String property = project == null ? System.getProperty("ant.regexp.regexpimpl") : project.s("ant.regexp.regexpimpl");
        if (property != null) {
            b(property);
            return null;
        }
        try {
            f("java.util.regex.Matcher");
            b("org.apache.tools.ant.util.regexp.Jdk14RegexpMatcher");
            return null;
        } catch (BuildException e10) {
            Throwable thE = e(null, e10, f.f() < 14);
            try {
                f("org.apache.oro.text.regex.Pattern");
                b("org.apache.tools.ant.util.regexp.JakartaOroMatcher");
                return null;
            } catch (BuildException e11) {
                Throwable thE2 = e(thE, e11, true);
                try {
                    f("org.apache.regexp.RE");
                    b("org.apache.tools.ant.util.regexp.JakartaRegexpMatcher");
                    return null;
                } catch (BuildException e12) {
                    Throwable thE3 = e(thE2, e12, true);
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("No supported regular expression matcher found");
                    if (thE3 != null) {
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append(": ");
                        stringBuffer2.append(thE3);
                        string = stringBuffer2.toString();
                    } else {
                        string = "";
                    }
                    stringBuffer.append(string);
                    throw new BuildException(stringBuffer.toString(), thE3);
                }
            }
        }
    }

    protected void f(String str) {
        try {
            Class.forName(str);
        } catch (Throwable th2) {
            throw new BuildException(th2);
        }
    }
}
