package defpackage;

import freemarker.core.Environment;

public class xl0 extends il0 {
    @Override
    public zfa h0(gga ggaVar, Environment environment) {
        gga ggaVarA = ggaVar.a();
        while (true) {
            gga ggaVar2 = ggaVar;
            ggaVar = ggaVarA;
            if (ggaVar == null) {
                return ggaVar2;
            }
            ggaVarA = ggaVar.a();
        }
    }
}
