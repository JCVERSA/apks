package defpackage;

import freemarker.core.Environment;
import freemarker.core.InvalidReferenceException;
import freemarker.core.j;
import freemarker.core.m1;
import freemarker.core.t0;

public abstract class pf3 extends j {
    public pf3() {
    }

    public zfa h0(Environment environment) {
        t0 t0Var = this.h;
        if (!(t0Var instanceof m1)) {
            return t0Var.K(environment);
        }
        boolean zN1 = environment.N1(true);
        try {
            return this.h.K(environment);
        } catch (InvalidReferenceException unused) {
            return null;
        } finally {
            environment.N1(zN1);
        }
    }
}
