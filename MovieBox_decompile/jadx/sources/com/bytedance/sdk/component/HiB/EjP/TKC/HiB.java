package com.bytedance.sdk.component.HiB.EjP.TKC;

import android.content.Context;
import com.bytedance.sdk.component.HiB.Fmk;
import com.bytedance.sdk.component.HiB.TzV;
import com.bytedance.sdk.component.HiB.aa;
import com.bytedance.sdk.component.HiB.dNu;
import com.bytedance.sdk.component.HiB.dx;
import com.bytedance.sdk.component.HiB.sU;
import java.util.concurrent.ExecutorService;

public class HiB implements Fmk {
    private sU Dq;
    private dNu EjP;
    private TzV HiB;
    private com.bytedance.sdk.component.HiB.sP Jcg;
    private aa Sj;
    private com.bytedance.sdk.component.HiB.EjP TKC;
    private ExecutorService sP;
    private dx uA;
    private com.bytedance.sdk.component.HiB.TKC vS;

    public static class Sj {
        private sU Dq;
        private dNu EjP;
        private TzV HiB;
        private com.bytedance.sdk.component.HiB.sP Jcg;
        private aa Sj;
        private com.bytedance.sdk.component.HiB.EjP TKC;
        private ExecutorService sP;
        private dx uA;
        private com.bytedance.sdk.component.HiB.TKC vS;

        public Sj Sj(com.bytedance.sdk.component.HiB.sP sPVar) {
            this.Jcg = sPVar;
            return this;
        }

        public Sj Sj(dx dxVar) {
            this.uA = dxVar;
            return this;
        }

        public Sj Sj(sU sUVar) {
            this.Dq = sUVar;
            return this;
        }

        public Sj Sj(com.bytedance.sdk.component.HiB.EjP ejP) {
            this.TKC = ejP;
            return this;
        }

        public HiB Sj() {
            return new HiB(this);
        }
    }

    @Override
    public com.bytedance.sdk.component.HiB.sP Dq() {
        return this.Jcg;
    }

    @Override
    public com.bytedance.sdk.component.HiB.EjP EjP() {
        return this.TKC;
    }

    @Override
    public dNu HiB() {
        return this.EjP;
    }

    @Override
    public com.bytedance.sdk.component.HiB.TKC Jcg() {
        return this.vS;
    }

    @Override
    public aa Sj() {
        return this.Sj;
    }

    @Override
    public sU TKC() {
        return this.Dq;
    }

    @Override
    public ExecutorService sP() {
        return this.sP;
    }

    @Override
    public dx uA() {
        return this.uA;
    }

    @Override
    public TzV vS() {
        return this.HiB;
    }

    private HiB(Sj sj2) {
        this.Sj = sj2.Sj;
        this.sP = sj2.sP;
        this.TKC = sj2.TKC;
        this.EjP = sj2.EjP;
        this.HiB = sj2.HiB;
        this.vS = sj2.vS;
        this.Jcg = sj2.Jcg;
        this.Dq = sj2.Dq;
        this.uA = sj2.uA;
    }

    public static HiB Sj(Context context) {
        return new Sj().Sj();
    }
}
