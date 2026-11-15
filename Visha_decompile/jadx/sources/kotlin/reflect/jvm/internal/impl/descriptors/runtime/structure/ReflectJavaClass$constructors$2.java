package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import defpackage.aq8;
import defpackage.e74;
import defpackage.ke5;
import defpackage.xq8;
import defpackage.y45;
import java.lang.reflect.Constructor;
import javassist.compiler.ast.MethodDecl;
import kotlin.jvm.internal.FunctionReference;

public class ReflectJavaClass$constructors$2 extends FunctionReference implements e74 {
    public static final ReflectJavaClass$constructors$2 INSTANCE = new ReflectJavaClass$constructors$2();

    public ReflectJavaClass$constructors$2() {
        super(1);
    }

    @Override
    public final String getName() {
        return MethodDecl.initName;
    }

    @Override
    public final ke5 getOwner() {
        return xq8.b(aq8.class);
    }

    @Override
    public final String getSignature() {
        return "<init>(Ljava/lang/reflect/Constructor;)V";
    }

    @Override
    public final aq8 invoke(Constructor<?> constructor) {
        y45.j(constructor, "p0");
        return new aq8(constructor);
    }
}
