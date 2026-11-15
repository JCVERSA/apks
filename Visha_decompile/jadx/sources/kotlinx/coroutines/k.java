package kotlinx.coroutines;

public final class k extends c {
    public static final k b = new k();

    @Override
    public void dispatch(kotlin.coroutines.d dVar, Runnable runnable) {
        l lVar = (l) dVar.get(l.c);
        if (lVar == null) {
            throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
        }
        lVar.b = true;
    }

    @Override
    public boolean isDispatchNeeded(kotlin.coroutines.d dVar) {
        return false;
    }

    @Override
    public c limitedParallelism(int i, String str) {
        throw new UnsupportedOperationException("limitedParallelism is not supported for Dispatchers.Unconfined");
    }

    @Override
    public String toString() {
        return "Dispatchers.Unconfined";
    }
}
