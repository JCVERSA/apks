package defpackage;

import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.e;

public class t65 extends nw0 implements r65 {
    public Boolean G;
    public Boolean H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t65(qw0 qw0Var, t65 t65Var, md mdVar, boolean z, CallableMemberDescriptor.Kind kind, yt9 yt9Var) {
        super(qw0Var, t65Var, mdVar, z, kind, yt9Var);
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
        this.G = null;
        this.H = null;
    }

    private static void Q(int i) {
        String str = (i == 11 || i == 18) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 11 || i == 18) ? 2 : 3];
        switch (i) {
            case 1:
            case 5:
            case 9:
            case 15:
                objArr[0] = "annotations";
                break;
            case 2:
            case 8:
            case 13:
                objArr[0] = "kind";
                break;
            case 3:
            case 6:
            case 10:
                objArr[0] = "source";
                break;
            case 4:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 7:
            case 12:
                objArr[0] = "newOwner";
                break;
            case 11:
            case 18:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor";
                break;
            case 14:
                objArr[0] = "sourceElement";
                break;
            case 16:
                objArr[0] = "enhancedValueParameterTypes";
                break;
            case 17:
                objArr[0] = "enhancedReturnType";
                break;
        }
        if (i == 11) {
            objArr[1] = "createSubstitutedCopy";
        } else if (i != 18) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
                objArr[2] = "createJavaConstructor";
                break;
            case 7:
            case 8:
            case 9:
            case 10:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 11:
            case 18:
                break;
            case 12:
            case 13:
            case 14:
            case 15:
                objArr[2] = "createDescriptor";
                break;
            case 16:
            case 17:
                objArr[2] = "enhance";
                break;
            default:
                objArr[2] = MethodDecl.initName;
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 11 && i != 18) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static t65 o1(qw0 qw0Var, md mdVar, boolean z, yt9 yt9Var) {
        if (qw0Var == null) {
            Q(4);
        }
        if (mdVar == null) {
            Q(5);
        }
        if (yt9Var == null) {
            Q(6);
        }
        return new t65(qw0Var, null, mdVar, z, CallableMemberDescriptor.Kind.DECLARATION, yt9Var);
    }

    @Override
    public boolean L0() {
        return this.G.booleanValue();
    }

    @Override
    public void T0(boolean z) {
        this.G = Boolean.valueOf(z);
    }

    @Override
    public void U0(boolean z) {
        this.H = Boolean.valueOf(z);
    }

    @Override
    public boolean k0() {
        return this.H.booleanValue();
    }

    public t65 n1(qw0 qw0Var, t65 t65Var, CallableMemberDescriptor.Kind kind, yt9 yt9Var, md mdVar) {
        if (qw0Var == null) {
            Q(12);
        }
        if (kind == null) {
            Q(13);
        }
        if (yt9Var == null) {
            Q(14);
        }
        if (mdVar == null) {
            Q(15);
        }
        return new t65(qw0Var, t65Var, mdVar, this.F, kind, yt9Var);
    }

    @Override
    public t65 G0(xt1 xt1Var, e eVar, CallableMemberDescriptor.Kind kind, by6 by6Var, md mdVar, yt9 yt9Var) {
        if (xt1Var == null) {
            Q(7);
        }
        if (kind == null) {
            Q(8);
        }
        if (mdVar == null) {
            Q(9);
        }
        if (yt9Var == null) {
            Q(10);
        }
        if (kind == CallableMemberDescriptor.Kind.DECLARATION || kind == CallableMemberDescriptor.Kind.SYNTHESIZED) {
            t65 t65VarN1 = n1((qw0) xt1Var, (t65) eVar, kind, yt9Var, mdVar);
            t65VarN1.T0(L0());
            t65VarN1.U0(k0());
            return t65VarN1;
        }
        throw new IllegalStateException("Attempt at creating a constructor that is not a declaration: \ncopy from: " + this + "\nnewOwner: " + xt1Var + "\nkind: " + kind);
    }

    @Override
    public t65 I(eh5 eh5Var, List list, eh5 eh5Var2, Pair pair) {
        if (list == null) {
            Q(16);
        }
        if (eh5Var2 == null) {
            Q(17);
        }
        t65 t65VarG0 = G0(b(), null, getKind(), null, getAnnotations(), getSource());
        t65VarG0.M0(eh5Var == null ? null : s82.i(t65VarG0, eh5Var, md.u1.b()), Z(), y71.k(), getTypeParameters(), dlb.a(list, f(), t65VarG0), eh5Var2, j(), getVisibility());
        if (pair != null) {
            t65VarG0.P0((a.InterfaceC0379a) pair.getFirst(), pair.getSecond());
        }
        return t65VarG0;
    }
}
