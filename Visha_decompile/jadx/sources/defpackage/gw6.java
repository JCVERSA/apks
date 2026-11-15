package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.checker.c;

public class gw6 extends rw0 {
    public final ClassKind j;
    public final boolean k;
    public Modality l;
    public c92 m;
    public sbb n;
    public List o;
    public final Collection p;
    public final vx9 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gw6(xt1 xt1Var, ClassKind classKind, boolean z, boolean z2, by6 by6Var, yt9 yt9Var, vx9 vx9Var) {
        super(vx9Var, xt1Var, by6Var, yt9Var, z2);
        if (xt1Var == null) {
            l0(0);
        }
        if (classKind == null) {
            l0(1);
        }
        if (by6Var == null) {
            l0(2);
        }
        if (yt9Var == null) {
            l0(3);
        }
        if (vx9Var == null) {
            l0(4);
        }
        this.p = new ArrayList();
        this.q = vx9Var;
        this.j = classKind;
        this.k = z;
    }

    private static void l0(int i) {
        String str;
        int i2;
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                i2 = 2;
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "kind";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = "source";
                break;
            case 4:
                objArr[0] = "storageManager";
                break;
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor";
                break;
            case 6:
                objArr[0] = "modality";
                break;
            case 9:
                objArr[0] = "visibility";
                break;
            case 12:
                objArr[0] = "supertype";
                break;
            case 14:
                objArr[0] = "typeParameters";
                break;
            case 16:
                objArr[0] = "kotlinTypeRefiner";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 5:
                objArr[1] = "getAnnotations";
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor";
                break;
            case 7:
                objArr[1] = "getModality";
                break;
            case 8:
                objArr[1] = "getKind";
                break;
            case 10:
                objArr[1] = "getVisibility";
                break;
            case 11:
                objArr[1] = "getTypeConstructor";
                break;
            case 13:
                objArr[1] = "getConstructors";
                break;
            case 15:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 17:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 18:
                objArr[1] = "getStaticScope";
                break;
            case 19:
                objArr[1] = "getSealedSubclasses";
                break;
        }
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                break;
            case 6:
                objArr[2] = "setModality";
                break;
            case 9:
                objArr[2] = "setVisibility";
                break;
            case 12:
                objArr[2] = "addSupertype";
                break;
            case 14:
                objArr[2] = "setTypeParameterDescriptors";
                break;
            case 16:
                objArr[2] = "getUnsubstitutedMemberScope";
                break;
            default:
                objArr[2] = MethodDecl.initName;
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                throw new IllegalStateException(str2);
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override
    public boolean E0() {
        return false;
    }

    public void F0() {
        this.n = new fx0(this, this.o, this.p, this.q);
        Iterator it = n().iterator();
        while (it.hasNext()) {
            ((nw0) ((e) it.next())).b1(q());
        }
    }

    @Override
    public Set n() {
        Set setEmptySet = Collections.emptySet();
        if (setEmptySet == null) {
            l0(13);
        }
        return setEmptySet;
    }

    public void H0(Modality modality) {
        if (modality == null) {
            l0(6);
        }
        this.l = modality;
    }

    public void I0(List list) {
        if (list == null) {
            l0(14);
        }
        if (this.o == null) {
            this.o = new ArrayList(list);
            return;
        }
        throw new IllegalStateException("Type parameters are already set for " + getName());
    }

    public void J0(c92 c92Var) {
        if (c92Var == null) {
            l0(9);
        }
        this.m = c92Var;
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
            l0(16);
        }
        MemberScope.a aVar = MemberScope.a.b;
        if (aVar == null) {
            l0(17);
        }
        return aVar;
    }

    @Override
    public boolean f0() {
        return false;
    }

    @Override
    public boolean g() {
        return this.k;
    }

    @Override
    public md getAnnotations() {
        md mdVarB = md.u1.b();
        if (mdVarB == null) {
            l0(5);
        }
        return mdVarB;
    }

    @Override
    public ClassKind getKind() {
        ClassKind classKind = this.j;
        if (classKind == null) {
            l0(8);
        }
        return classKind;
    }

    @Override
    public c92 getVisibility() {
        c92 c92Var = this.m;
        if (c92Var == null) {
            l0(10);
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
        Modality modality = this.l;
        if (modality == null) {
            l0(7);
        }
        return modality;
    }

    @Override
    public boolean j0() {
        return false;
    }

    @Override
    public sbb m() {
        sbb sbbVar = this.n;
        if (sbbVar == null) {
            l0(11);
        }
        return sbbVar;
    }

    @Override
    public boolean m0() {
        return false;
    }

    @Override
    public MemberScope n0() {
        MemberScope.a aVar = MemberScope.a.b;
        if (aVar == null) {
            l0(18);
        }
        return aVar;
    }

    @Override
    public qw0 o0() {
        return null;
    }

    @Override
    public List r() {
        List list = this.o;
        if (list == null) {
            l0(15);
        }
        return list;
    }

    @Override
    public boolean s() {
        return false;
    }

    public String toString() {
        return yt1.d0(this);
    }

    @Override
    public b w() {
        return null;
    }
}
