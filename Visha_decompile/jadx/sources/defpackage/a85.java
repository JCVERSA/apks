package defpackage;

import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.h;

public class a85 extends ui8 implements r65 {
    public final boolean D;
    public final Pair E;
    public eh5 F;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a85(xt1 xt1Var, md mdVar, Modality modality, c92 c92Var, boolean z, by6 by6Var, yt9 yt9Var, ti8 ti8Var, CallableMemberDescriptor.Kind kind, boolean z2, Pair pair) {
        super(xt1Var, ti8Var, mdVar, modality, c92Var, z, by6Var, kind, yt9Var, false, false, false, false, false, false);
        if (xt1Var == null) {
            Q(0);
        }
        if (mdVar == null) {
            Q(1);
        }
        if (modality == null) {
            Q(2);
        }
        if (c92Var == null) {
            Q(3);
        }
        if (by6Var == null) {
            Q(4);
        }
        if (yt9Var == null) {
            Q(5);
        }
        if (kind == null) {
            Q(6);
        }
        this.F = null;
        this.D = z2;
        this.E = pair;
    }

    private static void Q(int i) {
        String str = i != 21 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 21 ? 3 : 2];
        switch (i) {
            case 1:
            case 8:
                objArr[0] = "annotations";
                break;
            case 2:
            case 9:
                objArr[0] = "modality";
                break;
            case 3:
            case 10:
                objArr[0] = "visibility";
                break;
            case 4:
            case 11:
                objArr[0] = "name";
                break;
            case 5:
            case 12:
            case 18:
                objArr[0] = "source";
                break;
            case 6:
            case 16:
                objArr[0] = "kind";
                break;
            case 7:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 13:
                objArr[0] = "newOwner";
                break;
            case 14:
                objArr[0] = "newModality";
                break;
            case 15:
                objArr[0] = "newVisibility";
                break;
            case 17:
                objArr[0] = "newName";
                break;
            case 19:
                objArr[0] = "enhancedValueParameterTypes";
                break;
            case 20:
                objArr[0] = "enhancedReturnType";
                break;
            case 21:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor";
                break;
            case 22:
                objArr[0] = "inType";
                break;
        }
        if (i != 21) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "create";
                break;
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 19:
            case 20:
                objArr[2] = "enhance";
                break;
            case 21:
                break;
            case 22:
                objArr[2] = "setInType";
                break;
            default:
                objArr[2] = MethodDecl.initName;
                break;
        }
        String str2 = String.format(str, objArr);
        if (i == 21) {
            throw new IllegalStateException(str2);
        }
    }

    public static a85 a1(xt1 xt1Var, md mdVar, Modality modality, c92 c92Var, boolean z, by6 by6Var, yt9 yt9Var, boolean z2) {
        if (xt1Var == null) {
            Q(7);
        }
        if (mdVar == null) {
            Q(8);
        }
        if (modality == null) {
            Q(9);
        }
        if (c92Var == null) {
            Q(10);
        }
        if (by6Var == null) {
            Q(11);
        }
        if (yt9Var == null) {
            Q(12);
        }
        return new a85(xt1Var, mdVar, modality, c92Var, z, by6Var, yt9Var, null, CallableMemberDescriptor.Kind.DECLARATION, z2, null);
    }

    @Override
    public r65 I(eh5 eh5Var, List list, eh5 eh5Var2, Pair pair) {
        wi8 wi8Var;
        yi8 yi8Var;
        if (list == null) {
            Q(19);
        }
        if (eh5Var2 == null) {
            Q(20);
        }
        ti8 ti8VarA = a() == this ? null : a();
        a85 a85Var = new a85(b(), getAnnotations(), j(), getVisibility(), y(), getName(), getSource(), ti8VarA, getKind(), this.D, pair);
        wi8 getter = getGetter();
        if (getter != null) {
            wi8Var = wi8Var;
            wi8 wi8Var2 = new wi8(a85Var, getter.getAnnotations(), getter.j(), getter.getVisibility(), getter.V(), getter.isExternal(), getter.isInline(), getKind(), ti8VarA == null ? null : ti8VarA.getGetter(), getter.getSource());
            wi8Var.H0(getter.v0());
            wi8Var.K0(eh5Var2);
        } else {
            wi8Var = null;
        }
        xi8 setter = getSetter();
        if (setter != null) {
            yi8 yi8Var2 = new yi8(a85Var, setter.getAnnotations(), setter.j(), setter.getVisibility(), setter.V(), setter.isExternal(), setter.isInline(), getKind(), ti8VarA == null ? null : ti8VarA.getSetter(), setter.getSource());
            yi8Var2.H0(yi8Var2.v0());
            yi8Var2.L0((h) setter.f().get(0));
            yi8Var = yi8Var2;
        } else {
            yi8Var = null;
        }
        a85Var.Q0(wi8Var, yi8Var, L(), z());
        a85Var.V0(R0());
        c74 c74Var = this.i;
        if (c74Var != null) {
            a85Var.F0(this.h, c74Var);
        }
        a85Var.O(e());
        a85Var.W0(eh5Var2, getTypeParameters(), Z(), eh5Var == null ? null : s82.i(this, eh5Var, md.u1.b()), y71.k());
        return a85Var;
    }

    @Override
    public Object K(a.InterfaceC0379a interfaceC0379a) {
        Pair pair = this.E;
        if (pair == null || !((a.InterfaceC0379a) pair.getFirst()).equals(interfaceC0379a)) {
            return null;
        }
        return this.E.getSecond();
    }

    @Override
    public ui8 K0(xt1 xt1Var, Modality modality, c92 c92Var, ti8 ti8Var, CallableMemberDescriptor.Kind kind, by6 by6Var, yt9 yt9Var) {
        if (xt1Var == null) {
            Q(13);
        }
        if (modality == null) {
            Q(14);
        }
        if (c92Var == null) {
            Q(15);
        }
        if (kind == null) {
            Q(16);
        }
        if (by6Var == null) {
            Q(17);
        }
        if (yt9Var == null) {
            Q(18);
        }
        return new a85(xt1Var, getAnnotations(), modality, c92Var, y(), by6Var, yt9Var, ti8Var, kind, this.D, this.E);
    }

    @Override
    public void U0(eh5 eh5Var) {
        if (eh5Var == null) {
            Q(22);
        }
        this.F = eh5Var;
    }

    @Override
    public boolean isConst() {
        eh5 type = getType();
        return this.D && if1.a(type) && (!wbb.i(type) || d.v0(type));
    }

    @Override
    public boolean k0() {
        return false;
    }
}
