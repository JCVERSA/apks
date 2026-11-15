package defpackage;

import freemarker.core.t1;
import freemarker.template.Template;
import freemarker.template.Version;
import freemarker.template.utility.NullArgumentException;
import java.util.Set;

public abstract class d1d {
    public static final int a = xe1.e0.intValue();
    public static final int b = xe1.f0.intValue();
    public static final int c = xe1.g0.intValue();
    public static final int d = xe1.h0.intValue();
    public static final int e = xe1.i0.intValue();
    public static final int f = xe1.j0.intValue();
    public static final int g = Version.intValueFor(2, 4, 0);

    public static void a(Version version) {
        NullArgumentException.check("incompatibleImprovements", version);
        int iIntValue = version.intValue();
        if (iIntValue <= xe1.S0().intValue()) {
            if (iIntValue < a) {
                throw new IllegalArgumentException("\"incompatibleImprovements\" must be at least 2.3.0.");
            }
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("The FreeMarker version requested by \"incompatibleImprovements\" was ");
        stringBuffer.append(version);
        stringBuffer.append(", but the installed FreeMarker version is only ");
        stringBuffer.append(xe1.S0());
        stringBuffer.append(". You may need to upgrade FreeMarker in your project.");
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    public static Set b(xe1 xe1Var, boolean z) {
        return xe1Var.z(z);
    }

    public static boolean c(Version version) {
        return xe1.u0(version);
    }

    public static nfa d(Version version) {
        return xe1.y0(version);
    }

    public static int e(t1 t1Var) {
        return f(t1Var.y());
    }

    public static int f(Template template) {
        return template.F0().intValue();
    }
}
