package kotlin.reflect;

import defpackage.e74;
import defpackage.y45;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public class ParameterizedTypeImpl$getTypeName$1$1 extends FunctionReferenceImpl implements e74 {
    public static final ParameterizedTypeImpl$getTypeName$1$1 INSTANCE = new ParameterizedTypeImpl$getTypeName$1$1();

    public ParameterizedTypeImpl$getTypeName$1$1() {
        super(1, TypesJVMKt.class, "typeToString", "typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;", 1);
    }

    @Override
    public final String invoke(Type type) {
        y45.j(type, "p0");
        return TypesJVMKt.h(type);
    }
}
