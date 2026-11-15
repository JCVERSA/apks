package kotlin.jvm.internal;

import defpackage.de5;
import defpackage.ke5;
import defpackage.kw0;

public class PropertyReference2Impl extends PropertyReference2 {
    public PropertyReference2Impl(ke5 ke5Var, String str, String str2) {
        super(((kw0) ke5Var).d(), str, str2, !(ke5Var instanceof de5) ? 1 : 0);
    }

    @Override
    public Object get(Object obj, Object obj2) {
        return getGetter().call(obj, obj2);
    }

    public PropertyReference2Impl(Class cls, String str, String str2, int i) {
        super(cls, str, str2, i);
    }
}
