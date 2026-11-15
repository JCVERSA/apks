package kotlinx.coroutines;

public final class h extends EventLoopImplBase {

    private final Thread f64864a;

    public h(Thread thread) {
        this.f64864a = thread;
    }

    @Override
    protected Thread getThread() {
        return this.f64864a;
    }
}
