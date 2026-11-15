package com.bytedance.sdk.component.Sj;

public abstract class EjP<P, R> extends com.bytedance.sdk.component.Sj.sP<P, R> {
    private boolean Sj = true;
    private vS TKC;
    private Sj sP;

    interface Sj {
        void Sj(Object obj);

        void Sj(Throwable th2);
    }

    public interface sP {
        EjP Sj();
    }

    private boolean vS() {
        if (this.Sj) {
            return true;
        }
        uA.Sj(new IllegalStateException("Jsb async call already finished: " + Sj() + ", hashcode: " + hashCode()));
        return false;
    }

    protected void EjP() {
        this.Sj = false;
        this.TKC = null;
    }

    void HiB() {
        EjP();
    }

    @Override
    public String Sj() {
        return super.Sj();
    }

    protected abstract void Sj(P p10, vS vSVar) throws Exception;

    protected final void TKC() {
        Sj((Throwable) null);
    }

    protected final void Sj(R r10) {
        if (vS()) {
            this.sP.Sj(r10);
            EjP();
        }
    }

    protected final void Sj(Throwable th2) {
        if (vS()) {
            this.sP.Sj(th2);
            EjP();
        }
    }

    void Sj(P p10, vS vSVar, Sj sj2) throws Exception {
        this.TKC = vSVar;
        this.sP = sj2;
        Sj(p10, vSVar);
    }
}
