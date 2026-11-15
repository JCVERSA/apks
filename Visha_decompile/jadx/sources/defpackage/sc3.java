package defpackage;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.l;

public final class sc3 extends tw0 {
    /* JADX WARN: Illegal instructions before constructor call */
    public sc3(by6 by6Var) {
        y45.j(by6Var, "name");
        id3 id3Var = id3.a;
        qq6 qq6VarI = id3Var.i();
        Modality modality = Modality.OPEN;
        ClassKind classKind = ClassKind.CLASS;
        List listK = y71.k();
        yt9 yt9Var = yt9.a;
        super(qq6VarI, by6Var, modality, classKind, listK, yt9Var, false, LockBasedStorageManager.e);
        nw0 nw0VarI1 = nw0.i1(this, md.u1.b(), true, yt9Var);
        nw0VarI1.l1(y71.k(), b92.d);
        y45.i(nw0VarI1, "create(this, Annotations…          )\n            }");
        ErrorScopeKind errorScopeKind = ErrorScopeKind.SCOPE_FOR_ERROR_CLASS;
        String string = nw0VarI1.getName().toString();
        y45.i(string, "errorConstructor.name.toString()");
        MemberScope memberScopeB = id3.b(errorScopeKind, string, "");
        ErrorTypeKind errorTypeKind = ErrorTypeKind.ERROR_CLASS;
        nw0VarI1.b1(new gd3(id3Var.e(errorTypeKind, new String[0]), memberScopeB, errorTypeKind, null, false, new String[0], 24, null));
        F0(memberScopeB, xe9.d(nw0VarI1), nw0VarI1);
    }

    @Override
    public qw0 c(TypeSubstitutor typeSubstitutor) {
        y45.j(typeSubstitutor, "substitutor");
        return this;
    }

    @Override
    public MemberScope Q(l lVar, c cVar) {
        y45.j(lVar, "typeSubstitution");
        y45.j(cVar, "kotlinTypeRefiner");
        ErrorScopeKind errorScopeKind = ErrorScopeKind.SCOPE_FOR_ERROR_CLASS;
        String string = getName().toString();
        y45.i(string, "name.toString()");
        return id3.b(errorScopeKind, string, lVar.toString());
    }

    @Override
    public String toString() {
        String strB = getName().b();
        y45.i(strB, "name.asString()");
        return strB;
    }
}
