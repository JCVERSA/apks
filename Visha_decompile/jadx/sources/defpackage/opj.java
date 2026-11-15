package defpackage;

public abstract class opj extends jmj {
    public final knj k;

    public opj(knj knjVar) {
        this.k = knjVar;
    }

    @Override
    public final long A(Object obj, long j, bnj bnjVar) {
        return j;
    }

    @Override
    public final bnj B(Object obj, bnj bnjVar) {
        return C(bnjVar);
    }

    public abstract bnj C(bnj bnjVar);

    public abstract void D(w4f w4fVar);

    public abstract void E();

    @Override
    public abstract void h(zmj zmjVar);

    @Override
    public final void t(ixi ixiVar) {
        super.t(ixiVar);
        E();
    }

    @Override
    public final void x(Object obj, knj knjVar, w4f w4fVar) {
        D(w4fVar);
    }

    @Override
    public final int z(Object obj, int i) {
        return 0;
    }

    @Override
    public final cme zzJ() {
        return this.k.zzJ();
    }

    @Override
    public final w4f zzM() {
        this.k.zzM();
        return null;
    }

    @Override
    public final boolean zzv() {
        this.k.zzv();
        return true;
    }
}
