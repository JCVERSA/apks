package defpackage;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.j;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import org.mozilla.javascript.ES6Iterator;

public final class ee5 extends pf1 {
    public static final a b = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final pf1 a(eh5 eh5Var) {
            y45.j(eh5Var, "argumentType");
            if (fh5.a(eh5Var)) {
                return null;
            }
            int i = 0;
            eh5 type = eh5Var;
            while (d.c0(type)) {
                type = ((mcb) i81.O0(type.G0())).getType();
                y45.i(type, "type.arguments.single().type");
                i++;
            }
            px0 px0VarC = type.I0().c();
            if (px0VarC instanceof qw0) {
                xw0 xw0VarK = DescriptorUtilsKt.k(px0VarC);
                return xw0VarK == null ? new ee5(new b.a(eh5Var)) : new ee5(xw0VarK, i);
            }
            if (!(px0VarC instanceof hcb)) {
                return null;
            }
            xw0 xw0VarM = xw0.m(e.a.b.l());
            y45.i(xw0VarM, "topLevel(StandardNames.FqNames.any.toSafe())");
            return new ee5(xw0VarM, 0);
        }

        public a() {
        }
    }

    public static abstract class b {

        public static final class a extends b {
            public final eh5 a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(eh5 eh5Var) {
                super(null);
                y45.j(eh5Var, "type");
                this.a = eh5Var;
            }

            public final eh5 a() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof a) && y45.e(this.a, ((a) obj).a);
            }

            public int hashCode() {
                return this.a.hashCode();
            }

            public String toString() {
                return "LocalClass(type=" + this.a + ')';
            }
        }

        public static final class C0341b extends b {
            public final zw0 a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0341b(zw0 zw0Var) {
                super(null);
                y45.j(zw0Var, ES6Iterator.VALUE_PROPERTY);
                this.a = zw0Var;
            }

            public final int a() {
                return this.a.c();
            }

            public final xw0 b() {
                return this.a.d();
            }

            public final zw0 c() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof C0341b) && y45.e(this.a, ((C0341b) obj).a);
            }

            public int hashCode() {
                return this.a.hashCode();
            }

            public String toString() {
                return "NormalClass(value=" + this.a + ')';
            }
        }

        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public b() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ee5(b bVar) {
        super(bVar);
        y45.j(bVar, ES6Iterator.VALUE_PROPERTY);
    }

    @Override
    public eh5 a(qq6 qq6Var) {
        y45.j(qq6Var, "module");
        j jVarH = j.c.h();
        qw0 qw0VarE = qq6Var.o().E();
        y45.i(qw0VarE, "module.builtIns.kClass");
        return KotlinTypeFactory.g(jVarH, qw0VarE, x71.e(new ocb(c(qq6Var))));
    }

    public final eh5 c(qq6 qq6Var) {
        y45.j(qq6Var, "module");
        b bVar = (b) b();
        if (bVar instanceof b.a) {
            return ((b.a) b()).a();
        }
        if (!(bVar instanceof b.C0341b)) {
            throw new NoWhenBranchMatchedException();
        }
        zw0 zw0VarC = ((b.C0341b) b()).c();
        xw0 xw0VarA = zw0VarC.a();
        int iB = zw0VarC.b();
        qw0 qw0VarA = FindClassInModuleKt.a(qq6Var, xw0VarA);
        if (qw0VarA == null) {
            ErrorTypeKind errorTypeKind = ErrorTypeKind.UNRESOLVED_KCLASS_CONSTANT_VALUE;
            String string = xw0VarA.toString();
            y45.i(string, "classId.toString()");
            return id3.d(errorTypeKind, string, String.valueOf(iB));
        }
        sm9 sm9VarQ = qw0VarA.q();
        y45.i(sm9VarQ, "descriptor.defaultType");
        eh5 eh5VarY = TypeUtilsKt.y(sm9VarQ);
        for (int i = 0; i < iB; i++) {
            eh5VarY = qq6Var.o().l(Variance.INVARIANT, eh5VarY);
            y45.i(eh5VarY, "module.builtIns.getArray…Variance.INVARIANT, type)");
        }
        return eh5VarY;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ee5(zw0 zw0Var) {
        this(new b.C0341b(zw0Var));
        y45.j(zw0Var, ES6Iterator.VALUE_PROPERTY);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ee5(xw0 xw0Var, int i) {
        this(new zw0(xw0Var, i));
        y45.j(xw0Var, "classId");
    }
}
