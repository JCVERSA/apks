package defpackage;

import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.j;

public final class gd3 extends sm9 {
    public final sbb c;
    public final MemberScope d;
    public final ErrorTypeKind e;
    public final List f;
    public final boolean g;
    public final String[] h;
    public final String i;

    public gd3(sbb sbbVar, MemberScope memberScope, ErrorTypeKind errorTypeKind, List list, boolean z, String[] strArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(sbbVar, memberScope, errorTypeKind, (i & 8) != 0 ? y71.k() : list, (i & 16) != 0 ? false : z, strArr);
    }

    @Override
    public List G0() {
        return this.f;
    }

    @Override
    public j H0() {
        return j.c.h();
    }

    @Override
    public sbb I0() {
        return this.c;
    }

    @Override
    public boolean J0() {
        return this.g;
    }

    @Override
    public sm9 M0(boolean z) {
        sbb sbbVarI0 = I0();
        MemberScope memberScopeP = p();
        ErrorTypeKind errorTypeKind = this.e;
        List listG0 = G0();
        String[] strArr = this.h;
        return new gd3(sbbVarI0, memberScopeP, errorTypeKind, listG0, z, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    @Override
    public sm9 O0(j jVar) {
        y45.j(jVar, "newAttributes");
        return this;
    }

    public final String R0() {
        return this.i;
    }

    public final ErrorTypeKind S0() {
        return this.e;
    }

    @Override
    public gd3 S0(c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        return this;
    }

    public final gd3 U0(List list) {
        y45.j(list, "newArguments");
        sbb sbbVarI0 = I0();
        MemberScope memberScopeP = p();
        ErrorTypeKind errorTypeKind = this.e;
        boolean zJ0 = J0();
        String[] strArr = this.h;
        return new gd3(sbbVarI0, memberScopeP, errorTypeKind, list, zJ0, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    @Override
    public MemberScope p() {
        return this.d;
    }

    public gd3(sbb sbbVar, MemberScope memberScope, ErrorTypeKind errorTypeKind, List list, boolean z, String... strArr) {
        y45.j(sbbVar, "constructor");
        y45.j(memberScope, "memberScope");
        y45.j(errorTypeKind, "kind");
        y45.j(list, "arguments");
        y45.j(strArr, "formatParams");
        this.c = sbbVar;
        this.d = memberScope;
        this.e = errorTypeKind;
        this.f = list;
        this.g = z;
        this.h = strArr;
        hz9 hz9Var = hz9.a;
        String debugMessage = errorTypeKind.getDebugMessage();
        Object[] objArrCopyOf = Arrays.copyOf(strArr, strArr.length);
        String str = String.format(debugMessage, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
        y45.i(str, "format(format, *args)");
        this.i = str;
    }
}
