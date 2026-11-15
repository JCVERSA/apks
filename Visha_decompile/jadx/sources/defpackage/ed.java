package defpackage;

import javassist.compiler.ast.MethodDecl;

public abstract class ed implements dd {
    public final md b;

    public ed(md mdVar) {
        if (mdVar == null) {
            Q(0);
        }
        this.b = mdVar;
    }

    private static void Q(int i) {
        String str = i != 1 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 1 ? 3 : 2];
        if (i != 1) {
            objArr[0] = "annotations";
        } else {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl";
        }
        if (i != 1) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl";
        } else {
            objArr[1] = "getAnnotations";
        }
        if (i != 1) {
            objArr[2] = MethodDecl.initName;
        }
        String str2 = String.format(str, objArr);
        if (i == 1) {
            throw new IllegalStateException(str2);
        }
    }

    @Override
    public md getAnnotations() {
        md mdVar = this.b;
        if (mdVar == null) {
            Q(1);
        }
        return mdVar;
    }
}
