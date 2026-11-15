package kotlinx.coroutines;

import kotlin.jvm.functions.Function1;

final class s1 extends w1 {

    private final Function1 f64948e;

    public s1(Function1 function1) {
        this.f64948e = function1;
    }

    @Override
    public boolean u() {
        return false;
    }

    @Override
    public void v(Throwable th2) {
        this.f64948e.invoke(th2);
    }
}
