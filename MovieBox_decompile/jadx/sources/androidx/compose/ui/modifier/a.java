package androidx.compose.ui.modifier;

public final class a extends f {

    private j f4895a;

    public a(j jVar) {
        super(null);
        this.f4895a = jVar;
    }

    @Override
    public boolean a(c cVar) {
        return cVar == this.f4895a.getKey();
    }

    @Override
    public Object b(c cVar) {
        if (!(cVar == this.f4895a.getKey())) {
            g0.a.b("Check failed.");
        }
        return this.f4895a.getValue();
    }

    public final void c(j jVar) {
        this.f4895a = jVar;
    }
}
