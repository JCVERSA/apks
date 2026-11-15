package defpackage;

import java.util.Set;

public interface ic1 {
    default Object a(Class cls) {
        return d(vk8.b(cls));
    }

    pj8 b(vk8 vk8Var);

    default Set c(Class cls) {
        return g(vk8.b(cls));
    }

    default Object d(vk8 vk8Var) {
        pj8 pj8VarF = f(vk8Var);
        if (pj8VarF == null) {
            return null;
        }
        return pj8VarF.get();
    }

    default pj8 e(Class cls) {
        return f(vk8.b(cls));
    }

    pj8 f(vk8 vk8Var);

    default Set g(vk8 vk8Var) {
        return (Set) b(vk8Var).get();
    }
}
