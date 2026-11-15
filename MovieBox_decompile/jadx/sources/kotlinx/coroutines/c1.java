package kotlinx.coroutines;

final class c1 extends w1 {

    private final a1 f64679e;

    public c1(a1 a1Var) {
        this.f64679e = a1Var;
    }

    @Override
    public boolean u() {
        return false;
    }

    @Override
    public void v(Throwable th2) {
        this.f64679e.dispose();
    }
}
