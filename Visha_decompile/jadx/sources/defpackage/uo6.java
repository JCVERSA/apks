package defpackage;

import java.lang.reflect.Method;
import java.util.function.Function;

public final class uo6 implements Function {
    @Override
    public final Object apply(Object obj) {
        return ((Method) obj).toString();
    }
}
