package kotlin.jvm.internal;

import defpackage.de5;
import defpackage.ke5;
import defpackage.kw0;

public class FunctionReferenceImpl extends FunctionReference {
    public FunctionReferenceImpl(int i, ke5 ke5Var, String str, String str2) {
        super(i, CallableReference.NO_RECEIVER, ((kw0) ke5Var).d(), str, str2, !(ke5Var instanceof de5) ? 1 : 0);
    }

    public FunctionReferenceImpl(int i, Class cls, String str, String str2, int i2) {
        super(i, CallableReference.NO_RECEIVER, cls, str, str2, i2);
    }

    public FunctionReferenceImpl(int i, Object obj, Class cls, String str, String str2, int i2) {
        super(i, obj, cls, str, str2, i2);
    }
}
