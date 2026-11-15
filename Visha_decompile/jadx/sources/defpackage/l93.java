package defpackage;

public final class l93 implements dz4 {
    public final boolean b;

    public l93(boolean z) {
        this.b = z;
    }

    @Override
    public f17 b() {
        return null;
    }

    @Override
    public boolean isActive() {
        return this.b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Empty{");
        sb.append(isActive() ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
