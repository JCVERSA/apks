package kotlinx.coroutines;

final class u extends w1 implements t {

    public final v f65031e;

    public u(v vVar) {
        this.f65031e = vVar;
    }

    @Override
    public boolean a(Throwable th2) {
        return t().childCancelled(th2);
    }

    @Override
    public t1 getParent() {
        return t();
    }

    @Override
    public boolean u() {
        return true;
    }

    @Override
    public void v(Throwable th2) {
        this.f65031e.parentCancelled(t());
    }
}
