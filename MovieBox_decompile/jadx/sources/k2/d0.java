package k2;

public abstract class d0 implements m0 {

    private final m0 f63547a;

    public d0(m0 m0Var) {
        this.f63547a = m0Var;
    }

    @Override
    public long getDurationUs() {
        return this.f63547a.getDurationUs();
    }

    @Override
    public m0.a getSeekPoints(long j10) {
        return this.f63547a.getSeekPoints(j10);
    }

    @Override
    public boolean isSeekable() {
        return this.f63547a.isSeekable();
    }
}
