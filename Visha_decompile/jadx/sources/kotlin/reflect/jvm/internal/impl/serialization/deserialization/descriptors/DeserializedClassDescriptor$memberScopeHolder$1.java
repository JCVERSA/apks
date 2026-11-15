package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import defpackage.e74;
import defpackage.ke5;
import defpackage.xq8;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.jvm.internal.FunctionReference;
import kotlin.reflect.jvm.internal.impl.types.checker.c;

public class DeserializedClassDescriptor$memberScopeHolder$1 extends FunctionReference implements e74 {
    public DeserializedClassDescriptor$memberScopeHolder$1(Object obj) {
        super(1, obj);
    }

    @Override
    public final String getName() {
        return MethodDecl.initName;
    }

    @Override
    public final ke5 getOwner() {
        return xq8.b(DeserializedClassDescriptor.DeserializedClassMemberScope.class);
    }

    @Override
    public final String getSignature() {
        return "<init>(Lorg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor;Lorg/jetbrains/kotlin/types/checker/KotlinTypeRefiner;)V";
    }

    @Override
    public final DeserializedClassDescriptor.DeserializedClassMemberScope invoke(c cVar) {
        y45.j(cVar, "p0");
        return new DeserializedClassDescriptor.DeserializedClassMemberScope((DeserializedClassDescriptor) this.receiver, cVar);
    }
}
