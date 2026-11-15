package defpackage;

import freemarker.template.Version;

public abstract class b32 extends xd0 {
    public boolean i;
    public boolean j;

    public b32(Version version) {
        super(z22.G(version), true);
        this.i = d().intValue() >= d1d.e;
        this.j = true;
    }

    @Override
    public boolean equals(Object obj) {
        if (!super.equals(obj)) {
            return false;
        }
        b32 b32Var = (b32) obj;
        return this.i == b32Var.l() && this.j == b32Var.j;
    }

    @Override
    public int hashCode() {
        return (((super.hashCode() * 31) + (this.i ? 1231 : 1237)) * 31) + (this.j ? 1231 : 1237);
    }

    public boolean k() {
        return this.j;
    }

    public boolean l() {
        return this.i;
    }
}
