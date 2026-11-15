package kotlin.reflect.jvm.internal.impl.types;

import com.transsion.livecaption.constant.ICode;
import defpackage.c74;
import defpackage.cq9;
import defpackage.e74;
import defpackage.g4;
import defpackage.gh5;
import defpackage.h4;
import defpackage.rr0;
import defpackage.tcb;
import defpackage.tm9;
import defpackage.y45;
import java.util.ArrayDeque;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;

public class TypeCheckerState {
    public final boolean a;
    public final boolean b;
    public final boolean c;
    public final tcb d;
    public final g4 e;
    public final h4 f;
    public int g;
    public boolean h;
    public ArrayDeque i;
    public Set j;

    public enum LowerCapturedTypePolicy {
        CHECK_ONLY_LOWER,
        CHECK_SUBTYPE_AND_LOWER,
        SKIP_LOWER
    }

    public interface a {

        public static final class C0409a implements a {
            public boolean a;

            @Override
            public void a(c74 c74Var) {
                y45.j(c74Var, "block");
                if (this.a) {
                    return;
                }
                this.a = ((Boolean) c74Var.invoke()).booleanValue();
            }

            public final boolean b() {
                return this.a;
            }
        }

        void a(c74 c74Var);
    }

    public static abstract class b {

        public static abstract class a extends b {
            public a() {
                super(null);
            }
        }

        public static final class C0410b extends b {
            public static final C0410b a = new C0410b();

            public C0410b() {
                super(null);
            }

            @Override
            public tm9 a(TypeCheckerState typeCheckerState, gh5 gh5Var) {
                y45.j(typeCheckerState, ICode.CALL.CALL_KEY_STATE);
                y45.j(gh5Var, "type");
                return typeCheckerState.j().C(gh5Var);
            }
        }

        public static final class c extends b {
            public static final c a = new c();

            public c() {
                super(null);
            }

            @Override
            public tm9 a(TypeCheckerState typeCheckerState, gh5 gh5Var) {
                return (tm9) b(typeCheckerState, gh5Var);
            }

            public Void b(TypeCheckerState typeCheckerState, gh5 gh5Var) {
                y45.j(typeCheckerState, ICode.CALL.CALL_KEY_STATE);
                y45.j(gh5Var, "type");
                throw new UnsupportedOperationException("Should not be called");
            }
        }

        public static final class d extends b {
            public static final d a = new d();

            public d() {
                super(null);
            }

            @Override
            public tm9 a(TypeCheckerState typeCheckerState, gh5 gh5Var) {
                y45.j(typeCheckerState, ICode.CALL.CALL_KEY_STATE);
                y45.j(gh5Var, "type");
                return typeCheckerState.j().q(gh5Var);
            }
        }

        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public abstract tm9 a(TypeCheckerState typeCheckerState, gh5 gh5Var);

        public b() {
        }
    }

    public TypeCheckerState(boolean z, boolean z2, boolean z3, tcb tcbVar, g4 g4Var, h4 h4Var) {
        y45.j(tcbVar, "typeSystemContext");
        y45.j(g4Var, "kotlinTypePreparator");
        y45.j(h4Var, "kotlinTypeRefiner");
        this.a = z;
        this.b = z2;
        this.c = z3;
        this.d = tcbVar;
        this.e = g4Var;
        this.f = h4Var;
    }

    public static Boolean d(TypeCheckerState typeCheckerState, gh5 gh5Var, gh5 gh5Var2, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addSubtypeConstraint");
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return typeCheckerState.c(gh5Var, gh5Var2, z);
    }

    public Boolean c(gh5 gh5Var, gh5 gh5Var2, boolean z) {
        y45.j(gh5Var, "subType");
        y45.j(gh5Var2, "superType");
        return null;
    }

    public final void e() {
        ArrayDeque arrayDeque = this.i;
        y45.g(arrayDeque);
        arrayDeque.clear();
        Set set = this.j;
        y45.g(set);
        set.clear();
        this.h = false;
    }

    public boolean f(gh5 gh5Var, gh5 gh5Var2) {
        y45.j(gh5Var, "subType");
        y45.j(gh5Var2, "superType");
        return true;
    }

    public LowerCapturedTypePolicy g(tm9 tm9Var, rr0 rr0Var) {
        y45.j(tm9Var, "subType");
        y45.j(rr0Var, "superType");
        return LowerCapturedTypePolicy.CHECK_SUBTYPE_AND_LOWER;
    }

    public final ArrayDeque h() {
        return this.i;
    }

    public final Set i() {
        return this.j;
    }

    public final tcb j() {
        return this.d;
    }

    public final void k() {
        this.h = true;
        if (this.i == null) {
            this.i = new ArrayDeque(4);
        }
        if (this.j == null) {
            this.j = cq9.d.a();
        }
    }

    public final boolean l(gh5 gh5Var) {
        y45.j(gh5Var, "type");
        return this.c && this.d.d0(gh5Var);
    }

    public final boolean m() {
        return this.a;
    }

    public final boolean n() {
        return this.b;
    }

    public final gh5 o(gh5 gh5Var) {
        y45.j(gh5Var, "type");
        return this.e.a(gh5Var);
    }

    public final gh5 p(gh5 gh5Var) {
        y45.j(gh5Var, "type");
        return this.f.a(gh5Var);
    }

    public boolean q(e74 e74Var) {
        y45.j(e74Var, "block");
        a.C0409a c0409a = new a.C0409a();
        e74Var.invoke(c0409a);
        return c0409a.b();
    }
}
