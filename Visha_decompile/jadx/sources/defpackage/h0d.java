package defpackage;

import freemarker.core.t1;

public class h0d extends f0d {
    public h0d(t1 t1Var) {
        super(t1Var);
    }

    @Override
    public String a(Object obj) {
        try {
            return ((t1) obj).o();
        } catch (Exception unused) {
            return "{Error getting canonical form}";
        }
    }
}
