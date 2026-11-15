package defpackage;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.renderer.b;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.j;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public final class hy3 extends fy3 implements zo1 {
    public static final a f = new a(null);
    public static boolean g;
    public boolean e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hy3(sm9 sm9Var, sm9 sm9Var2) {
        super(sm9Var, sm9Var2);
        y45.j(sm9Var, "lowerBound");
        y45.j(sm9Var2, "upperBound");
    }

    @Override
    public boolean C0() {
        return (Q0().I0().c() instanceof hcb) && y45.e(Q0().I0(), R0().I0());
    }

    @Override
    public mgb M0(boolean z) {
        return KotlinTypeFactory.d(Q0().M0(z), R0().M0(z));
    }

    @Override
    public mgb O0(j jVar) {
        y45.j(jVar, "newAttributes");
        return KotlinTypeFactory.d(Q0().O0(jVar), R0().O0(jVar));
    }

    @Override
    public sm9 P0() {
        U0();
        return Q0();
    }

    @Override
    public String S0(DescriptorRenderer descriptorRenderer, b bVar) {
        y45.j(descriptorRenderer, "renderer");
        y45.j(bVar, "options");
        if (!bVar.d()) {
            return descriptorRenderer.v(descriptorRenderer.y(Q0()), descriptorRenderer.y(R0()), TypeUtilsKt.i(this));
        }
        return '(' + descriptorRenderer.y(Q0()) + FileTree.PARENT_DIR + descriptorRenderer.y(R0()) + ')';
    }

    @Override
    public fy3 S0(c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        eh5 eh5VarA = cVar.a(Q0());
        y45.h(eh5VarA, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        eh5 eh5VarA2 = cVar.a(R0());
        y45.h(eh5VarA2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        return new hy3((sm9) eh5VarA, (sm9) eh5VarA2);
    }

    public final void U0() {
        if (!g || this.e) {
            return;
        }
        this.e = true;
        ky3.b(Q0());
        ky3.b(R0());
        y45.e(Q0(), R0());
        kotlin.reflect.jvm.internal.impl.types.checker.b.a.c(Q0(), R0());
    }

    @Override
    public eh5 d0(eh5 eh5Var) {
        mgb mgbVarD;
        y45.j(eh5Var, "replacement");
        mgb mgbVarL0 = eh5Var.L0();
        if (mgbVarL0 instanceof fy3) {
            mgbVarD = mgbVarL0;
        } else {
            if (!(mgbVarL0 instanceof sm9)) {
                throw new NoWhenBranchMatchedException();
            }
            sm9 sm9Var = (sm9) mgbVarL0;
            mgbVarD = KotlinTypeFactory.d(sm9Var, sm9Var.M0(true));
        }
        return ddb.b(mgbVarD, mgbVarL0);
    }

    @Override
    public String toString() {
        return '(' + Q0() + FileTree.PARENT_DIR + R0() + ')';
    }
}
