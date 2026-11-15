package defpackage;

import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.CallableReference;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.MutablePropertyReference0;
import kotlin.jvm.internal.MutablePropertyReference1;
import kotlin.jvm.internal.MutablePropertyReference2;
import kotlin.jvm.internal.PropertyReference0;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference2;
import kotlin.reflect.jvm.ReflectLambdaKt;
import kotlin.reflect.jvm.internal.CachesKt;
import kotlin.reflect.jvm.internal.KDeclarationContainerImpl;
import kotlin.reflect.jvm.internal.KFunctionImpl;
import kotlin.reflect.jvm.internal.KMutableProperty0Impl;
import kotlin.reflect.jvm.internal.KMutableProperty1Impl;
import kotlin.reflect.jvm.internal.KMutableProperty2Impl;
import kotlin.reflect.jvm.internal.KProperty0Impl;
import kotlin.reflect.jvm.internal.KProperty1Impl;
import kotlin.reflect.jvm.internal.KProperty2Impl;
import kotlin.reflect.jvm.internal.ReflectionObjectRenderer;
import kotlin.reflect.jvm.internal.a;

public class cr8 extends br8 {
    public static KDeclarationContainerImpl m(CallableReference callableReference) {
        ke5 owner = callableReference.getOwner();
        return owner instanceof KDeclarationContainerImpl ? (KDeclarationContainerImpl) owner : a.e;
    }

    @Override
    public le5 a(FunctionReference functionReference) {
        return new KFunctionImpl(m(functionReference), functionReference.getName(), functionReference.getSignature(), functionReference.getBoundReceiver());
    }

    @Override
    public de5 b(Class cls) {
        return CachesKt.c(cls);
    }

    @Override
    public ke5 c(Class cls, String str) {
        return CachesKt.d(cls);
    }

    @Override
    public we5 d(MutablePropertyReference0 mutablePropertyReference0) {
        return new KMutableProperty0Impl(m(mutablePropertyReference0), mutablePropertyReference0.getName(), mutablePropertyReference0.getSignature(), mutablePropertyReference0.getBoundReceiver());
    }

    @Override
    public xe5 e(MutablePropertyReference1 mutablePropertyReference1) {
        return new KMutableProperty1Impl(m(mutablePropertyReference1), mutablePropertyReference1.getName(), mutablePropertyReference1.getSignature(), mutablePropertyReference1.getBoundReceiver());
    }

    @Override
    public ye5 f(MutablePropertyReference2 mutablePropertyReference2) {
        return new KMutableProperty2Impl(m(mutablePropertyReference2), mutablePropertyReference2.getName(), mutablePropertyReference2.getSignature());
    }

    @Override
    public bf5 g(PropertyReference0 propertyReference0) {
        return new KProperty0Impl(m(propertyReference0), propertyReference0.getName(), propertyReference0.getSignature(), propertyReference0.getBoundReceiver());
    }

    @Override
    public cf5 h(PropertyReference1 propertyReference1) {
        return new KProperty1Impl(m(propertyReference1), propertyReference1.getName(), propertyReference1.getSignature(), propertyReference1.getBoundReceiver());
    }

    @Override
    public df5 i(PropertyReference2 propertyReference2) {
        return new KProperty2Impl(m(propertyReference2), propertyReference2.getName(), propertyReference2.getSignature());
    }

    @Override
    public String j(g84 g84Var) {
        KFunctionImpl kFunctionImplC;
        le5 le5VarA = ReflectLambdaKt.a(g84Var);
        return (le5VarA == null || (kFunctionImplC = clb.c(le5VarA)) == null) ? super.j(g84Var) : ReflectionObjectRenderer.a.e(kFunctionImplC.D());
    }

    @Override
    public String k(Lambda lambda) {
        return j(lambda);
    }

    @Override
    public ff5 l(he5 he5Var, List list, boolean z) {
        return he5Var instanceof kw0 ? CachesKt.a(((kw0) he5Var).d(), list, z) : je5.b(he5Var, list, z, Collections.emptyList());
    }
}
