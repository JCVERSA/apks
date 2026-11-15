package defpackage;

import kotlinx.coroutines.EventLoopImplBase;

public final class uf0 extends EventLoopImplBase {
    public final Thread b;

    public uf0(Thread thread) {
        this.b = thread;
    }

    @Override
    public Thread getThread() {
        return this.b;
    }
}
