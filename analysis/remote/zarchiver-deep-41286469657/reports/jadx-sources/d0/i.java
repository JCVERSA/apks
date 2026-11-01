package d0;

public final class i extends b {
    public i(int i2) {
        super(i2);
    }

    @Override
    public final d b(int i2) {
        return j(i2);
    }

    @Override
    public final Object get(int i2) {
        return j(i2);
    }

    public final synchronized void i(f fVar) {
        this.f523c = null;
        if (fVar.f545g) {
            this.f521a++;
            this.f522b += fVar.f542d;
        }
        add(fVar);
    }

    public final synchronized f j(int i2) {
        return (f) super.b(i2);
    }

    public i(i iVar) {
        super(iVar);
    }
}
