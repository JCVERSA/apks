package defpackage;

import com.google.common.collect.Sets;
import java.util.Collection;
import java.util.Set;

public abstract class e54 extends u44 implements Set {
    @Override
    public abstract Set f();

    @Override
    public boolean equals(Object obj) {
        return obj == this || f().equals(obj);
    }

    @Override
    public int hashCode() {
        return f().hashCode();
    }

    public boolean standardEquals(Object obj) {
        return Sets.a(this, obj);
    }

    public int standardHashCode() {
        return Sets.d(this);
    }

    @Override
    public boolean standardRemoveAll(Collection<?> collection) {
        return Sets.j(this, (Collection) xd8.o(collection));
    }
}
