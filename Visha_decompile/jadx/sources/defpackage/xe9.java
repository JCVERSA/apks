package defpackage;

import java.util.Collections;
import java.util.Set;
import java.util.TreeSet;
import kotlin.collections.builders.SetBuilder;

public abstract class xe9 {
    public static Set a(Set set) {
        y45.j(set, "builder");
        return ((SetBuilder) set).build();
    }

    public static Set b() {
        return new SetBuilder();
    }

    public static Set c(int i) {
        return new SetBuilder(i);
    }

    public static Set d(Object obj) {
        Set setSingleton = Collections.singleton(obj);
        y45.i(setSingleton, "singleton(...)");
        return setSingleton;
    }

    public static TreeSet e(Object... objArr) {
        y45.j(objArr, "elements");
        return (TreeSet) hi.Q0(objArr, new TreeSet());
    }
}
