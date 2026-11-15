package kotlinx.coroutines;

final class b1 implements m {

    private final a1 f64677a;

    public b1(a1 a1Var) {
        this.f64677a = a1Var;
    }

    @Override
    public void a(Throwable th2) {
        this.f64677a.dispose();
    }

    public String toString() {
        return "DisposeOnCancel[" + this.f64677a + ']';
    }
}
