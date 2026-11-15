package defpackage;

import java.math.BigInteger;
import java.security.spec.ECParameterSpec;

public abstract class q53 {
    public static oqc a(ECParameterSpec eCParameterSpec, boolean z) {
        if (!(eCParameterSpec instanceof e53)) {
            if (eCParameterSpec == null) {
                return new oqc((h1) up1.c);
            }
            t43 t43VarA = q43.a(eCParameterSpec.getCurve());
            return new oqc(new qqc(t43VarA, new sqc(q43.d(t43VarA, eCParameterSpec.getGenerator()), z), eCParameterSpec.getOrder(), BigInteger.valueOf(eCParameterSpec.getCofactor()), eCParameterSpec.getCurve().getSeed()));
        }
        e53 e53Var = (e53) eCParameterSpec;
        l1 l1VarG = p53.g(e53Var.a());
        if (l1VarG == null) {
            l1VarG = new l1(e53Var.a());
        }
        return new oqc(l1VarG);
    }
}
