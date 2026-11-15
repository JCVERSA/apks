package androidx.p009lifecycle;

class h0 implements r {

    private final Object f9294a;

    private final c.a f9295b;

    h0(Object obj) {
        this.f9294a = obj;
        this.f9295b = c.f9266c.c(obj.getClass());
    }

    @Override
    public void onStateChanged(u uVar, Lifecycle.Event event) {
        this.f9295b.a(uVar, event, this.f9294a);
    }
}
