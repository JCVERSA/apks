package defpackage;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public abstract class nbb {
    public final Type capture() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        xd8.j(genericSuperclass instanceof ParameterizedType, "%s isn't parameterized", genericSuperclass);
        return ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0];
    }
}
