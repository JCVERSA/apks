package defpackage;

import javassist.compiler.ast.MethodDecl;
import org.mozilla.javascript.ES6Iterator;

public class so8 extends s3 {
    public final xt1 d;
    public to8 e;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public so8(xt1 xt1Var, to8 to8Var, md mdVar) {
        this(xt1Var, to8Var, mdVar, su9.i);
        if (xt1Var == null) {
            Q(0);
        }
        if (to8Var == null) {
            Q(1);
        }
        if (mdVar == null) {
            Q(2);
        }
    }

    private static void Q(int i) {
        String str = (i == 7 || i == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 7 || i == 8) ? 2 : 3];
        switch (i) {
            case 1:
            case 4:
                objArr[0] = ES6Iterator.VALUE_PROPERTY;
                break;
            case 2:
            case 5:
                objArr[0] = "annotations";
                break;
            case 3:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 6:
                objArr[0] = "name";
                break;
            case 7:
            case 8:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl";
                break;
            case 9:
                objArr[0] = "newOwner";
                break;
            case 10:
                objArr[0] = "outType";
                break;
        }
        if (i == 7) {
            objArr[1] = "getValue";
        } else if (i != 8) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl";
        } else {
            objArr[1] = "getContainingDeclaration";
        }
        switch (i) {
            case 7:
            case 8:
                break;
            case 9:
                objArr[2] = "copy";
                break;
            case 10:
                objArr[2] = "setOutType";
                break;
            default:
                objArr[2] = MethodDecl.initName;
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 7 && i != 8) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override
    public xt1 b() {
        xt1 xt1Var = this.d;
        if (xt1Var == null) {
            Q(8);
        }
        return xt1Var;
    }

    @Override
    public to8 getValue() {
        to8 to8Var = this.e;
        if (to8Var == null) {
            Q(7);
        }
        return to8Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public so8(xt1 xt1Var, to8 to8Var, md mdVar, by6 by6Var) {
        super(mdVar, by6Var);
        if (xt1Var == null) {
            Q(3);
        }
        if (to8Var == null) {
            Q(4);
        }
        if (mdVar == null) {
            Q(5);
        }
        if (by6Var == null) {
            Q(6);
        }
        this.d = xt1Var;
        this.e = to8Var;
    }
}
