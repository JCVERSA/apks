package defpackage;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;

public class wi8 extends si8 implements vi8 {
    public eh5 n;
    public final vi8 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public wi8(ti8 ti8Var, md mdVar, Modality modality, c92 c92Var, boolean z, boolean z2, boolean z3, CallableMemberDescriptor.Kind kind, vi8 vi8Var, yt9 yt9Var) {
        vi8 vi8Var2;
        wi8 wi8Var;
        super(modality, c92Var, ti8Var, mdVar, by6.j("<get-" + ti8Var.getName() + ">"), z, z2, z3, kind, yt9Var);
        if (ti8Var == null) {
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
        if (kind == null) {
            Q(4);
        }
        if (yt9Var == null) {
            Q(5);
        }
        if (vi8Var != null) {
            wi8Var = this;
            vi8Var2 = vi8Var;
        } else {
            vi8Var2 = this;
            wi8Var = vi8Var2;
        }
        wi8Var.o = vi8Var2;
    }

    private static void Q(int i) {
        String str = (i == 6 || i == 7 || i == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 6 || i == 7 || i == 8) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "modality";
                break;
            case 3:
                objArr[0] = "visibility";
                break;
            case 4:
                objArr[0] = "kind";
                break;
            case 5:
                objArr[0] = "source";
                break;
            case 6:
            case 7:
            case 8:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl";
                break;
            default:
                objArr[0] = "correspondingProperty";
                break;
        }
        if (i == 6) {
            objArr[1] = "getOverriddenDescriptors";
        } else if (i == 7) {
            objArr[1] = "getValueParameters";
        } else if (i != 8) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl";
        } else {
            objArr[1] = "getOriginal";
        }
        if (i != 6 && i != 7 && i != 8) {
            objArr[2] = MethodDecl.initName;
        }
        String str2 = String.format(str, objArr);
        if (i != 6 && i != 7 && i != 8) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override
    public vi8 a() {
        vi8 vi8Var = this.o;
        if (vi8Var == null) {
            Q(8);
        }
        return vi8Var;
    }

    public void K0(eh5 eh5Var) {
        if (eh5Var == null) {
            eh5Var = e0().getType();
        }
        this.n = eh5Var;
    }

    @Override
    public Collection e() {
        Collection collectionF0 = super.F0(true);
        if (collectionF0 == null) {
            Q(6);
        }
        return collectionF0;
    }

    @Override
    public List f() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            Q(7);
        }
        return listEmptyList;
    }

    @Override
    public eh5 getReturnType() {
        return this.n;
    }

    @Override
    public Object q0(bu1 bu1Var, Object obj) {
        return bu1Var.g(this, obj);
    }
}
