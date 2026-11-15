package androidx.compose.runtime.snapshots;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import kotlin.Unit;

abstract class y {

    private final t f3727a;

    private final Iterator f3728b;

    private int f3729c;

    private Map.Entry f3730d;

    private Map.Entry f3731e;

    public y(t tVar, Iterator it) {
        this.f3727a = tVar;
        this.f3728b = it;
        this.f3729c = tVar.e();
        e();
    }

    protected final void e() {
        this.f3730d = this.f3731e;
        this.f3731e = this.f3728b.hasNext() ? (Map.Entry) this.f3728b.next() : null;
    }

    protected final Map.Entry f() {
        return this.f3730d;
    }

    public final t h() {
        return this.f3727a;
    }

    public final boolean hasNext() {
        return this.f3731e != null;
    }

    protected final Map.Entry i() {
        return this.f3731e;
    }

    public final void remove() {
        if (h().e() != this.f3729c) {
            throw new ConcurrentModificationException();
        }
        Map.Entry entry = this.f3730d;
        if (entry == null) {
            throw new IllegalStateException();
        }
        this.f3727a.remove(entry.getKey());
        this.f3730d = null;
        Unit unit = Unit.f64096a;
        this.f3729c = h().e();
    }
}
