package androidx.compose.runtime.internal;

import androidx.compose.runtime.g3;
import androidx.compose.runtime.m1;
import androidx.compose.runtime.n1;
import androidx.compose.runtime.q;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import u.t;

public final class d extends u.d implements n1 {

    public static final b f3455i = new b(null);

    private static final d f3456j;

    public static final class a extends u.f implements n1.a {

        private d f3457g;

        public a(d dVar) {
            super(dVar);
            this.f3457g = dVar;
        }

        @Override
        public final boolean containsKey(Object obj) {
            if (obj instanceof q) {
                return r((q) obj);
            }
            return false;
        }

        @Override
        public final boolean containsValue(Object obj) {
            if (obj instanceof g3) {
                return s((g3) obj);
            }
            return false;
        }

        @Override
        public final Object get(Object obj) {
            if (obj instanceof q) {
                return t((q) obj);
            }
            return null;
        }

        @Override
        public final Object getOrDefault(Object obj, Object obj2) {
            return !(obj instanceof q) ? obj2 : u((q) obj, (g3) obj2);
        }

        @Override
        public d build() {
            d dVar;
            if (j() == this.f3457g.u()) {
                dVar = this.f3457g;
            } else {
                o(new w.e());
                dVar = new d(j(), size());
            }
            this.f3457g = dVar;
            return dVar;
        }

        public boolean r(q qVar) {
            return super.containsKey(qVar);
        }

        @Override
        public final Object remove(Object obj) {
            if (obj instanceof q) {
                return v((q) obj);
            }
            return null;
        }

        public boolean s(g3 g3Var) {
            return super.containsValue(g3Var);
        }

        public g3 t(q qVar) {
            return (g3) super.get(qVar);
        }

        public g3 u(q qVar, g3 g3Var) {
            return (g3) super.getOrDefault(qVar, g3Var);
        }

        public g3 v(q qVar) {
            return (g3) super.remove(qVar);
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a() {
            return d.f3456j;
        }

        private b() {
        }
    }

    static {
        t tVarA = t.f72918e.a();
        Intrinsics.f(tVarA, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<androidx.compose.runtime.CompositionLocal<kotlin.Any?>, androidx.compose.runtime.ValueHolder<kotlin.Any?>>");
        f3456j = new d(tVarA, 0);
    }

    public d(t tVar, int i10) {
        super(tVar, i10);
    }

    public boolean A(q qVar) {
        return super.containsKey(qVar);
    }

    public boolean B(g3 g3Var) {
        return super.containsValue(g3Var);
    }

    public g3 C(q qVar) {
        return (g3) super.get(qVar);
    }

    public g3 D(q qVar, g3 g3Var) {
        return (g3) super.getOrDefault(qVar, g3Var);
    }

    @Override
    public Object a(q qVar) {
        return androidx.compose.runtime.t.b(this, qVar);
    }

    @Override
    public n1 b(q qVar, g3 g3Var) {
        t.b bVarP = u().P(qVar.hashCode(), qVar, g3Var, 0);
        return bVarP == null ? this : new d(bVarP.a(), size() + bVarP.b());
    }

    @Override
    public Object c(q qVar) {
        return m1.a(this, qVar);
    }

    @Override
    public final boolean containsKey(Object obj) {
        if (obj instanceof q) {
            return A((q) obj);
        }
        return false;
    }

    @Override
    public final boolean containsValue(Object obj) {
        if (obj instanceof g3) {
            return B((g3) obj);
        }
        return false;
    }

    @Override
    public final Object get(Object obj) {
        if (obj instanceof q) {
            return C((q) obj);
        }
        return null;
    }

    @Override
    public final Object getOrDefault(Object obj, Object obj2) {
        return !(obj instanceof q) ? obj2 : D((q) obj, (g3) obj2);
    }

    @Override
    public a builder() {
        return new a(this);
    }
}
