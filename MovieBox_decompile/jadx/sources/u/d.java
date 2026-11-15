package u;

import java.util.Set;
import kotlin.collections.AbstractMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public class d extends AbstractMap implements t.g {

    public static final a f72893f = new a(null);

    public static final int f72894g = 8;

    private static final d f72895h = new d(t.f72918e.a(), 0);

    private final t f72896d;

    private final int f72897e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a() {
            d dVar = d.f72895h;
            Intrinsics.f(dVar, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap.Companion.emptyOf, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap.Companion.emptyOf>");
            return dVar;
        }

        private a() {
        }
    }

    public d(t tVar, int i10) {
        this.f72896d = tVar;
        this.f72897e = i10;
    }

    private final t.e s() {
        return new n(this);
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.f72896d.k(obj != null ? obj.hashCode() : 0, obj, 0);
    }

    @Override
    public Object get(Object obj) {
        return this.f72896d.o(obj != null ? obj.hashCode() : 0, obj, 0);
    }

    @Override
    public final Set h() {
        return s();
    }

    @Override
    public int j() {
        return this.f72897e;
    }

    @Override
    public f builder() {
        return new f(this);
    }

    @Override
    public t.e i() {
        return new p(this);
    }

    public final t u() {
        return this.f72896d;
    }

    @Override
    public t.b l() {
        return new r(this);
    }

    public d w(Object obj, Object obj2) {
        t.b bVarP = this.f72896d.P(obj != null ? obj.hashCode() : 0, obj, obj2, 0);
        return bVarP == null ? this : new d(bVarP.a(), size() + bVarP.b());
    }

    public d x(Object obj) {
        t tVarQ = this.f72896d.Q(obj != null ? obj.hashCode() : 0, obj, 0);
        if (this.f72896d == tVarQ) {
            return this;
        }
        return tVarQ == null ? f72893f.a() : new d(tVarQ, size() - 1);
    }
}
