package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.j;

public final class h84 extends o2 {
    public static final a n = new a(null);
    public static final xw0 o = new xw0(e.v, by6.g("Function"));
    public static final xw0 p = new xw0(e.s, by6.g("KFunction"));
    public final vx9 g;
    public final dv7 h;
    public final FunctionClassKind i;
    public final int j;
    public final b k;
    public final i84 l;
    public final List m;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public final class b extends p2 {

        public class a {
            public static final int[] a;

            static {
                int[] iArr = new int[FunctionClassKind.values().length];
                try {
                    iArr[FunctionClassKind.Function.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[FunctionClassKind.KFunction.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[FunctionClassKind.SuspendFunction.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[FunctionClassKind.KSuspendFunction.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                a = iArr;
            }
        }

        public b() {
            super(h84.this.g);
        }

        @Override
        public boolean d() {
            return true;
        }

        @Override
        public List getParameters() {
            return h84.this.m;
        }

        @Override
        public Collection j() {
            List listE;
            int i = a.a[h84.this.P0().ordinal()];
            if (i == 1) {
                listE = x71.e(h84.o);
            } else if (i == 2) {
                listE = y71.n(h84.p, new xw0(e.v, FunctionClassKind.Function.numberedClassName(h84.this.L0())));
            } else if (i == 3) {
                listE = x71.e(h84.o);
            } else {
                if (i != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                listE = y71.n(h84.p, new xw0(e.n, FunctionClassKind.SuspendFunction.numberedClassName(h84.this.L0())));
            }
            qq6 qq6VarB = h84.this.h.b();
            List<xw0> list = listE;
            ArrayList arrayList = new ArrayList(z71.v(list, 10));
            for (xw0 xw0Var : list) {
                qw0 qw0VarA = FindClassInModuleKt.a(qq6VarB, xw0Var);
                if (qw0VarA == null) {
                    throw new IllegalStateException(("Built-in class " + xw0Var + " not found").toString());
                }
                List listV0 = i81.V0(getParameters(), qw0VarA.m().getParameters().size());
                ArrayList arrayList2 = new ArrayList(z71.v(listV0, 10));
                Iterator it = listV0.iterator();
                while (it.hasNext()) {
                    arrayList2.add(new ocb(((hcb) it.next()).q()));
                }
                arrayList.add(KotlinTypeFactory.g(j.c.h(), qw0VarA, arrayList2));
            }
            return i81.b1(arrayList);
        }

        @Override
        public t6a p() {
            return t6a.a.a;
        }

        public String toString() {
            return c().toString();
        }

        @Override
        public h84 c() {
            return h84.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h84(vx9 vx9Var, dv7 dv7Var, FunctionClassKind functionClassKind, int i) {
        super(vx9Var, functionClassKind.numberedClassName(i));
        y45.j(vx9Var, "storageManager");
        y45.j(dv7Var, "containingDeclaration");
        y45.j(functionClassKind, "functionKind");
        this.g = vx9Var;
        this.h = dv7Var;
        this.i = functionClassKind;
        this.j = i;
        this.k = new b();
        this.l = new i84(vx9Var, this);
        ArrayList arrayList = new ArrayList();
        u15 u15Var = new u15(1, i);
        ArrayList arrayList2 = new ArrayList(z71.v(u15Var, 10));
        Iterator it = u15Var.iterator();
        while (it.hasNext()) {
            int iNextInt = ((q15) it).nextInt();
            Variance variance = Variance.IN_VARIANCE;
            StringBuilder sb = new StringBuilder();
            sb.append('P');
            sb.append(iNextInt);
            F0(arrayList, this, variance, sb.toString());
            arrayList2.add(zfb.a);
        }
        F0(arrayList, this, Variance.OUT_VARIANCE, "R");
        this.m = i81.b1(arrayList);
    }

    public static final void F0(ArrayList arrayList, h84 h84Var, Variance variance, String str) {
        arrayList.add(icb.M0(h84Var, md.u1.b(), false, variance, by6.g(str), arrayList.size(), h84Var.g));
    }

    @Override
    public boolean E0() {
        return false;
    }

    public final int L0() {
        return this.j;
    }

    public Void M0() {
        return null;
    }

    @Override
    public List n() {
        return y71.k();
    }

    @Override
    public dv7 b() {
        return this.h;
    }

    public final FunctionClassKind P0() {
        return this.i;
    }

    @Override
    public List T() {
        return y71.k();
    }

    @Override
    public MemberScope.a n0() {
        return MemberScope.a.b;
    }

    @Override
    public i84 d0(c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        return this.l;
    }

    public Void T0() {
        return null;
    }

    @Override
    public inb c0() {
        return null;
    }

    @Override
    public boolean f0() {
        return false;
    }

    @Override
    public boolean g() {
        return false;
    }

    @Override
    public md getAnnotations() {
        return md.u1.b();
    }

    @Override
    public ClassKind getKind() {
        return ClassKind.INTERFACE;
    }

    @Override
    public yt9 getSource() {
        yt9 yt9Var = yt9.a;
        y45.i(yt9Var, "NO_SOURCE");
        return yt9Var;
    }

    @Override
    public c92 getVisibility() {
        c92 c92Var = b92.e;
        y45.i(c92Var, "PUBLIC");
        return c92Var;
    }

    @Override
    public boolean h0() {
        return false;
    }

    @Override
    public boolean isExternal() {
        return false;
    }

    @Override
    public boolean isInline() {
        return false;
    }

    @Override
    public Modality j() {
        return Modality.ABSTRACT;
    }

    @Override
    public boolean j0() {
        return false;
    }

    @Override
    public sbb m() {
        return this.k;
    }

    @Override
    public boolean m0() {
        return false;
    }

    @Override
    public qw0 o0() {
        return (qw0) M0();
    }

    @Override
    public List r() {
        return this.m;
    }

    @Override
    public boolean s() {
        return false;
    }

    public String toString() {
        String strB = getName().b();
        y45.i(strB, "name.asString()");
        return strB;
    }

    @Override
    public kotlin.reflect.jvm.internal.impl.descriptors.b w() {
        return (kotlin.reflect.jvm.internal.impl.descriptors.b) T0();
    }
}
