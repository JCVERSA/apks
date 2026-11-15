package defpackage;

import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.types.Variance;

public abstract class f3 extends f4 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f3(vx9 vx9Var, xt1 xt1Var, md mdVar, by6 by6Var, Variance variance, boolean z, int i, yt9 yt9Var, t6a t6aVar) {
        super(vx9Var, xt1Var, mdVar, by6Var, variance, z, i, yt9Var, t6aVar);
        if (vx9Var == null) {
            Q(0);
        }
        if (xt1Var == null) {
            Q(1);
        }
        if (mdVar == null) {
            Q(2);
        }
        if (by6Var == null) {
            Q(3);
        }
        if (variance == null) {
            Q(4);
        }
        if (yt9Var == null) {
            Q(5);
        }
        if (t6aVar == null) {
            Q(6);
        }
    }

    public static void Q(int i) {
        Object[] objArr = new Object[3];
        switch (i) {
            case 1:
                objArr[0] = "containingDeclaration";
                break;
            case 2:
                objArr[0] = "annotations";
                break;
            case 3:
                objArr[0] = "name";
                break;
            case 4:
                objArr[0] = "variance";
                break;
            case 5:
                objArr[0] = "source";
                break;
            case 6:
                objArr[0] = "supertypeLoopChecker";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractLazyTypeParameterDescriptor";
        objArr[2] = MethodDecl.initName;
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    @Override
    public String toString() {
        String str = "";
        String str2 = u() ? "reified " : "";
        if (h() != Variance.INVARIANT) {
            str = h() + " ";
        }
        return String.format("%s%s%s", str2, str, getName());
    }
}
