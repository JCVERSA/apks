package defpackage;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope;

public final class i84 extends GivenFunctionsMemberScope {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[FunctionClassKind.values().length];
            try {
                iArr[FunctionClassKind.Function.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FunctionClassKind.SuspendFunction.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i84(vx9 vx9Var, h84 h84Var) {
        super(vx9Var, h84Var);
        y45.j(vx9Var, "storageManager");
        y45.j(h84Var, "containingClass");
    }

    @Override
    public List i() {
        qw0 qw0VarL = l();
        y45.h(qw0VarL, "null cannot be cast to non-null type org.jetbrains.kotlin.builtins.functions.FunctionClassDescriptor");
        int i = a.a[((h84) qw0VarL).P0().ordinal()];
        if (i != 1) {
            return i != 2 ? y71.k() : x71.e(j84.F.a((h84) l(), true));
        }
        return x71.e(j84.F.a((h84) l(), false));
    }
}
