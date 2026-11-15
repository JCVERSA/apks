package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.SubstitutingScope;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.l;
import kotlin.reflect.jvm.internal.impl.types.n;

public class qj5 extends jq6 {
    public final jq6 c;
    public final TypeSubstitutor d;
    public TypeSubstitutor e;
    public List f;
    public List g;
    public sbb h;

    public class a implements e74 {
        public a() {
        }

        @Override
        public Boolean invoke(hcb hcbVar) {
            return Boolean.valueOf(!hcbVar.A());
        }
    }

    public class b implements e74 {
        public b() {
        }

        @Override
        public sm9 invoke(sm9 sm9Var) {
            return qj5.this.H0(sm9Var);
        }
    }

    public qj5(jq6 jq6Var, TypeSubstitutor typeSubstitutor) {
        this.c = jq6Var;
        this.d = typeSubstitutor;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0051  */
    /* JADX WARN: Code duplicated, block: B:35:0x0056  */
    /* JADX WARN: Code duplicated, block: B:36:0x005b  */
    private static void l0(int i) {
        String str = (i == 2 || i == 3 || i == 5 || i == 6 || i == 8 || i == 10 || i == 13 || i == 23) ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[(i == 2 || i == 3 || i == 5 || i == 6 || i == 8 || i == 10 || i == 13 || i == 23) ? 3 : 2];
        if (i == 2) {
            objArr[0] = "typeArguments";
        } else if (i == 3) {
            objArr[0] = "kotlinTypeRefiner";
        } else if (i == 5) {
            objArr[0] = "typeSubstitution";
        } else if (i == 6) {
            objArr[0] = "kotlinTypeRefiner";
        } else if (i == 8) {
            objArr[0] = "typeArguments";
        } else if (i == 10) {
            objArr[0] = "typeSubstitution";
        } else if (i == 13) {
            objArr[0] = "kotlinTypeRefiner";
        } else if (i != 23) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazySubstitutingClassDescriptor";
        } else {
            objArr[0] = "substitutor";
        }
        switch (i) {
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 10:
            case 13:
            case 23:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazySubstitutingClassDescriptor";
                break;
            case 4:
            case 7:
            case 9:
            case 11:
                objArr[1] = "getMemberScope";
                break;
            case 12:
            case 14:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 15:
                objArr[1] = "getStaticScope";
                break;
            case 16:
                objArr[1] = "getDefaultType";
                break;
            case 17:
                objArr[1] = "getContextReceivers";
                break;
            case 18:
                objArr[1] = "getConstructors";
                break;
            case 19:
                objArr[1] = "getAnnotations";
                break;
            case 20:
                objArr[1] = "getName";
                break;
            case 21:
                objArr[1] = "getOriginal";
                break;
            case 22:
                objArr[1] = "getContainingDeclaration";
                break;
            case 24:
                objArr[1] = "substitute";
                break;
            case 25:
                objArr[1] = "getKind";
                break;
            case 26:
                objArr[1] = "getModality";
                break;
            case 27:
                objArr[1] = "getVisibility";
                break;
            case 28:
                objArr[1] = "getUnsubstitutedInnerClassesScope";
                break;
            case 29:
                objArr[1] = "getSource";
                break;
            case 30:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 31:
                objArr[1] = "getSealedSubclasses";
                break;
            default:
                objArr[1] = "getTypeConstructor";
                break;
        }
        if (i == 2 || i == 3 || i == 5 || i == 6 || i == 8 || i == 10) {
            objArr[2] = "getMemberScope";
        } else if (i == 13) {
            objArr[2] = "getUnsubstitutedMemberScope";
        } else if (i == 23) {
            objArr[2] = "substitute";
        }
        String str2 = String.format(str, objArr);
        if (i != 2 && i != 3 && i != 5 && i != 6 && i != 8 && i != 10 && i != 13 && i != 23) {
            throw new IllegalStateException(str2);
        }
        throw new IllegalArgumentException(str2);
    }

    @Override
    public MemberScope D() {
        MemberScope memberScopeD = this.c.D();
        if (memberScopeD == null) {
            l0(28);
        }
        return memberScopeD;
    }

    @Override
    public MemberScope E() {
        MemberScope memberScopeD0 = d0(DescriptorUtilsKt.o(y82.g(this.c)));
        if (memberScopeD0 == null) {
            l0(12);
        }
        return memberScopeD0;
    }

    @Override
    public boolean E0() {
        return this.c.E0();
    }

    public final TypeSubstitutor F0() {
        if (this.e == null) {
            if (this.d.k()) {
                this.e = this.d;
            } else {
                List parameters = this.c.m().getParameters();
                this.f = new ArrayList(parameters.size());
                this.e = w82.b(parameters, this.d.j(), this, this.f);
                this.g = i81.k0(this.f, new a());
            }
        }
        return this.e;
    }

    @Override
    public qw0 c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            l0(23);
        }
        return typeSubstitutor.k() ? this : new qj5(this, TypeSubstitutor.h(typeSubstitutor.j(), F0().j()));
    }

    public final sm9 H0(sm9 sm9Var) {
        return (sm9Var == null || this.d.k()) ? sm9Var : (sm9) F0().p(sm9Var, Variance.INVARIANT);
    }

    @Override
    public MemberScope Q(l lVar, c cVar) {
        if (lVar == null) {
            l0(5);
        }
        if (cVar == null) {
            l0(6);
        }
        MemberScope memberScopeQ = this.c.Q(lVar, cVar);
        if (!this.d.k()) {
            return new SubstitutingScope(memberScopeQ, F0());
        }
        if (memberScopeQ == null) {
            l0(7);
        }
        return memberScopeQ;
    }

    @Override
    public ro8 R() {
        throw new UnsupportedOperationException();
    }

    @Override
    public Collection T() {
        Collection collectionT = this.c.T();
        if (collectionT == null) {
            l0(31);
        }
        return collectionT;
    }

    @Override
    public xt1 b() {
        xt1 xt1VarB = this.c.b();
        if (xt1VarB == null) {
            l0(22);
        }
        return xt1VarB;
    }

    @Override
    public inb c0() {
        inb inbVarC0 = this.c.c0();
        if (inbVarC0 == null) {
            return null;
        }
        return inbVarC0.b(new b());
    }

    @Override
    public MemberScope d0(c cVar) {
        if (cVar == null) {
            l0(13);
        }
        MemberScope memberScopeD0 = this.c.d0(cVar);
        if (!this.d.k()) {
            return new SubstitutingScope(memberScopeD0, F0());
        }
        if (memberScopeD0 == null) {
            l0(14);
        }
        return memberScopeD0;
    }

    @Override
    public boolean f0() {
        return this.c.f0();
    }

    @Override
    public boolean g() {
        return this.c.g();
    }

    @Override
    public List g0() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            l0(17);
        }
        return listEmptyList;
    }

    @Override
    public md getAnnotations() {
        md annotations = this.c.getAnnotations();
        if (annotations == null) {
            l0(19);
        }
        return annotations;
    }

    @Override
    public ClassKind getKind() {
        ClassKind kind = this.c.getKind();
        if (kind == null) {
            l0(25);
        }
        return kind;
    }

    @Override
    public by6 getName() {
        by6 name = this.c.getName();
        if (name == null) {
            l0(20);
        }
        return name;
    }

    @Override
    public yt9 getSource() {
        yt9 yt9Var = yt9.a;
        if (yt9Var == null) {
            l0(29);
        }
        return yt9Var;
    }

    @Override
    public c92 getVisibility() {
        c92 visibility = this.c.getVisibility();
        if (visibility == null) {
            l0(27);
        }
        return visibility;
    }

    @Override
    public boolean h0() {
        return this.c.h0();
    }

    @Override
    public boolean isExternal() {
        return this.c.isExternal();
    }

    @Override
    public boolean isInline() {
        return this.c.isInline();
    }

    @Override
    public Modality j() {
        Modality modalityJ = this.c.j();
        if (modalityJ == null) {
            l0(26);
        }
        return modalityJ;
    }

    @Override
    public boolean j0() {
        return this.c.j0();
    }

    @Override
    public sbb m() {
        sbb sbbVarM = this.c.m();
        if (this.d.k()) {
            if (sbbVarM == null) {
                l0(0);
            }
            return sbbVarM;
        }
        if (this.h == null) {
            TypeSubstitutor typeSubstitutorF0 = F0();
            Collection collectionK = sbbVarM.k();
            ArrayList arrayList = new ArrayList(collectionK.size());
            Iterator it = collectionK.iterator();
            while (it.hasNext()) {
                arrayList.add(typeSubstitutorF0.p((eh5) it.next(), Variance.INVARIANT));
            }
            this.h = new fx0(this, this.f, arrayList, LockBasedStorageManager.e);
        }
        sbb sbbVar = this.h;
        if (sbbVar == null) {
            l0(1);
        }
        return sbbVar;
    }

    @Override
    public boolean m0() {
        return this.c.m0();
    }

    @Override
    public Collection n() {
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.b> collectionN = this.c.n();
        ArrayList arrayList = new ArrayList(collectionN.size());
        for (kotlin.reflect.jvm.internal.impl.descriptors.b bVar : collectionN) {
            arrayList.add(((kotlin.reflect.jvm.internal.impl.descriptors.b) bVar.l().g(bVar.a()).r(bVar.j()).n(bVar.getVisibility()).s(bVar.getKind()).h(false).build()).c(F0()));
        }
        return arrayList;
    }

    @Override
    public MemberScope n0() {
        MemberScope memberScopeN0 = this.c.n0();
        if (memberScopeN0 == null) {
            l0(15);
        }
        return memberScopeN0;
    }

    @Override
    public qw0 o0() {
        return this.c.o0();
    }

    @Override
    public sm9 q() {
        sm9 sm9VarK = KotlinTypeFactory.k(kotlin.reflect.jvm.internal.impl.types.c.a.a(getAnnotations(), null, null), m(), n.g(m().getParameters()), false, E());
        if (sm9VarK == null) {
            l0(16);
        }
        return sm9VarK;
    }

    @Override
    public Object q0(bu1 bu1Var, Object obj) {
        return bu1Var.h(this, obj);
    }

    @Override
    public List r() {
        F0();
        List list = this.g;
        if (list == null) {
            l0(30);
        }
        return list;
    }

    @Override
    public boolean s() {
        return this.c.s();
    }

    @Override
    public MemberScope t0(l lVar) {
        if (lVar == null) {
            l0(10);
        }
        MemberScope memberScopeQ = Q(lVar, DescriptorUtilsKt.o(y82.g(this)));
        if (memberScopeQ == null) {
            l0(11);
        }
        return memberScopeQ;
    }

    @Override
    public kotlin.reflect.jvm.internal.impl.descriptors.b w() {
        return this.c.w();
    }

    @Override
    public qw0 a() {
        qw0 qw0VarA = this.c.a();
        if (qw0VarA == null) {
            l0(21);
        }
        return qw0VarA;
    }
}
