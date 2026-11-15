package defpackage;

public final class ugj {
    public boolean a;
    public boolean b;
    public boolean c;

    public final ugj a(boolean z) {
        this.a = true;
        return this;
    }

    public final ugj b(boolean z) {
        this.b = z;
        return this;
    }

    public final ugj c(boolean z) {
        this.c = z;
        return this;
    }

    public final ygj d() {
        if (this.a || !(this.b || this.c)) {
            return new ygj(this, null);
        }
        throw new IllegalStateException("Secondary offload attribute fields are true but primary isFormatSupported is false");
    }
}
