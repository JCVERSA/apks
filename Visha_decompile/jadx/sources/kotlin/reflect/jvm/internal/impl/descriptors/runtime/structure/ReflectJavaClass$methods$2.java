package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import defpackage.e74;
import defpackage.gq8;
import defpackage.ke5;
import defpackage.xq8;
import defpackage.y45;
import java.lang.reflect.Method;
import javassist.compiler.ast.MethodDecl;
import kotlin.jvm.internal.FunctionReference;

public class ReflectJavaClass$methods$2 extends FunctionReference implements e74 {
    public static final ReflectJavaClass$methods$2 INSTANCE = new ReflectJavaClass$methods$2();

    public ReflectJavaClass$methods$2() {
        super(1);
    }

    @Override
    public final String getName() {
        return MethodDecl.initName;
    }

    @Override
    public final ke5 getOwner() {
        return xq8.b(gq8.class);
    }

    @Override
    public final String getSignature() {
        return "<init>(Ljava/lang/reflect/Method;)V";
    }

    @Override
    public final gq8 invoke(Method method) {
        y45.j(method, "p0");
        return new gq8(method);
    }
}
