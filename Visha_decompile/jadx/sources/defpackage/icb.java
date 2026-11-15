package defpackage;

import java.util.ArrayList;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;

public class icb extends f4 {
    public final e74 l;
    public final List m;
    public boolean n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public icb(xt1 xt1Var, md mdVar, boolean z, Variance variance, by6 by6Var, int i, yt9 yt9Var, e74 e74Var, t6a t6aVar, vx9 vx9Var) {
        super(vx9Var, xt1Var, mdVar, by6Var, variance, z, i, yt9Var, t6aVar);
        if (xt1Var == null) {
            Q(19);
        }
        if (mdVar == null) {
            Q(20);
        }
        if (variance == null) {
            Q(21);
        }
        if (by6Var == null) {
            Q(22);
        }
        if (yt9Var == null) {
            Q(23);
        }
        if (t6aVar == null) {
            Q(24);
        }
        if (vx9Var == null) {
            Q(25);
        }
        this.m = new ArrayList(1);
        this.n = false;
        this.l = e74Var;
    }

    public static icb K0(xt1 xt1Var, md mdVar, boolean z, Variance variance, by6 by6Var, int i, yt9 yt9Var, e74 e74Var, t6a t6aVar, vx9 vx9Var) {
        if (xt1Var == null) {
            Q(12);
        }
        if (mdVar == null) {
            Q(13);
        }
        if (variance == null) {
            Q(14);
        }
        if (by6Var == null) {
            Q(15);
        }
        if (yt9Var == null) {
            Q(16);
        }
        if (t6aVar == null) {
            Q(17);
        }
        if (vx9Var == null) {
            Q(18);
        }
        return new icb(xt1Var, mdVar, z, variance, by6Var, i, yt9Var, e74Var, t6aVar, vx9Var);
    }

    public static icb L0(xt1 xt1Var, md mdVar, boolean z, Variance variance, by6 by6Var, int i, yt9 yt9Var, vx9 vx9Var) {
        if (xt1Var == null) {
            Q(6);
        }
        if (mdVar == null) {
            Q(7);
        }
        if (variance == null) {
            Q(8);
        }
        if (by6Var == null) {
            Q(9);
        }
        if (yt9Var == null) {
            Q(10);
        }
        if (vx9Var == null) {
            Q(11);
        }
        return K0(xt1Var, mdVar, z, variance, by6Var, i, yt9Var, null, t6a.a.a, vx9Var);
    }

    public static hcb M0(xt1 xt1Var, md mdVar, boolean z, Variance variance, by6 by6Var, int i, vx9 vx9Var) {
        if (xt1Var == null) {
            Q(0);
        }
        if (mdVar == null) {
            Q(1);
        }
        if (variance == null) {
            Q(2);
        }
        if (by6Var == null) {
            Q(3);
        }
        if (vx9Var == null) {
            Q(4);
        }
        icb icbVarL0 = L0(xt1Var, mdVar, z, variance, by6Var, i, yt9.a, vx9Var);
        icbVarL0.H0(DescriptorUtilsKt.j(xt1Var).y());
        icbVarL0.Q0();
        return icbVarL0;
    }

    private static void Q(int i) {
        String str = (i == 5 || i == 28) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 5 || i == 28) ? 2 : 3];
        switch (i) {
            case 1:
            case 7:
            case 13:
            case 20:
                objArr[0] = "annotations";
                break;
            case 2:
            case 8:
            case 14:
            case 21:
                objArr[0] = "variance";
                break;
            case 3:
            case 9:
            case 15:
            case 22:
                objArr[0] = "name";
                break;
            case 4:
            case 11:
            case 18:
            case 25:
                objArr[0] = "storageManager";
                break;
            case 5:
            case 28:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl";
                break;
            case 6:
            case 12:
            case 19:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 10:
            case 16:
            case 23:
                objArr[0] = "source";
                break;
            case 17:
                objArr[0] = "supertypeLoopsResolver";
                break;
            case 24:
                objArr[0] = "supertypeLoopsChecker";
                break;
            case 26:
                objArr[0] = "bound";
                break;
            case 27:
                objArr[0] = "type";
                break;
        }
        if (i == 5) {
            objArr[1] = "createWithDefaultBound";
        } else if (i != 28) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl";
        } else {
            objArr[1] = "resolveUpperBounds";
        }
        switch (i) {
            case 5:
            case 28:
                break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                objArr[2] = "createForFurtherModification";
                break;
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
                objArr[2] = MethodDecl.initName;
                break;
            case 26:
                objArr[2] = "addUpperBound";
                break;
            case 27:
                objArr[2] = "reportSupertypeLoopError";
                break;
            default:
                objArr[2] = "createWithDefaultBound";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 5 && i != 28) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override
    public void F0(eh5 eh5Var) {
        if (eh5Var == null) {
            Q(27);
        }
        e74 e74Var = this.l;
        if (e74Var == null) {
            return;
        }
        e74Var.invoke(eh5Var);
    }

    @Override
    public List G0() {
        I0();
        List list = this.m;
        if (list == null) {
            Q(28);
        }
        return list;
    }

    public void H0(eh5 eh5Var) {
        if (eh5Var == null) {
            Q(26);
        }
        J0();
        N0(eh5Var);
    }

    public final void I0() {
        if (this.n) {
            return;
        }
        throw new IllegalStateException("Type parameter descriptor is not initialized: " + P0());
    }

    public final void J0() {
        if (this.n) {
            throw new IllegalStateException("Type parameter descriptor is already initialized: " + P0());
        }
    }

    public final void N0(eh5 eh5Var) {
        if (fh5.a(eh5Var)) {
            return;
        }
        this.m.add(eh5Var);
    }

    public boolean O0() {
        return this.n;
    }

    public final String P0() {
        return getName() + " declared in " + y82.m(b());
    }

    public void Q0() {
        J0();
        this.n = true;
    }
}
