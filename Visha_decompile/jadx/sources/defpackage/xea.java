package defpackage;

import freemarker.core.Environment;
import freemarker.core._MiscTemplateException;
import freemarker.core.f1;
import freemarker.template.Template;

public final class xea implements afa {
    @Override
    public Class a(String str, Environment environment, Template template) throws Throwable {
        Class clsA = zea.a;
        if (clsA == null) {
            clsA = zea.a("freemarker.template.utility.ObjectConstructor");
            zea.a = clsA;
        }
        if (!str.equals(clsA.getName())) {
            Class clsA2 = zea.b;
            if (clsA2 == null) {
                clsA2 = zea.a("freemarker.template.utility.Execute");
                zea.b = clsA2;
            }
            if (!str.equals(clsA2.getName()) && !str.equals("freemarker.template.utility.JythonRuntime")) {
                try {
                    return hx0.d(str);
                } catch (ClassNotFoundException e) {
                    throw new _MiscTemplateException(e, environment);
                }
            }
        }
        throw f1.n(str, environment);
    }
}
