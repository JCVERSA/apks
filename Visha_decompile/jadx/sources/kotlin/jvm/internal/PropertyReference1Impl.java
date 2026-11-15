package kotlin.jvm.internal;

import defpackage.de5;
import defpackage.ke5;
import defpackage.kw0;

public class PropertyReference1Impl extends PropertyReference1 {
    public PropertyReference1Impl(ke5 ke5Var, String str, String str2) {
        super(CallableReference.NO_RECEIVER, ((kw0) ke5Var).d(), str, str2, !(ke5Var instanceof de5) ? 1 : 0);
    }

    @Override
    public Object get(Object obj) {
        return getGetter().call(obj);
    }

    public PropertyReference1Impl(Class cls, String str, String str2, int i) {
        super(CallableReference.NO_RECEIVER, cls, str, str2, i);
    }

    public PropertyReference1Impl(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }
}
