package defpackage;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.checker.c;

public class tw0 extends rw0 {
    public final Modality j;
    public final ClassKind k;
    public final sbb l;
    public MemberScope m;
    public Set n;
    public b o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tw0(xt1 xt1Var, by6 by6Var, Modality modality, ClassKind classKind, Collection collection, yt9 yt9Var, boolean z, vx9 vx9Var) {
        super(vx9Var, xt1Var, by6Var, yt9Var, z);
        if (xt1Var == null) {
            l0(0);
        }
        if (by6Var == null) {
            l0(1);
        }
        if (modality == null) {
            l0(2);
        }
        if (classKind == null) {
            l0(3);
        }
        if (collection == null) {
            l0(4);
        }
        if (yt9Var == null) {
            l0(5);
        }
        if (vx9Var == null) {
            l0(6);
        }
        this.j = modality;
        this.k = classKind;
        this.l = new fx0(this, Collections.emptyList(), collection, vx9Var);
    }

    private static void l0(int i) {
        String str;
        int i2;
        switch (i) {
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 12:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                i2 = 2;
                break;
            case 12:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "name";
                break;
            case 2:
                objArr[0] = "modality";
                break;
            case 3:
                objArr[0] = "kind";
                break;
            case 4:
                objArr[0] = "supertypes";
                break;
            case 5:
                objArr[0] = "source";
                break;
            case 6:
                objArr[0] = "storageManager";
                break;
            case 7:
                objArr[0] = "unsubstitutedMemberScope";
                break;
            case 8:
                objArr[0] = "constructors";
                break;
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl";
                break;
            case 12:
                objArr[0] = "kotlinTypeRefiner";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 9:
                objArr[1] = "getAnnotations";
                break;
            case 10:
                objArr[1] = "getTypeConstructor";
                break;
            case 11:
                objArr[1] = "getConstructors";
                break;
            case 12:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl";
                break;
            case 13:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 14:
                objArr[1] = "getStaticScope";
                break;
            case 15:
                objArr[1] = "getKind";
                break;
            case 16:
                objArr[1] = "getModality";
                break;
            case 17:
                objArr[1] = "getVisibility";
                break;
            case 18:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 19:
                objArr[1] = "getSealedSubclasses";
                break;
        }
        switch (i) {
            case 7:
            case 8:
                objArr[2] = "initialize";
                break;
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                break;
            case 12:
                objArr[2] = "getUnsubstitutedMemberScope";
                break;
            default:
                objArr[2] = MethodDecl.initName;
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                throw new IllegalStateException(str2);
            case 12:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override
    public boolean E0() {
        return false;
    }

    public final void F0(MemberScope memberScope, Set set, b bVar) {
        if (memberScope == null) {
            l0(7);
        }
        if (set == null) {
            l0(8);
        }
        this.m = memberScope;
        this.n = set;
        this.o = bVar;
    }

    @Override
    public Collection T() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            l0(19);
        }
        return listEmptyList;
    }

    @Override
    public inb c0() {
        return null;
    }

    @Override
    public MemberScope d0(c cVar) {
        if (cVar == null) {
            l0(12);
        }
        MemberScope memberScope = this.m;
        if (memberScope == null) {
            l0(13);
        }
        return memberScope;
    }

    @Override
    public boolean f0() {
        return false;
    }

    @Override
    public boolean g() {
        return false;
    }

    @Override
    public md getAnnotations() {
        md mdVarB = md.u1.b();
        if (mdVarB == null) {
            l0(9);
        }
        return mdVarB;
    }

    @Override
    public ClassKind getKind() {
        ClassKind classKind = this.k;
        if (classKind == null) {
            l0(15);
        }
        return classKind;
    }

    @Override
    public c92 getVisibility() {
        c92 c92Var = b92.e;
        if (c92Var == null) {
            l0(17);
        }
        return c92Var;
    }

    @Override
    public boolean h0() {
        return false;
    }

    @Override
    public boolean isInline() {
        return false;
    }

    @Override
    public Modality j() {
        Modality modality = this.j;
        if (modality == null) {
            l0(16);
        }
        return modality;
    }

    @Override
    public boolean j0() {
        return false;
    }

    @Override
    public sbb m() {
        sbb sbbVar = this.l;
        if (sbbVar == null) {
            l0(10);
        }
        return sbbVar;
    }

    @Override
    public boolean m0() {
        return false;
    }

    @Override
    public Collection n() {
        Set set = this.n;
        if (set == null) {
            l0(11);
        }
        return set;
    }

    @Override
    public MemberScope n0() {
        MemberScope.a aVar = MemberScope.a.b;
        if (aVar == null) {
            l0(14);
        }
        return aVar;
    }

    @Override
    public qw0 o0() {
        return null;
    }

    @Override
    public List r() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            l0(18);
        }
        return listEmptyList;
    }

    @Override
    public boolean s() {
        return false;
    }

    public String toString() {
        return "class " + getName();
    }

    @Override
    public b w() {
        return this.o;
    }
}
