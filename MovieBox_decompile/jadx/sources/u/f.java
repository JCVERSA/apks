package u;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.collections.AbstractMutableMap;
import kotlin.jvm.internal.Intrinsics;

public class f extends AbstractMutableMap implements t.g.a {

    private d f72901a;

    private w.e f72902b = new w.e();

    private t f72903c;

    private Object f72904d;

    private int f72905e;

    private int f72906f;

    public f(d dVar) {
        this.f72901a = dVar;
        this.f72903c = this.f72901a.u();
        this.f72906f = this.f72901a.size();
    }

    @Override
    public Set a() {
        return new h(this);
    }

    @Override
    public Set c() {
        return new j(this);
    }

    @Override
    public void clear() {
        t tVarA = t.f72918e.a();
        Intrinsics.f(tVarA, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder>");
        this.f72903c = tVarA;
        p(0);
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.f72903c.k(obj != null ? obj.hashCode() : 0, obj, 0);
    }

    @Override
    public int e() {
        return this.f72906f;
    }

    @Override
    public Collection f() {
        return new l(this);
    }

    @Override
    public Object get(Object obj) {
        return this.f72903c.o(obj != null ? obj.hashCode() : 0, obj, 0);
    }

    @Override
    public d build() {
        d dVar;
        if (this.f72903c == this.f72901a.u()) {
            dVar = this.f72901a;
        } else {
            this.f72902b = new w.e();
            dVar = new d(this.f72903c, size());
        }
        this.f72901a = dVar;
        return dVar;
    }

    public final int i() {
        return this.f72905e;
    }

    public final t j() {
        return this.f72903c;
    }

    public final w.e l() {
        return this.f72902b;
    }

    public final void m(int i10) {
        this.f72905e = i10;
    }

    public final void n(Object obj) {
        this.f72904d = obj;
    }

    protected final void o(w.e eVar) {
        this.f72902b = eVar;
    }

    public void p(int i10) {
        this.f72906f = i10;
        this.f72905e++;
    }

    @Override
    public Object put(Object obj, Object obj2) {
        this.f72904d = null;
        this.f72903c = this.f72903c.D(obj != null ? obj.hashCode() : 0, obj, obj2, 0, this);
        return this.f72904d;
    }

    @Override
    public void putAll(Map map) {
        d dVarBuild = map instanceof d ? (d) map : null;
        if (dVarBuild == null) {
            f fVar = map instanceof f ? (f) map : null;
            dVarBuild = fVar != null ? fVar.build() : null;
        }
        if (dVarBuild == null) {
            super.putAll(map);
            return;
        }
        w.b bVar = new w.b(0, 1, null);
        int size = size();
        t tVar = this.f72903c;
        t tVarU = dVarBuild.u();
        Intrinsics.f(tVarU, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder>");
        this.f72903c = tVar.E(tVarU, 0, bVar, this);
        int size2 = (dVarBuild.size() + size) - bVar.a();
        if (size != size2) {
            p(size2);
        }
    }

    @Override
    public Object remove(Object obj) {
        this.f72904d = null;
        t tVarG = this.f72903c.G(obj != null ? obj.hashCode() : 0, obj, 0, this);
        if (tVarG == null) {
            tVarG = t.f72918e.a();
            Intrinsics.f(tVarG, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder>");
        }
        this.f72903c = tVarG;
        return this.f72904d;
    }

    @Override
    public final boolean remove(Object obj, Object obj2) {
        int size = size();
        t tVarH = this.f72903c.H(obj != null ? obj.hashCode() : 0, obj, obj2, 0, this);
        if (tVarH == null) {
            tVarH = t.f72918e.a();
            Intrinsics.f(tVarH, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder>");
        }
        this.f72903c = tVarH;
        return size != size();
    }
}
