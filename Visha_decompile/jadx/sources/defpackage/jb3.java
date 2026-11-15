package defpackage;

import freemarker.core.Environment;

public class jb3 implements ofa {
    public final Environment b;

    public jb3(Environment environment) {
        this.b = environment;
    }

    @Override
    public zfa get(String str) {
        zfa zfaVar = this.b.J.get(str);
        return zfaVar == null ? this.b.x0().I0(str) : zfaVar;
    }

    @Override
    public boolean isEmpty() {
        return false;
    }
}
