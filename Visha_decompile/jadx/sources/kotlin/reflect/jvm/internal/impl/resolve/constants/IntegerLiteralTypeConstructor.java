package kotlin.reflect.jvm.internal.impl.resolve.constants;

import defpackage.c74;
import defpackage.e74;
import defpackage.eh5;
import defpackage.i81;
import defpackage.if8;
import defpackage.ocb;
import defpackage.px0;
import defpackage.qq6;
import defpackage.sbb;
import defpackage.scb;
import defpackage.sm9;
import defpackage.x71;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.j;

public final class IntegerLiteralTypeConstructor implements sbb {
    public static final Companion f = new Companion(null);
    public final long a;
    public final qq6 b;
    public final Set c;
    public final sm9 d;
    public final yi5 e;

    public static final class Companion {

        public enum Mode {
            COMMON_SUPER_TYPE,
            INTERSECTION_TYPE
        }

        public class a {
            public static final int[] a;

            static {
                int[] iArr = new int[Mode.values().length];
                try {
                    iArr[Mode.COMMON_SUPER_TYPE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Mode.INTERSECTION_TYPE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                a = iArr;
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final sm9 a(Collection collection, Mode mode) {
            if (collection.isEmpty()) {
                return null;
            }
            Iterator it = collection.iterator();
            if (!it.hasNext()) {
                throw new UnsupportedOperationException("Empty collection can't be reduced.");
            }
            Object next = it.next();
            while (it.hasNext()) {
                sm9 sm9Var = (sm9) it.next();
                next = IntegerLiteralTypeConstructor.f.c((sm9) next, sm9Var, mode);
            }
            return (sm9) next;
        }

        public final sm9 b(Collection collection) {
            y45.j(collection, "types");
            return a(collection, Mode.INTERSECTION_TYPE);
        }

        public final sm9 c(sm9 sm9Var, sm9 sm9Var2, Mode mode) {
            if (sm9Var == null || sm9Var2 == null) {
                return null;
            }
            sbb sbbVarI0 = sm9Var.I0();
            sbb sbbVarI1 = sm9Var2.I0();
            boolean z = sbbVarI0 instanceof IntegerLiteralTypeConstructor;
            if (z && (sbbVarI1 instanceof IntegerLiteralTypeConstructor)) {
                return e((IntegerLiteralTypeConstructor) sbbVarI0, (IntegerLiteralTypeConstructor) sbbVarI1, mode);
            }
            if (z) {
                return d((IntegerLiteralTypeConstructor) sbbVarI0, sm9Var2);
            }
            if (sbbVarI1 instanceof IntegerLiteralTypeConstructor) {
                return d((IntegerLiteralTypeConstructor) sbbVarI1, sm9Var);
            }
            return null;
        }

        public final sm9 d(IntegerLiteralTypeConstructor integerLiteralTypeConstructor, sm9 sm9Var) {
            if (integerLiteralTypeConstructor.i().contains(sm9Var)) {
                return sm9Var;
            }
            return null;
        }

        public final sm9 e(IntegerLiteralTypeConstructor integerLiteralTypeConstructor, IntegerLiteralTypeConstructor integerLiteralTypeConstructor2, Mode mode) {
            Set setU0;
            int i = a.a[mode.ordinal()];
            if (i == 1) {
                setU0 = i81.u0(integerLiteralTypeConstructor.i(), integerLiteralTypeConstructor2.i());
            } else {
                if (i != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                setU0 = i81.h1(integerLiteralTypeConstructor.i(), integerLiteralTypeConstructor2.i());
            }
            return KotlinTypeFactory.e(j.c.h(), new IntegerLiteralTypeConstructor(integerLiteralTypeConstructor.a, integerLiteralTypeConstructor.b, setU0, null), false);
        }

        public Companion() {
        }
    }

    public IntegerLiteralTypeConstructor(long j, qq6 qq6Var, Set set, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, qq6Var, set);
    }

    private final List j() {
        return (List) this.e.getValue();
    }

    @Override
    public sbb a(c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        return this;
    }

    @Override
    public px0 c() {
        return null;
    }

    @Override
    public boolean d() {
        return false;
    }

    @Override
    public List getParameters() {
        return y71.k();
    }

    public final Set i() {
        return this.c;
    }

    @Override
    public Collection k() {
        return j();
    }

    public final boolean l() {
        Collection collectionA = if8.a(this.b);
        if ((collectionA instanceof Collection) && collectionA.isEmpty()) {
            return true;
        }
        Iterator it = collectionA.iterator();
        while (it.hasNext()) {
            if (this.c.contains((eh5) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final String m() {
        return '[' + i81.y0(this.c, StringUtils.COMMA, null, null, 0, null, new e74() {
            @Override
            public final CharSequence invoke(eh5 eh5Var) {
                y45.j(eh5Var, "it");
                return eh5Var.toString();
            }
        }, 30, null) + ']';
    }

    @Override
    public d o() {
        return this.b.o();
    }

    public String toString() {
        return "IntegerLiteralType" + m();
    }

    public IntegerLiteralTypeConstructor(long j, qq6 qq6Var, Set set) {
        this.d = KotlinTypeFactory.e(j.c.h(), this, false);
        this.e = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final List<sm9> invoke() {
                sm9 sm9VarQ = this.this$0.o().x().q();
                y45.i(sm9VarQ, "builtIns.comparable.defaultType");
                List<sm9> listQ = y71.q(scb.f(sm9VarQ, x71.e(new ocb(Variance.IN_VARIANCE, this.this$0.d)), null, 2, null));
                if (!this.this$0.l()) {
                    listQ.add(this.this$0.o().L());
                }
                return listQ;
            }
        });
        this.a = j;
        this.b = qq6Var;
        this.c = set;
    }
}
