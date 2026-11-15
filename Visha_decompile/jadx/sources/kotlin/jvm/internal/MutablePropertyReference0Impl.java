package kotlin.jvm.internal;

import defpackage.de5;
import defpackage.ke5;
import defpackage.kw0;

public class MutablePropertyReference0Impl extends MutablePropertyReference0 {
    public MutablePropertyReference0Impl(ke5 ke5Var, String str, String str2) {
        super(CallableReference.NO_RECEIVER, ((kw0) ke5Var).d(), str, str2, !(ke5Var instanceof de5) ? 1 : 0);
    }

    @Override
    public Object get() {
        return getGetter().call(new Object[0]);
    }

    @Override
    public void set(Object obj) {
        getSetter().call(obj);
    }

    public MutablePropertyReference0Impl(Class cls, String str, String str2, int i) {
        super(CallableReference.NO_RECEIVER, cls, str, str2, i);
    }

    public MutablePropertyReference0Impl(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }
}
