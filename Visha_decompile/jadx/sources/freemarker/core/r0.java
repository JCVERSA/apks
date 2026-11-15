package freemarker.core;

import defpackage.pf3;
import defpackage.qf3;
import defpackage.yfa;
import defpackage.zfa;
import java.util.List;

public class r0 extends pf3 {
    public static final yfa k = new qf3();

    public static class a implements yfa {
        public final zfa b;

        public a(zfa zfaVar) {
            this.b = zfaVar;
        }

        @Override
        public Object exec(List list) {
            return this.b;
        }
    }

    public r0() {
        super();
    }

    @Override
    public zfa F(Environment environment) {
        zfa zfaVarH0 = h0(environment);
        return zfaVarH0 == null ? k : new a(zfaVarH0);
    }
}
