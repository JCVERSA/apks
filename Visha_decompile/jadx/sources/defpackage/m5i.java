package defpackage;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

public final class m5i extends q5i {
    public final Set b;
    public final Set c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m5i(Set set, Set set2) {
        super(null);
        this.b = set;
        this.c = set2;
    }

    @Override
    public final x5i iterator() {
        return new l5i(this, this.b, this.c);
    }

    @Override
    public final boolean contains(Object obj) {
        return this.b.contains(obj) && this.c.contains(obj);
    }

    @Override
    public final boolean containsAll(Collection collection) {
        return this.b.containsAll(collection) && this.c.containsAll(collection);
    }

    @Override
    public final boolean isEmpty() {
        return Collections.disjoint(this.c, this.b);
    }

    @Override
    public final int size() {
        Iterator it = this.b.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (this.c.contains(it.next())) {
                i++;
            }
        }
        return i;
    }
}
