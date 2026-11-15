package u;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

public abstract class u implements Iterator, KMappedMarker {

    private Object[] f72927a = t.f72918e.a().p();

    private int f72928b;

    private int f72929c;

    public final Object a() {
        w.a.a(h());
        return this.f72927a[this.f72929c];
    }

    public final t c() {
        w.a.a(i());
        Object obj = this.f72927a[this.f72929c];
        Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeBaseIterator, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeBaseIterator>");
        return (t) obj;
    }

    protected final Object[] e() {
        return this.f72927a;
    }

    protected final int f() {
        return this.f72929c;
    }

    public final boolean h() {
        return this.f72929c < this.f72928b;
    }

    @Override
    public boolean hasNext() {
        return h();
    }

    public final boolean i() {
        w.a.a(this.f72929c >= this.f72928b);
        return this.f72929c < this.f72927a.length;
    }

    public final void j() {
        w.a.a(h());
        this.f72929c += 2;
    }

    public final void l() {
        w.a.a(i());
        this.f72929c++;
    }

    public final void m(Object[] objArr, int i10) {
        n(objArr, i10, 0);
    }

    public final void n(Object[] objArr, int i10, int i11) {
        this.f72927a = objArr;
        this.f72928b = i10;
        this.f72929c = i11;
    }

    protected final void o(int i10) {
        this.f72929c = i10;
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
