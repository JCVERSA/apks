package defpackage;

import java.util.Arrays;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorEntity;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public final class id3 {
    public static final id3 a = new id3();
    public static final qq6 b = ad3.b;
    public static final sc3 c;
    public static final eh5 d;
    public static final eh5 e;
    public static final ti8 f;
    public static final Set g;

    static {
        String str = String.format(ErrorEntity.ERROR_CLASS.getDebugText(), Arrays.copyOf(new Object[]{"unknown class"}, 1));
        y45.i(str, "format(this, *args)");
        by6 by6VarJ = by6.j(str);
        y45.i(by6VarJ, "special(ErrorEntity.ERRO….format(\"unknown class\"))");
        c = new sc3(by6VarJ);
        d = d(ErrorTypeKind.CYCLIC_SUPERTYPES, new String[0]);
        e = d(ErrorTypeKind.ERROR_PROPERTY_TYPE, new String[0]);
        bd3 bd3Var = new bd3();
        f = bd3Var;
        g = xe9.d(bd3Var);
    }

    public static final fd3 a(ErrorScopeKind errorScopeKind, boolean z, String... strArr) {
        y45.j(errorScopeKind, "kind");
        y45.j(strArr, "formatParams");
        return z ? new uia(errorScopeKind, (String[]) Arrays.copyOf(strArr, strArr.length)) : new fd3(errorScopeKind, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static final fd3 b(ErrorScopeKind errorScopeKind, String... strArr) {
        y45.j(errorScopeKind, "kind");
        y45.j(strArr, "formatParams");
        return a(errorScopeKind, false, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static final gd3 d(ErrorTypeKind errorTypeKind, String... strArr) {
        y45.j(errorTypeKind, "kind");
        y45.j(strArr, "formatParams");
        return a.g(errorTypeKind, y71.k(), (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static final boolean m(xt1 xt1Var) {
        if (xt1Var != null) {
            id3 id3Var = a;
            if (id3Var.n(xt1Var) || id3Var.n(xt1Var.b()) || xt1Var == b) {
                return true;
            }
        }
        return false;
    }

    public static final boolean o(eh5 eh5Var) {
        if (eh5Var == null) {
            return false;
        }
        sbb sbbVarI0 = eh5Var.I0();
        return (sbbVarI0 instanceof hd3) && ((hd3) sbbVarI0).e() == ErrorTypeKind.UNINFERRED_TYPE_VARIABLE;
    }

    public final gd3 c(ErrorTypeKind errorTypeKind, sbb sbbVar, String... strArr) {
        y45.j(errorTypeKind, "kind");
        y45.j(sbbVar, "typeConstructor");
        y45.j(strArr, "formatParams");
        return f(errorTypeKind, y71.k(), sbbVar, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public final hd3 e(ErrorTypeKind errorTypeKind, String... strArr) {
        y45.j(errorTypeKind, "kind");
        y45.j(strArr, "formatParams");
        return new hd3(errorTypeKind, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public final gd3 f(ErrorTypeKind errorTypeKind, List list, sbb sbbVar, String... strArr) {
        y45.j(errorTypeKind, "kind");
        y45.j(list, "arguments");
        y45.j(sbbVar, "typeConstructor");
        y45.j(strArr, "formatParams");
        return new gd3(sbbVar, b(ErrorScopeKind.ERROR_TYPE_SCOPE, sbbVar.toString()), errorTypeKind, list, false, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public final gd3 g(ErrorTypeKind errorTypeKind, List list, String... strArr) {
        y45.j(errorTypeKind, "kind");
        y45.j(list, "arguments");
        y45.j(strArr, "formatParams");
        return f(errorTypeKind, list, e(errorTypeKind, (String[]) Arrays.copyOf(strArr, strArr.length)), (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public final sc3 h() {
        return c;
    }

    public final qq6 i() {
        return b;
    }

    public final Set j() {
        return g;
    }

    public final eh5 k() {
        return e;
    }

    public final eh5 l() {
        return d;
    }

    public final boolean n(xt1 xt1Var) {
        return xt1Var instanceof sc3;
    }

    public final String p(eh5 eh5Var) {
        y45.j(eh5Var, "type");
        TypeUtilsKt.u(eh5Var);
        sbb sbbVarI0 = eh5Var.I0();
        y45.h(sbbVarI0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.error.ErrorTypeConstructor");
        return ((hd3) sbbVarI0).f(0);
    }
}
