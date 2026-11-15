package defpackage;

import java.util.Collections;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.SubstitutingScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.l;
import kotlin.reflect.jvm.internal.impl.types.n;

public abstract class o2 extends jq6 {
    public final by6 c;
    public final x17 d;
    public final x17 e;
    public final x17 f;

    public class a implements c74 {

        public class C0427a implements e74 {
            public C0427a() {
            }

            @Override
            public sm9 invoke(kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
                px0 px0VarF = cVar.f(o2.this);
                if (px0VarF == null) {
                    return (sm9) o2.this.d.invoke();
                }
                if (px0VarF instanceof ebb) {
                    return KotlinTypeFactory.b((ebb) px0VarF, n.g(px0VarF.m().getParameters()));
                }
                return px0VarF instanceof jq6 ? n.v(px0VarF.m().a(cVar), ((jq6) px0VarF).d0(cVar), this) : px0VarF.q();
            }
        }

        public a() {
        }

        @Override
        public sm9 invoke() {
            o2 o2Var = o2.this;
            return n.u(o2Var, o2Var.E(), new C0427a());
        }
    }

    public class b implements c74 {
        public b() {
        }

        @Override
        public MemberScope invoke() {
            return new k05(o2.this.E());
        }
    }

    public class c implements c74 {
        public c() {
        }

        @Override
        public ro8 invoke() {
            return new aj5(o2.this);
        }
    }

    public o2(vx9 vx9Var, by6 by6Var) {
        if (vx9Var == null) {
            l0(0);
        }
        if (by6Var == null) {
            l0(1);
        }
        this.c = by6Var;
        this.d = vx9Var.c(new a());
        this.e = vx9Var.c(new b());
        this.f = vx9Var.c(new c());
    }

    private static void l0(int i) {
        String str = (i == 2 || i == 3 || i == 4 || i == 5 || i == 6 || i == 9 || i == 12 || i == 14 || i == 16 || i == 17 || i == 19 || i == 20) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 2 || i == 3 || i == 4 || i == 5 || i == 6 || i == 9 || i == 12 || i == 14 || i == 16 || i == 17 || i == 19 || i == 20) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "name";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            case 17:
            case 19:
            case 20:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor";
                break;
            case 7:
            case 13:
                objArr[0] = "typeArguments";
                break;
            case 8:
            case 11:
                objArr[0] = "kotlinTypeRefiner";
                break;
            case 10:
            case 15:
                objArr[0] = "typeSubstitution";
                break;
            case 18:
                objArr[0] = "substitutor";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        if (i == 2) {
            objArr[1] = "getName";
        } else if (i == 3) {
            objArr[1] = "getOriginal";
        } else if (i == 4) {
            objArr[1] = "getUnsubstitutedInnerClassesScope";
        } else if (i == 5) {
            objArr[1] = "getThisAsReceiverParameter";
        } else if (i == 6) {
            objArr[1] = "getContextReceivers";
        } else if (i == 9 || i == 12 || i == 14 || i == 16) {
            objArr[1] = "getMemberScope";
        } else if (i == 17) {
            objArr[1] = "getUnsubstitutedMemberScope";
        } else if (i == 19) {
            objArr[1] = "substitute";
        } else if (i != 20) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor";
        } else {
            objArr[1] = "getDefaultType";
        }
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            case 17:
            case 19:
            case 20:
                break;
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
                objArr[2] = "getMemberScope";
                break;
            case 18:
                objArr[2] = "substitute";
                break;
            default:
                objArr[2] = MethodDecl.initName;
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 2 && i != 3 && i != 4 && i != 5 && i != 6 && i != 9 && i != 12 && i != 14 && i != 16 && i != 17 && i != 19 && i != 20) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override
    public qw0 c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            l0(18);
        }
        return typeSubstitutor.k() ? this : new qj5(this, typeSubstitutor);
    }

    @Override
    public MemberScope D() {
        MemberScope memberScope = (MemberScope) this.e.invoke();
        if (memberScope == null) {
            l0(4);
        }
        return memberScope;
    }

    @Override
    public MemberScope E() {
        MemberScope memberScopeD0 = d0(DescriptorUtilsKt.o(y82.g(this)));
        if (memberScopeD0 == null) {
            l0(17);
        }
        return memberScopeD0;
    }

    @Override
    public MemberScope Q(l lVar, kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
        if (lVar == null) {
            l0(10);
        }
        if (cVar == null) {
            l0(11);
        }
        if (!lVar.f()) {
            return new SubstitutingScope(d0(cVar), TypeSubstitutor.g(lVar));
        }
        MemberScope memberScopeD0 = d0(cVar);
        if (memberScopeD0 == null) {
            l0(12);
        }
        return memberScopeD0;
    }

    @Override
    public ro8 R() {
        ro8 ro8Var = (ro8) this.f.invoke();
        if (ro8Var == null) {
            l0(5);
        }
        return ro8Var;
    }

    @Override
    public List g0() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            l0(6);
        }
        return listEmptyList;
    }

    @Override
    public by6 getName() {
        by6 by6Var = this.c;
        if (by6Var == null) {
            l0(2);
        }
        return by6Var;
    }

    @Override
    public sm9 q() {
        sm9 sm9Var = (sm9) this.d.invoke();
        if (sm9Var == null) {
            l0(20);
        }
        return sm9Var;
    }

    @Override
    public Object q0(bu1 bu1Var, Object obj) {
        return bu1Var.h(this, obj);
    }

    @Override
    public MemberScope t0(l lVar) {
        if (lVar == null) {
            l0(15);
        }
        MemberScope memberScopeQ = Q(lVar, DescriptorUtilsKt.o(y82.g(this)));
        if (memberScopeQ == null) {
            l0(16);
        }
        return memberScopeQ;
    }

    @Override
    public qw0 a() {
        return this;
    }
}
