package kotlin.reflect.jvm.internal.impl.types;

import defpackage.e74;
import defpackage.ebb;
import defpackage.hcb;
import defpackage.hy3;
import defpackage.id3;
import defpackage.kq6;
import defpackage.mgb;
import defpackage.px0;
import defpackage.qw0;
import defpackage.sbb;
import defpackage.sm9;
import defpackage.um9;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind;

public final class KotlinTypeFactory {
    public static final KotlinTypeFactory a = new KotlinTypeFactory();
    public static final e74 b = new e74() {
        @Override
        public final Void invoke(kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
            y45.j(cVar, "<anonymous parameter 0>");
            return null;
        }
    };

    public static final class a {
        public final sm9 a;
        public final sbb b;

        public a(sm9 sm9Var, sbb sbbVar) {
            this.a = sm9Var;
            this.b = sbbVar;
        }

        public final sm9 a() {
            return this.a;
        }

        public final sbb b() {
            return this.b;
        }
    }

    public static final sm9 b(ebb ebbVar, List list) {
        y45.j(ebbVar, "<this>");
        y45.j(list, "arguments");
        return new g(i.a.a, false).h(h.e.a(null, ebbVar, list), j.c.h());
    }

    public static final mgb d(sm9 sm9Var, sm9 sm9Var2) {
        y45.j(sm9Var, "lowerBound");
        y45.j(sm9Var2, "upperBound");
        return y45.e(sm9Var, sm9Var2) ? sm9Var : new hy3(sm9Var, sm9Var2);
    }

    public static final sm9 e(j jVar, IntegerLiteralTypeConstructor integerLiteralTypeConstructor, boolean z) {
        y45.j(jVar, "attributes");
        y45.j(integerLiteralTypeConstructor, "constructor");
        return k(jVar, integerLiteralTypeConstructor, y71.k(), z, id3.a(ErrorScopeKind.INTEGER_LITERAL_TYPE_SCOPE, true, "unknown integer literal type"));
    }

    public static final sm9 g(j jVar, qw0 qw0Var, List list) {
        y45.j(jVar, "attributes");
        y45.j(qw0Var, "descriptor");
        y45.j(list, "arguments");
        sbb sbbVarM = qw0Var.m();
        y45.i(sbbVarM, "descriptor.typeConstructor");
        return j(jVar, sbbVarM, list, false, null, 16, null);
    }

    public static final sm9 h(j jVar, sbb sbbVar, List list, boolean z) {
        y45.j(jVar, "attributes");
        y45.j(sbbVar, "constructor");
        y45.j(list, "arguments");
        return j(jVar, sbbVar, list, z, null, 16, null);
    }

    public static final sm9 i(final j jVar, final sbb sbbVar, final List list, final boolean z, kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
        y45.j(jVar, "attributes");
        y45.j(sbbVar, "constructor");
        y45.j(list, "arguments");
        if (!jVar.isEmpty() || !list.isEmpty() || z || sbbVar.c() == null) {
            return l(jVar, sbbVar, list, z, a.c(sbbVar, list, cVar), new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override
                public final sm9 invoke(kotlin.reflect.jvm.internal.impl.types.checker.c cVar2) {
                    y45.j(cVar2, "refiner");
                    KotlinTypeFactory.a aVarF = KotlinTypeFactory.a.f(sbbVar, cVar2, list);
                    if (aVarF == null) {
                        return null;
                    }
                    sm9 sm9VarA = aVarF.a();
                    if (sm9VarA != null) {
                        return sm9VarA;
                    }
                    j jVar2 = jVar;
                    sbb sbbVarB = aVarF.b();
                    y45.g(sbbVarB);
                    return KotlinTypeFactory.i(jVar2, sbbVarB, list, z, cVar2);
                }
            });
        }
        px0 px0VarC = sbbVar.c();
        y45.g(px0VarC);
        sm9 sm9VarQ = px0VarC.q();
        y45.i(sm9VarQ, "constructor.declarationDescriptor!!.defaultType");
        return sm9VarQ;
    }

    public static sm9 j(j jVar, sbb sbbVar, List list, boolean z, kotlin.reflect.jvm.internal.impl.types.checker.c cVar, int i, Object obj) {
        if ((i & 16) != 0) {
            cVar = null;
        }
        return i(jVar, sbbVar, list, z, cVar);
    }

    public static final sm9 k(final j jVar, final sbb sbbVar, final List list, final boolean z, final MemberScope memberScope) {
        y45.j(jVar, "attributes");
        y45.j(sbbVar, "constructor");
        y45.j(list, "arguments");
        y45.j(memberScope, "memberScope");
        f fVar = new f(sbbVar, list, z, memberScope, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override
            public final sm9 invoke(kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
                y45.j(cVar, "kotlinTypeRefiner");
                KotlinTypeFactory.a aVarF = KotlinTypeFactory.a.f(sbbVar, cVar, list);
                if (aVarF == null) {
                    return null;
                }
                sm9 sm9VarA = aVarF.a();
                if (sm9VarA != null) {
                    return sm9VarA;
                }
                j jVar2 = jVar;
                sbb sbbVarB = aVarF.b();
                y45.g(sbbVarB);
                return KotlinTypeFactory.k(jVar2, sbbVarB, list, z, memberScope);
            }
        });
        return jVar.isEmpty() ? fVar : new um9(fVar, jVar);
    }

    public static final sm9 l(j jVar, sbb sbbVar, List list, boolean z, MemberScope memberScope, e74 e74Var) {
        y45.j(jVar, "attributes");
        y45.j(sbbVar, "constructor");
        y45.j(list, "arguments");
        y45.j(memberScope, "memberScope");
        y45.j(e74Var, "refinedTypeFactory");
        f fVar = new f(sbbVar, list, z, memberScope, e74Var);
        return jVar.isEmpty() ? fVar : new um9(fVar, jVar);
    }

    public final MemberScope c(sbb sbbVar, List list, kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
        px0 px0VarC = sbbVar.c();
        if (px0VarC instanceof hcb) {
            return ((hcb) px0VarC).q().p();
        }
        if (px0VarC instanceof qw0) {
            if (cVar == null) {
                cVar = DescriptorUtilsKt.o(DescriptorUtilsKt.p(px0VarC));
            }
            return list.isEmpty() ? kq6.b((qw0) px0VarC, cVar) : kq6.a((qw0) px0VarC, k.c.b(sbbVar, list), cVar);
        }
        if (px0VarC instanceof ebb) {
            ErrorScopeKind errorScopeKind = ErrorScopeKind.SCOPE_FOR_ABBREVIATION_TYPE;
            String string = ((ebb) px0VarC).getName().toString();
            y45.i(string, "descriptor.name.toString()");
            return id3.a(errorScopeKind, true, string);
        }
        if (sbbVar instanceof IntersectionTypeConstructor) {
            return ((IntersectionTypeConstructor) sbbVar).e();
        }
        throw new IllegalStateException("Unsupported classifier: " + px0VarC + " for constructor: " + sbbVar);
    }

    public final a f(sbb sbbVar, kotlin.reflect.jvm.internal.impl.types.checker.c cVar, List list) {
        px0 px0VarF;
        px0 px0VarC = sbbVar.c();
        if (px0VarC == null || (px0VarF = cVar.f(px0VarC)) == null) {
            return null;
        }
        if (px0VarF instanceof ebb) {
            return new a(b((ebb) px0VarF, list), null);
        }
        sbb sbbVarA = px0VarF.m().a(cVar);
        y45.i(sbbVarA, "descriptor.typeConstruct…refine(kotlinTypeRefiner)");
        return new a(null, sbbVarA);
    }
}
