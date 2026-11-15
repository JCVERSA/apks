package kotlin.reflect.jvm.internal.calls;

import defpackage.y45;
import defpackage.y71;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import java.util.List;

public final class e implements a {
    public static final e a = new e();

    @Override
    public List a() {
        return y71.k();
    }

    @Override
    public Member b() {
        return (Member) c();
    }

    public Void c() {
        return null;
    }

    @Override
    public Object call(Object[] objArr) {
        y45.j(objArr, "args");
        throw new UnsupportedOperationException("call/callBy are not supported for this declaration.");
    }

    @Override
    public Type getReturnType() {
        Class cls = Void.TYPE;
        y45.i(cls, "TYPE");
        return cls;
    }
}
