package defpackage;

import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;

public class hd implements gd {
    public final eh5 a;
    public final Map b;
    public final yt9 c;

    public hd(eh5 eh5Var, Map map, yt9 yt9Var) {
        if (eh5Var == null) {
            a(0);
        }
        if (map == null) {
            a(1);
        }
        if (yt9Var == null) {
            a(2);
        }
        this.a = eh5Var;
        this.b = map;
        this.c = yt9Var;
    }

    public static void a(int i) {
        String str = (i == 3 || i == 4 || i == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 3 || i == 4 || i == 5) ? 2 : 3];
        if (i == 1) {
            objArr[0] = "valueArguments";
        } else if (i == 2) {
            objArr[0] = "source";
        } else if (i == 3 || i == 4 || i == 5) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl";
        } else {
            objArr[0] = "annotationType";
        }
        if (i == 3) {
            objArr[1] = "getType";
        } else if (i == 4) {
            objArr[1] = "getAllValueArguments";
        } else if (i != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl";
        } else {
            objArr[1] = "getSource";
        }
        if (i != 3 && i != 4 && i != 5) {
            objArr[2] = MethodDecl.initName;
        }
        String str2 = String.format(str, objArr);
        if (i != 3 && i != 4 && i != 5) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override
    public o54 d() {
        return gd.a.a(this);
    }

    @Override
    public Map f() {
        Map map = this.b;
        if (map == null) {
            a(4);
        }
        return map;
    }

    @Override
    public yt9 getSource() {
        yt9 yt9Var = this.c;
        if (yt9Var == null) {
            a(5);
        }
        return yt9Var;
    }

    @Override
    public eh5 getType() {
        eh5 eh5Var = this.a;
        if (eh5Var == null) {
            a(3);
        }
        return eh5Var;
    }

    public String toString() {
        return DescriptorRenderer.g.t(this, null);
    }
}
