package freemarker.core;

import defpackage.ofa;
import defpackage.zfa;
import freemarker.template.TemplateModelException;

public class o0 implements ofa {
    public final Environment b;

    public o0(Environment environment) {
        this.b = environment;
    }

    @Override
    public zfa get(String str) throws TemplateModelException {
        zfa zfaVar = this.b.e0.get(str);
        if (zfaVar == null) {
            zfaVar = this.b.J.get(str);
        }
        return zfaVar == null ? this.b.x0().I0(str) : zfaVar;
    }

    @Override
    public boolean isEmpty() {
        return false;
    }
}
