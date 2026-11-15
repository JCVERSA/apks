package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorEntity;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind;

public class fd3 implements MemberScope {
    public final ErrorScopeKind b;
    public final String c;

    public fd3(ErrorScopeKind errorScopeKind, String... strArr) {
        y45.j(errorScopeKind, "kind");
        y45.j(strArr, "formatParams");
        this.b = errorScopeKind;
        String debugMessage = errorScopeKind.getDebugMessage();
        Object[] objArrCopyOf = Arrays.copyOf(strArr, strArr.length);
        String str = String.format(debugMessage, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
        y45.i(str, "format(this, *args)");
        this.c = str;
    }

    @Override
    public Set a() {
        return ye9.f();
    }

    @Override
    public Set d() {
        return ye9.f();
    }

    @Override
    public Set e() {
        return ye9.f();
    }

    @Override
    public px0 f(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        String str = String.format(ErrorEntity.ERROR_CLASS.getDebugText(), Arrays.copyOf(new Object[]{by6Var}, 1));
        y45.i(str, "format(this, *args)");
        by6 by6VarJ = by6.j(str);
        y45.i(by6VarJ, "special(ErrorEntity.ERRO…S.debugText.format(name))");
        return new sc3(by6VarJ);
    }

    @Override
    public Collection g(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        y45.j(e74Var, "nameFilter");
        return y71.k();
    }

    @Override
    public Set c(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        return xe9.d(new yc3(id3.a.h()));
    }

    @Override
    public Set b(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        return id3.a.j();
    }

    public final String j() {
        return this.c;
    }

    public String toString() {
        return "ErrorScope{" + this.c + '}';
    }
}
