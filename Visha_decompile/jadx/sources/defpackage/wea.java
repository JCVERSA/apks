package defpackage;

import freemarker.core.Environment;
import freemarker.core._MiscTemplateException;
import freemarker.template.Template;

public final class wea implements afa {
    @Override
    public Class a(String str, Environment environment, Template template) throws _MiscTemplateException {
        try {
            return hx0.d(str);
        } catch (ClassNotFoundException e) {
            throw new _MiscTemplateException(e, environment);
        }
    }
}
