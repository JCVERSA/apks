package androidx.p009lifecycle;

import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import p1.a;

public final class ViewModelLazy implements Lazy {

    private final KClass f9256a;

    private final Function0 f9257b;

    private final Function0 f9258c;

    private final Function0 f9259d;

    private t0 f9260e;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelLazy(KClass viewModelClass, Function0 storeProducer, Function0 factoryProducer) {
        this(viewModelClass, storeProducer, factoryProducer, null, 8, null);
        Intrinsics.h(viewModelClass, "viewModelClass");
        Intrinsics.h(storeProducer, "storeProducer");
        Intrinsics.h(factoryProducer, "factoryProducer");
    }

    @Override
    public t0 getValue() {
        t0 t0Var = this.f9260e;
        if (t0Var != null) {
            return t0Var;
        }
        t0 t0VarC = v0.f9337b.a((x0) this.f9257b.invoke(), (v0.c) this.f9258c.invoke(), (a) this.f9259d.invoke()).c(this.f9256a);
        this.f9260e = t0VarC;
        return t0VarC;
    }

    @Override
    public boolean isInitialized() {
        return this.f9260e != null;
    }

    public ViewModelLazy(KClass viewModelClass, Function0 storeProducer, Function0 factoryProducer, Function0 extrasProducer) {
        Intrinsics.h(viewModelClass, "viewModelClass");
        Intrinsics.h(storeProducer, "storeProducer");
        Intrinsics.h(factoryProducer, "factoryProducer");
        Intrinsics.h(extrasProducer, "extrasProducer");
        this.f9256a = viewModelClass;
        this.f9257b = storeProducer;
        this.f9258c = factoryProducer;
        this.f9259d = extrasProducer;
    }

    public ViewModelLazy(KClass kClass, Function0 function0, Function0 function1, Function0 function2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(kClass, function0, function1, (i10 & 8) != 0 ? new Function0<a.C0848a>() {
            @Override
            public final a.C0848a invoke() {
                return a.C0848a.f68963b;
            }
        } : function2);
    }
}
