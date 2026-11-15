package defpackage;

import freemarker.core.CollectionAndSequence;
import freemarker.core.Environment;
import freemarker.core.InvalidReferenceException;
import freemarker.core.k;

public class ql0 extends k {
    @Override
    public zfa h0(pfa pfaVar, Environment environment) throws InvalidReferenceException {
        bfa bfaVarValues = pfaVar.values();
        if (bfaVarValues != null) {
            return bfaVarValues instanceof nga ? bfaVarValues : new CollectionAndSequence(bfaVarValues);
        }
        throw i0("values", pfaVar, environment);
    }
}
