package defpackage;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.a;

public class bm9 extends a implements g {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bm9(xt1 xt1Var, g gVar, md mdVar, by6 by6Var, CallableMemberDescriptor.Kind kind, yt9 yt9Var) {
        super(xt1Var, gVar, mdVar, by6Var, kind, yt9Var);
        if (xt1Var == null) {
            Q(0);
        }
        if (mdVar == null) {
            Q(1);
        }
        if (by6Var == null) {
            Q(2);
        }
        if (kind == null) {
            Q(3);
        }
        if (yt9Var == null) {
            Q(4);
        }
    }

    private static void Q(int i) {
        String str = (i == 13 || i == 18 || i == 23 || i == 24 || i == 29 || i == 30) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 13 || i == 18 || i == 23 || i == 24 || i == 29 || i == 30) ? 2 : 3];
        switch (i) {
            case 1:
            case 6:
            case 27:
                objArr[0] = "annotations";
                break;
            case 2:
            case 7:
                objArr[0] = "name";
                break;
            case 3:
            case 8:
            case 26:
                objArr[0] = "kind";
                break;
            case 4:
            case 9:
            case 28:
                objArr[0] = "source";
                break;
            case 5:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 10:
            case 15:
            case 20:
                objArr[0] = "typeParameters";
                break;
            case 11:
            case 16:
            case 21:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 12:
            case 17:
            case 22:
                objArr[0] = "visibility";
                break;
            case 13:
            case 18:
            case 23:
            case 24:
            case 29:
            case 30:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl";
                break;
            case 14:
            case 19:
                objArr[0] = "contextReceiverParameters";
                break;
            case 25:
                objArr[0] = "newOwner";
                break;
        }
        if (i == 13 || i == 18 || i == 23) {
            objArr[1] = "initialize";
        } else if (i == 24) {
            objArr[1] = "getOriginal";
        } else if (i == 29) {
            objArr[1] = "copy";
        } else if (i != 30) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl";
        } else {
            objArr[1] = "newCopyBuilder";
        }
        switch (i) {
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                objArr[2] = "create";
                break;
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 16:
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
                objArr[2] = "initialize";
                break;
            case 13:
            case 18:
            case 23:
            case 24:
            case 29:
            case 30:
                break;
            case 25:
            case 26:
            case 27:
            case 28:
                objArr[2] = "createSubstitutedCopy";
                break;
            default:
                objArr[2] = MethodDecl.initName;
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 13 && i != 18 && i != 23 && i != 24 && i != 29 && i != 30) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static bm9 g1(xt1 xt1Var, md mdVar, by6 by6Var, CallableMemberDescriptor.Kind kind, yt9 yt9Var) {
        if (xt1Var == null) {
            Q(5);
        }
        if (mdVar == null) {
            Q(6);
        }
        if (by6Var == null) {
            Q(7);
        }
        if (kind == null) {
            Q(8);
        }
        if (yt9Var == null) {
            Q(9);
        }
        return new bm9(xt1Var, null, mdVar, by6Var, kind, yt9Var);
    }

    @Override
    public a G0(xt1 xt1Var, e eVar, CallableMemberDescriptor.Kind kind, by6 by6Var, md mdVar, yt9 yt9Var) {
        if (xt1Var == null) {
            Q(25);
        }
        if (kind == null) {
            Q(26);
        }
        if (mdVar == null) {
            Q(27);
        }
        if (yt9Var == null) {
            Q(28);
        }
        g gVar = (g) eVar;
        if (by6Var == null) {
            by6Var = getName();
        }
        return new bm9(xt1Var, gVar, mdVar, by6Var, kind, yt9Var);
    }

    @Override
    public g J(xt1 xt1Var, Modality modality, c92 c92Var, CallableMemberDescriptor.Kind kind, boolean z) {
        g gVar = (g) super.F0(xt1Var, modality, c92Var, kind, z);
        if (gVar == null) {
            Q(29);
        }
        return gVar;
    }

    @Override
    public g a() {
        g gVar = (g) super.a();
        if (gVar == null) {
            Q(24);
        }
        return gVar;
    }

    @Override
    public bm9 M0(ro8 ro8Var, ro8 ro8Var2, List list, List list2, List list3, eh5 eh5Var, Modality modality, c92 c92Var) {
        if (list == null) {
            Q(14);
        }
        if (list2 == null) {
            Q(15);
        }
        if (list3 == null) {
            Q(16);
        }
        if (c92Var == null) {
            Q(17);
        }
        bm9 bm9VarJ1 = j1(ro8Var, ro8Var2, list, list2, list3, eh5Var, modality, c92Var, null);
        if (bm9VarJ1 == null) {
            Q(18);
        }
        return bm9VarJ1;
    }

    public bm9 j1(ro8 ro8Var, ro8 ro8Var2, List list, List list2, List list3, eh5 eh5Var, Modality modality, c92 c92Var, Map map) {
        if (list == null) {
            Q(19);
        }
        if (list2 == null) {
            Q(20);
        }
        if (list3 == null) {
            Q(21);
        }
        if (c92Var == null) {
            Q(22);
        }
        super.M0(ro8Var, ro8Var2, list, list2, list3, eh5Var, modality, c92Var);
        if (map != null && !map.isEmpty()) {
            this.E = new LinkedHashMap(map);
        }
        return this;
    }

    @Override
    public e.a l() {
        e.a aVarL = super.l();
        if (aVarL == null) {
            Q(30);
        }
        return aVarL;
    }
}
