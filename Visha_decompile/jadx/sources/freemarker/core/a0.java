package freemarker.core;

import defpackage.gga;
import defpackage.il0;
import defpackage.zfa;

public class a0 extends il0 {
    @Override
    public zfa h0(gga ggaVar, Environment environment) {
        BuiltInsForNodes$AncestorSequence builtInsForNodes$AncestorSequence = new BuiltInsForNodes$AncestorSequence(environment);
        for (gga ggaVarA = ggaVar.a(); ggaVarA != null; ggaVarA = ggaVarA.a()) {
            builtInsForNodes$AncestorSequence.add(ggaVarA);
        }
        return builtInsForNodes$AncestorSequence;
    }
}
