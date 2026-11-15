package defpackage;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.c;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.a;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

public class nw0 extends a implements b {
    public final boolean F;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nw0(qw0 qw0Var, c cVar, md mdVar, boolean z, CallableMemberDescriptor.Kind kind, yt9 yt9Var) {
        super(qw0Var, cVar, mdVar, su9.j, kind, yt9Var);
        if (qw0Var == null) {
            Q(0);
        }
        if (mdVar == null) {
            Q(1);
        }
        if (kind == null) {
            Q(2);
        }
        if (yt9Var == null) {
            Q(3);
        }
        this.F = z;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000e  */
    private static void Q(int i) {
        String str;
        int i2;
        if (i != 21 && i != 27) {
            switch (i) {
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                    str = "@NotNull method %s.%s must not return null";
                    break;
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i != 21 && i != 27) {
            switch (i) {
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                    i2 = 2;
                    break;
                default:
                    i2 = 3;
                    break;
            }
        } else {
            i2 = 2;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 5:
            case 8:
            case 25:
                objArr[0] = "annotations";
                break;
            case 2:
            case 24:
                objArr[0] = "kind";
                break;
            case 3:
            case 6:
            case 9:
            case 26:
                objArr[0] = "source";
                break;
            case 4:
            case 7:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 10:
            case 13:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 11:
            case 14:
                objArr[0] = "visibility";
                break;
            case 12:
                objArr[0] = "typeParameterDescriptors";
                break;
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 27:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl";
                break;
            case 20:
                objArr[0] = "originalSubstitutor";
                break;
            case 22:
                objArr[0] = "overriddenDescriptors";
                break;
            case 23:
                objArr[0] = "newOwner";
                break;
        }
        if (i == 21) {
            objArr[1] = "getOverriddenDescriptors";
        } else if (i != 27) {
            switch (i) {
                case 15:
                case 16:
                    objArr[1] = "calculateContextReceiverParameters";
                    break;
                case 17:
                    objArr[1] = "getContainingDeclaration";
                    break;
                case 18:
                    objArr[1] = "getConstructedClass";
                    break;
                case 19:
                    objArr[1] = "getOriginal";
                    break;
                default:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl";
                    break;
            }
        } else {
            objArr[1] = "copy";
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
                objArr[2] = "create";
                break;
            case 7:
            case 8:
            case 9:
                objArr[2] = "createSynthesized";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
                objArr[2] = "initialize";
                break;
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 27:
                break;
            case 20:
                objArr[2] = "substitute";
                break;
            case 22:
                objArr[2] = "setOverriddenDescriptors";
                break;
            case 23:
            case 24:
            case 25:
            case 26:
                objArr[2] = "createSubstitutedCopy";
                break;
            default:
                objArr[2] = MethodDecl.initName;
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 21 && i != 27) {
            switch (i) {
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                    break;
                default:
                    throw new IllegalArgumentException(str2);
            }
        }
        throw new IllegalStateException(str2);
    }

    public static nw0 i1(qw0 qw0Var, md mdVar, boolean z, yt9 yt9Var) {
        if (qw0Var == null) {
            Q(4);
        }
        if (mdVar == null) {
            Q(5);
        }
        if (yt9Var == null) {
            Q(6);
        }
        return new nw0(qw0Var, null, mdVar, z, CallableMemberDescriptor.Kind.DECLARATION, yt9Var);
    }

    @Override
    public qw0 F() {
        qw0 qw0VarB = b();
        if (qw0VarB == null) {
            Q(18);
        }
        return qw0VarB;
    }

    @Override
    public void O(Collection collection) {
        if (collection == null) {
            Q(22);
        }
    }

    @Override
    public Collection e() {
        Set setEmptySet = Collections.emptySet();
        if (setEmptySet == null) {
            Q(21);
        }
        return setEmptySet;
    }

    public final List f1() {
        qw0 qw0VarB = b();
        if (qw0VarB.g0().isEmpty()) {
            List listEmptyList = Collections.emptyList();
            if (listEmptyList == null) {
                Q(16);
            }
            return listEmptyList;
        }
        List listG0 = qw0VarB.g0();
        if (listG0 == null) {
            Q(15);
        }
        return listG0;
    }

    public ro8 g1() {
        qw0 qw0VarB = b();
        if (!qw0VarB.g()) {
            return null;
        }
        xt1 xt1VarB = qw0VarB.b();
        if (xt1VarB instanceof qw0) {
            return ((qw0) xt1VarB).R();
        }
        return null;
    }

    @Override
    public b J(xt1 xt1Var, Modality modality, c92 c92Var, CallableMemberDescriptor.Kind kind, boolean z) {
        b bVar = (b) super.F0(xt1Var, modality, c92Var, kind, z);
        if (bVar == null) {
            Q(27);
        }
        return bVar;
    }

    @Override
    public boolean i0() {
        return this.F;
    }

    @Override
    public nw0 G0(xt1 xt1Var, e eVar, CallableMemberDescriptor.Kind kind, by6 by6Var, md mdVar, yt9 yt9Var) {
        if (xt1Var == null) {
            Q(23);
        }
        if (kind == null) {
            Q(24);
        }
        if (mdVar == null) {
            Q(25);
        }
        if (yt9Var == null) {
            Q(26);
        }
        CallableMemberDescriptor.Kind kind2 = CallableMemberDescriptor.Kind.DECLARATION;
        if (kind == kind2 || kind == CallableMemberDescriptor.Kind.SYNTHESIZED) {
            return new nw0((qw0) xt1Var, this, mdVar, this.F, kind2, yt9Var);
        }
        throw new IllegalStateException("Attempt at creating a constructor that is not a declaration: \ncopy from: " + this + "\nnewOwner: " + xt1Var + "\nkind: " + kind);
    }

    @Override
    public qw0 b() {
        qw0 qw0Var = (qw0) super.b();
        if (qw0Var == null) {
            Q(17);
        }
        return qw0Var;
    }

    public nw0 l1(List list, c92 c92Var) {
        if (list == null) {
            Q(13);
        }
        if (c92Var == null) {
            Q(14);
        }
        m1(list, c92Var, b().r());
        return this;
    }

    public nw0 m1(List list, c92 c92Var, List list2) {
        if (list == null) {
            Q(10);
        }
        if (c92Var == null) {
            Q(11);
        }
        if (list2 == null) {
            Q(12);
        }
        super.M0(null, g1(), f1(), list2, list, null, Modality.FINAL, c92Var);
        return this;
    }

    @Override
    public Object q0(bu1 bu1Var, Object obj) {
        return bu1Var.d(this, obj);
    }

    @Override
    public b c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            Q(20);
        }
        return (b) super.c(typeSubstitutor);
    }

    @Override
    public b a() {
        b bVar = (b) super.a();
        if (bVar == null) {
            Q(19);
        }
        return bVar;
    }
}
