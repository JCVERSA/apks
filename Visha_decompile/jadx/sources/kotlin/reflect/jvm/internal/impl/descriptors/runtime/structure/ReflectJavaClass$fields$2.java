package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import defpackage.dq8;
import defpackage.e74;
import defpackage.ke5;
import defpackage.xq8;
import defpackage.y45;
import java.lang.reflect.Field;
import javassist.compiler.ast.MethodDecl;
import kotlin.jvm.internal.FunctionReference;

public class ReflectJavaClass$fields$2 extends FunctionReference implements e74 {
    public static final ReflectJavaClass$fields$2 INSTANCE = new ReflectJavaClass$fields$2();

    public ReflectJavaClass$fields$2() {
        super(1);
    }

    @Override
    public final String getName() {
        return MethodDecl.initName;
    }

    @Override
    public final ke5 getOwner() {
        return xq8.b(dq8.class);
    }

    @Override
    public final String getSignature() {
        return "<init>(Ljava/lang/reflect/Field;)V";
    }

    @Override
    public final dq8 invoke(Field field) {
        y45.j(field, "p0");
        return new dq8(field);
    }
}
