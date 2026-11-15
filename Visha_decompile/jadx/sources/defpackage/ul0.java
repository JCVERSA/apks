package defpackage;

import freemarker.core.Environment;
import freemarker.template.SimpleScalar;

public class ul0 extends il0 {
    @Override
    public zfa h0(gga ggaVar, Environment environment) {
        String strG = ggaVar.g();
        if (strG == null) {
            return null;
        }
        return new SimpleScalar(strG);
    }
}
