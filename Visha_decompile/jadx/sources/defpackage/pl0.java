package defpackage;

import freemarker.core.CollectionAndSequence;
import freemarker.core.Environment;
import freemarker.core.InvalidReferenceException;
import freemarker.core.k;

public class pl0 extends k {
    @Override
    public zfa h0(pfa pfaVar, Environment environment) throws InvalidReferenceException {
        bfa bfaVarKeys = pfaVar.keys();
        if (bfaVarKeys != null) {
            return bfaVarKeys instanceof nga ? bfaVarKeys : new CollectionAndSequence(bfaVarKeys);
        }
        throw i0("keys", pfaVar, environment);
    }
}
