package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class zre {
    public List a = Collections.emptyList();

    public final List a() {
        List list = this.a;
        this.a = Collections.emptyList();
        return list;
    }

    public final void b(List list) {
        this.a = new ArrayList(list);
    }
}
