package com.bytedance.adsdk.sP.vS;

import android.view.Choreographer;
import com.bytedance.adsdk.sP.Jcg;

public class TKC extends Sj implements Choreographer.FrameCallback {
    private Jcg TEQ;
    private float sP = 1.0f;
    private boolean TKC = false;
    private long EjP = 0;
    private float HiB = 0.0f;
    private float vS = 0.0f;
    private int Jcg = 0;
    private float Dq = -2.14748365E9f;
    private float uA = 2.14748365E9f;
    protected boolean Sj = false;
    private boolean Ym = false;

    private float RiZ() {
        Jcg jcg = this.TEQ;
        if (jcg == null) {
            return Float.MAX_VALUE;
        }
        return (1.0E9f / jcg.aa()) / Math.abs(this.sP);
    }

    private void dx() {
        if (this.TEQ == null) {
            return;
        }
        float f10 = this.vS;
        if (f10 < this.Dq || f10 > this.uA) {
            throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.Dq), Float.valueOf(this.uA), Float.valueOf(this.vS)));
        }
    }

    private boolean sU() {
        return TEQ() < 0.0f;
    }

    public void Dq() {
        this.TEQ = null;
        this.Dq = -2.14748365E9f;
        this.uA = 2.14748365E9f;
    }

    protected void EjP(boolean z10) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z10) {
            this.Sj = false;
        }
    }

    public void Fmk() {
        TzV();
        EjP();
    }

    public float Jcg() {
        return this.vS;
    }

    public void Sj(Jcg jcg) {
        boolean z10 = this.TEQ == null;
        this.TEQ = jcg;
        if (z10) {
            Sj(Math.max(this.Dq, jcg.vS()), Math.min(this.uA, jcg.Jcg()));
        } else {
            Sj((int) jcg.vS(), (int) jcg.Jcg());
        }
        float f10 = this.vS;
        this.vS = 0.0f;
        this.HiB = 0.0f;
        Sj((int) f10);
        TKC();
    }

    public float TEQ() {
        return this.sP;
    }

    public void TKC(boolean z10) {
        this.Ym = z10;
    }

    protected void TzV() {
        EjP(true);
    }

    public void Ym() {
        this.Sj = true;
        Sj(sU());
        Sj((int) (sU() ? uvD() : Zq()));
        this.EjP = 0L;
        this.Jcg = 0;
        dNu();
    }

    public float Zq() {
        Jcg jcg = this.TEQ;
        if (jcg == null) {
            return 0.0f;
        }
        float f10 = this.Dq;
        return f10 == -2.14748365E9f ? jcg.vS() : f10;
    }

    public void aa() {
        TzV();
        sP(sU());
    }

    @Override
    public void cancel() {
        sP();
        TzV();
    }

    protected void dNu() {
        if (isRunning()) {
            EjP(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    @Override
    public void doFrame(long j10) {
        dNu();
        if (this.TEQ == null || !isRunning()) {
            return;
        }
        com.bytedance.adsdk.sP.HiB.Sj("LottieValueAnimator#doFrame");
        long j11 = this.EjP;
        float fRiZ = (j11 != 0 ? j10 - j11 : 0L) / RiZ();
        float f10 = this.HiB;
        if (sU()) {
            fRiZ = -fRiZ;
        }
        float f11 = f10 + fRiZ;
        boolean zTKC = HiB.TKC(f11, Zq(), uvD());
        float f12 = this.HiB;
        float fSP = HiB.sP(f11, Zq(), uvD());
        this.HiB = fSP;
        if (this.Ym) {
            fSP = (float) Math.floor(fSP);
        }
        this.vS = fSP;
        this.EjP = j10;
        if (!this.Ym || this.HiB != f12) {
            TKC();
        }
        if (!zTKC) {
            if (getRepeatCount() == -1 || this.Jcg < getRepeatCount()) {
                Sj();
                this.Jcg++;
                if (getRepeatMode() == 2) {
                    this.TKC = !this.TKC;
                    uA();
                } else {
                    float fUvD = sU() ? uvD() : Zq();
                    this.HiB = fUvD;
                    this.vS = fUvD;
                }
                this.EjP = j10;
            } else {
                float fZq = this.sP < 0.0f ? Zq() : uvD();
                this.HiB = fZq;
                this.vS = fZq;
                TzV();
                sP(sU());
            }
        }
        dx();
        com.bytedance.adsdk.sP.HiB.sP("LottieValueAnimator#doFrame");
    }

    @Override
    public float getAnimatedFraction() {
        float fZq;
        float fUvD;
        float fZq2;
        if (this.TEQ == null) {
            return 0.0f;
        }
        if (sU()) {
            fZq = uvD() - this.vS;
            fUvD = uvD();
            fZq2 = Zq();
        } else {
            fZq = this.vS - Zq();
            fUvD = uvD();
            fZq2 = Zq();
        }
        return fZq / (fUvD - fZq2);
    }

    @Override
    public Object getAnimatedValue() {
        return Float.valueOf(vS());
    }

    @Override
    public long getDuration() {
        Jcg jcg = this.TEQ;
        if (jcg == null) {
            return 0L;
        }
        return (long) jcg.HiB();
    }

    @Override
    public boolean isRunning() {
        return this.Sj;
    }

    public void sP(float f10) {
        Sj(this.Dq, f10);
    }

    public void sef() {
        this.Sj = true;
        dNu();
        this.EjP = 0L;
        if (sU() && Jcg() == Zq()) {
            Sj(uvD());
        } else if (!sU() && Jcg() == uvD()) {
            Sj(Zq());
        }
        HiB();
    }

    @Override
    public void setRepeatMode(int i10) {
        super.setRepeatMode(i10);
        if (i10 == 2 || !this.TKC) {
            return;
        }
        this.TKC = false;
        uA();
    }

    public void uA() {
        TKC(-TEQ());
    }

    public float uvD() {
        Jcg jcg = this.TEQ;
        if (jcg == null) {
            return 0.0f;
        }
        float f10 = this.uA;
        return f10 == 2.14748365E9f ? jcg.Jcg() : f10;
    }

    public float vS() {
        Jcg jcg = this.TEQ;
        if (jcg == null) {
            return 0.0f;
        }
        return (this.vS - jcg.vS()) / (this.TEQ.Jcg() - this.TEQ.vS());
    }

    public void TKC(float f10) {
        this.sP = f10;
    }

    @Override
    void sP() {
        super.sP();
        sP(sU());
    }

    public void Sj(float f10) {
        if (this.HiB == f10) {
            return;
        }
        float fSP = HiB.sP(f10, Zq(), uvD());
        this.HiB = fSP;
        if (this.Ym) {
            fSP = (float) Math.floor(fSP);
        }
        this.vS = fSP;
        this.EjP = 0L;
        TKC();
    }

    public void Sj(int i10) {
        Sj(i10, (int) this.uA);
    }

    public void Sj(float f10, float f11) {
        if (f10 <= f11) {
            Jcg jcg = this.TEQ;
            float fVS = jcg == null ? -3.4028235E38f : jcg.vS();
            Jcg jcg2 = this.TEQ;
            float fJcg = jcg2 == null ? Float.MAX_VALUE : jcg2.Jcg();
            float fSP = HiB.sP(f10, fVS, fJcg);
            float fSP2 = HiB.sP(f11, fVS, fJcg);
            if (fSP == this.Dq && fSP2 == this.uA) {
                return;
            }
            this.Dq = fSP;
            this.uA = fSP2;
            Sj((int) HiB.sP(this.vS, fSP, fSP2));
            return;
        }
        throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f10), Float.valueOf(f11)));
    }
}
