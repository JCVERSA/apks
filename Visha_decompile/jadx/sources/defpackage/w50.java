package defpackage;

import java.util.function.Predicate;

public final class w50 implements Predicate {
    public final Class a;

    @Override
    public final boolean test(Object obj) {
        return this.a.isInstance(obj);
    }
}
