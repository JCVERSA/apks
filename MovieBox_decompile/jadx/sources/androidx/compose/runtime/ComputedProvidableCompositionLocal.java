package androidx.compose.runtime;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

public final class ComputedProvidableCompositionLocal extends s1 {

    private final x f3288b;

    public ComputedProvidableCompositionLocal(Function1 function1) {
        super(new Function0<Object>() {
            @Override
            public final Object invoke() {
                k.s("Unexpected call to default provider");
                throw new KotlinNothingValueException();
            }
        });
        this.f3288b = new x(function1);
    }

    @Override
    public t1 c(Object obj) {
        return new t1(this, obj, obj == null, null, null, null, true);
    }

    @Override
    public x a() {
        return this.f3288b;
    }
}
