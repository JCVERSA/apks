package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import javassist.compiler.ast.MethodDecl;

public class fx0 extends p2 implements sbb {
    public final qw0 d;
    public final List e;
    public final Collection f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fx0(qw0 qw0Var, List list, Collection collection, vx9 vx9Var) {
        super(vx9Var);
        if (qw0Var == null) {
            u(0);
        }
        if (list == null) {
            u(1);
        }
        if (collection == null) {
            u(2);
        }
        if (vx9Var == null) {
            u(3);
        }
        this.d = qw0Var;
        this.e = Collections.unmodifiableList(new ArrayList(list));
        this.f = Collections.unmodifiableCollection(collection);
    }

    public static void u(int i) {
        String str = (i == 4 || i == 5 || i == 6 || i == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 4 || i == 5 || i == 6 || i == 7) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "parameters";
                break;
            case 2:
                objArr[0] = "supertypes";
                break;
            case 3:
                objArr[0] = "storageManager";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ClassTypeConstructorImpl";
                break;
            default:
                objArr[0] = "classDescriptor";
                break;
        }
        if (i == 4) {
            objArr[1] = "getParameters";
        } else if (i == 5) {
            objArr[1] = "getDeclarationDescriptor";
        } else if (i == 6) {
            objArr[1] = "computeSupertypes";
        } else if (i != 7) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ClassTypeConstructorImpl";
        } else {
            objArr[1] = "getSupertypeLoopChecker";
        }
        if (i != 4 && i != 5 && i != 6 && i != 7) {
            objArr[2] = MethodDecl.initName;
        }
        String str2 = String.format(str, objArr);
        if (i != 4 && i != 5 && i != 6 && i != 7) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override
    public boolean d() {
        return true;
    }

    @Override
    public List getParameters() {
        List list = this.e;
        if (list == null) {
            u(4);
        }
        return list;
    }

    @Override
    public Collection j() {
        Collection collection = this.f;
        if (collection == null) {
            u(6);
        }
        return collection;
    }

    @Override
    public t6a p() {
        t6a.a aVar = t6a.a.a;
        if (aVar == null) {
            u(7);
        }
        return aVar;
    }

    public String toString() {
        return y82.m(this.d).b();
    }

    @Override
    public qw0 c() {
        qw0 qw0Var = this.d;
        if (qw0Var == null) {
            u(5);
        }
        return qw0Var;
    }
}
