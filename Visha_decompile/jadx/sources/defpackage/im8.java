package defpackage;

public abstract class im8 extends nm8 implements pd7, hd7 {
    protected volatile boolean cancelled;
    protected volatile boolean done;
    protected final pd7 downstream;
    protected Throwable error;
    protected final nm9 queue;

    public im8(pd7 pd7Var, nm9 nm9Var) {
        this.downstream = pd7Var;
        this.queue = nm9Var;
    }

    @Override
    public void accept(pd7 pd7Var, Object obj) {
    }

    @Override
    public final boolean cancelled() {
        return this.cancelled;
    }

    @Override
    public final boolean done() {
        return this.done;
    }

    public final boolean enter() {
        return this.wip.getAndIncrement() == 0;
    }

    @Override
    public final Throwable error() {
        return this.error;
    }

    public final boolean fastEnter() {
        return this.wip.get() == 0 && this.wip.compareAndSet(0, 1);
    }

    public final void fastPathEmit(Object obj, boolean z, rc2 rc2Var) {
        pd7 pd7Var = this.downstream;
        nm9 nm9Var = this.queue;
        if (this.wip.get() == 0 && this.wip.compareAndSet(0, 1)) {
            accept(pd7Var, obj);
            if (leave(-1) == 0) {
                return;
            }
        } else {
            nm9Var.offer(obj);
            if (!enter()) {
                return;
            }
        }
        hm8.d(nm9Var, pd7Var, z, rc2Var, this);
    }

    public final void fastPathOrderedEmit(Object obj, boolean z, rc2 rc2Var) {
        pd7 pd7Var = this.downstream;
        nm9 nm9Var = this.queue;
        if (this.wip.get() != 0 || !this.wip.compareAndSet(0, 1)) {
            nm9Var.offer(obj);
            if (!enter()) {
                return;
            }
        } else if (nm9Var.isEmpty()) {
            accept(pd7Var, obj);
            if (leave(-1) == 0) {
                return;
            }
        } else {
            nm9Var.offer(obj);
        }
        hm8.d(nm9Var, pd7Var, z, rc2Var, this);
    }

    @Override
    public final int leave(int i) {
        return this.wip.addAndGet(i);
    }
}
