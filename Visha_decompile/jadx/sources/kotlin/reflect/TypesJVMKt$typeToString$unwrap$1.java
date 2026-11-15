package kotlin.reflect;

import defpackage.e74;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public class TypesJVMKt$typeToString$unwrap$1 extends FunctionReferenceImpl implements e74 {
    public static final TypesJVMKt$typeToString$unwrap$1 INSTANCE = new TypesJVMKt$typeToString$unwrap$1();

    public TypesJVMKt$typeToString$unwrap$1() {
        super(1, Class.class, "getComponentType", "getComponentType()Ljava/lang/Class;", 0);
    }

    @Override
    public final Class<?> invoke(Class<?> cls) {
        y45.j(cls, "p0");
        return cls.getComponentType();
    }
}
