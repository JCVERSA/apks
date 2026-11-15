package defpackage;

public final class lw9 extends w44 {
    public final long b;

    public lw9(pk3 pk3Var, long j) {
        super(pk3Var);
        zi.a(pk3Var.getPosition() >= j);
        this.b = j;
    }

    @Override
    public long getLength() {
        return super.getLength() - this.b;
    }

    @Override
    public long getPeekPosition() {
        return super.getPeekPosition() - this.b;
    }

    @Override
    public long getPosition() {
        return super.getPosition() - this.b;
    }
}
