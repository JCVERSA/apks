package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind;

public final class uia extends fd3 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uia(ErrorScopeKind errorScopeKind, String... strArr) {
        super(errorScopeKind, (String[]) Arrays.copyOf(strArr, strArr.length));
        y45.j(errorScopeKind, "kind");
        y45.j(strArr, "formatParams");
    }

    @Override
    public Set a() {
        throw new IllegalStateException();
    }

    @Override
    public Set d() {
        throw new IllegalStateException();
    }

    @Override
    public Set e() {
        throw new IllegalStateException();
    }

    @Override
    public px0 f(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        throw new IllegalStateException(j() + ", required name: " + by6Var);
    }

    @Override
    public Collection g(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        y45.j(e74Var, "nameFilter");
        throw new IllegalStateException(j());
    }

    @Override
    public Set c(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        throw new IllegalStateException(j() + ", required name: " + by6Var);
    }

    @Override
    public Set b(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        throw new IllegalStateException(j() + ", required name: " + by6Var);
    }

    @Override
    public String toString() {
        return "ThrowingScope{" + j() + '}';
    }
}
