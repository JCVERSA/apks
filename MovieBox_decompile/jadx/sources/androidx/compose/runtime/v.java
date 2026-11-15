package androidx.compose.runtime;

public final class v implements b2 {

    private final kotlinx.coroutines.n0 f3744a;

    public v(kotlinx.coroutines.n0 n0Var) {
        this.f3744a = n0Var;
    }

    public final kotlinx.coroutines.n0 a() {
        return this.f3744a;
    }

    @Override
    public void onAbandoned() {
        kotlinx.coroutines.o0.c(this.f3744a, new LeftCompositionCancellationException());
    }

    @Override
    public void onForgotten() {
        kotlinx.coroutines.o0.c(this.f3744a, new LeftCompositionCancellationException());
    }

    @Override
    public void onRemembered() {
    }
}
