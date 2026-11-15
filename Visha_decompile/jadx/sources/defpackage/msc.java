package defpackage;

import java.util.function.Function;

public final class msc implements Function {
    public final Class a;

    @Override
    public final Object apply(Object obj) {
        return (String) this.a.cast(obj);
    }
}
