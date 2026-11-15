package defpackage;

import java.lang.reflect.Field;
import java.util.function.Function;

public final class do4 implements Function {
    @Override
    public final Object apply(Object obj) {
        return ((Field) obj).getName();
    }
}
