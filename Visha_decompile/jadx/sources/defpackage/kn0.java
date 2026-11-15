package defpackage;

import freemarker.core.Environment;
import freemarker.core._MiscTemplateException;
import freemarker.template.a;
import org.apache.commons.lang3.BooleanUtils;

public class kn0 extends ll0 {
    @Override
    public zfa h0(String str, Environment environment) throws _MiscTemplateException {
        if (!str.equals(BooleanUtils.TRUE)) {
            if (!str.equals(BooleanUtils.FALSE)) {
                if (!str.equals(environment.F())) {
                    if (!str.equals(environment.o())) {
                        throw new _MiscTemplateException(this, environment, new Object[]{"Can't convert this string to boolean: ", new k0d(str)});
                    }
                }
            }
            return a.y6;
        }
        return a.z6;
    }
}
