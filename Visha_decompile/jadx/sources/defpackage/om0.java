package defpackage;

import freemarker.core.Environment;
import freemarker.template.SimpleScalar;

public class om0 extends ll0 {
    @Override
    public zfa h0(String str, Environment environment) {
        return new SimpleScalar(str.toLowerCase(environment.p()));
    }
}
