package freemarker.core;

import defpackage.zfa;
import freemarker.template.SimpleScalar;

public class y extends l {
    public static final SimpleScalar l = new SimpleScalar("Odd");
    public static final SimpleScalar m = new SimpleScalar("Even");

    @Override
    public zfa i0(z0.a aVar, Environment environment) {
        return aVar.f() % 2 == 0 ? l : m;
    }
}
