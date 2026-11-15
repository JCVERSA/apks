package com.bytedance.adsdk.sP.Sj.sP;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;

public abstract class Sj<K, A> {
    private final TKC<K> HiB;
    protected com.bytedance.adsdk.sP.Jcg.sP<A> TKC;
    final List<InterfaceC0175Sj> Sj = new ArrayList(1);
    private boolean EjP = false;
    protected float sP = 0.0f;
    private A vS = null;
    private float Jcg = -1.0f;
    private float Dq = -1.0f;

    private static final class EjP<T> implements TKC<T> {
        private final List<? extends com.bytedance.adsdk.sP.Jcg.Sj<T>> Sj;
        private com.bytedance.adsdk.sP.Jcg.Sj<T> TKC = null;
        private float EjP = -1.0f;
        private com.bytedance.adsdk.sP.Jcg.Sj<T> sP = TKC(0.0f);

        EjP(List<? extends com.bytedance.adsdk.sP.Jcg.Sj<T>> list) {
            this.Sj = list;
        }

        private com.bytedance.adsdk.sP.Jcg.Sj<T> TKC(float f10) {
            List<? extends com.bytedance.adsdk.sP.Jcg.Sj<T>> list = this.Sj;
            com.bytedance.adsdk.sP.Jcg.Sj<T> sj2 = list.get(list.size() - 1);
            if (f10 >= sj2.TKC()) {
                return sj2;
            }
            for (int size = this.Sj.size() - 2; size > 0; size--) {
                com.bytedance.adsdk.sP.Jcg.Sj<T> sj3 = this.Sj.get(size);
                if (this.sP != sj3 && sj3.Sj(f10)) {
                    return sj3;
                }
            }
            return this.Sj.get(0);
        }

        @Override
        public float EjP() {
            List<? extends com.bytedance.adsdk.sP.Jcg.Sj<T>> list = this.Sj;
            return list.get(list.size() - 1).EjP();
        }

        @Override
        public boolean Sj() {
            return false;
        }

        @Override
        public com.bytedance.adsdk.sP.Jcg.Sj<T> sP() {
            return this.sP;
        }

        @Override
        public boolean Sj(float f10) {
            if (this.sP.Sj(f10)) {
                return !this.sP.HiB();
            }
            this.sP = TKC(f10);
            return true;
        }

        @Override
        public boolean sP(float f10) {
            com.bytedance.adsdk.sP.Jcg.Sj<T> sj2 = this.TKC;
            com.bytedance.adsdk.sP.Jcg.Sj<T> sj3 = this.sP;
            if (sj2 == sj3 && this.EjP == f10) {
                return true;
            }
            this.TKC = sj3;
            this.EjP = f10;
            return false;
        }

        @Override
        public float TKC() {
            return this.Sj.get(0).TKC();
        }
    }

    private static final class HiB<T> implements TKC<T> {
        private final com.bytedance.adsdk.sP.Jcg.Sj<T> Sj;
        private float sP = -1.0f;

        HiB(List<? extends com.bytedance.adsdk.sP.Jcg.Sj<T>> list) {
            this.Sj = list.get(0);
        }

        @Override
        public float EjP() {
            return this.Sj.EjP();
        }

        @Override
        public boolean Sj() {
            return false;
        }

        @Override
        public float TKC() {
            return this.Sj.TKC();
        }

        @Override
        public com.bytedance.adsdk.sP.Jcg.Sj<T> sP() {
            return this.Sj;
        }

        @Override
        public boolean Sj(float f10) {
            return !this.Sj.HiB();
        }

        @Override
        public boolean sP(float f10) {
            if (this.sP == f10) {
                return true;
            }
            this.sP = f10;
            return false;
        }
    }

    public interface InterfaceC0175Sj {
        void Sj();
    }

    private interface TKC<T> {
        float EjP();

        boolean Sj();

        boolean Sj(float f10);

        float TKC();

        com.bytedance.adsdk.sP.Jcg.Sj<T> sP();

        boolean sP(float f10);
    }

    private static final class sP<T> implements TKC<T> {
        private sP() {
        }

        @Override
        public float EjP() {
            return 1.0f;
        }

        @Override
        public boolean Sj() {
            return true;
        }

        @Override
        public float TKC() {
            return 0.0f;
        }

        @Override
        public com.bytedance.adsdk.sP.Jcg.Sj<T> sP() {
            throw new IllegalStateException("not implemented");
        }

        @Override
        public boolean Sj(float f10) {
            return false;
        }

        @Override
        public boolean sP(float f10) {
            throw new IllegalStateException("not implemented");
        }
    }

    Sj(List<? extends com.bytedance.adsdk.sP.Jcg.Sj<K>> list) {
        this.HiB = Sj(list);
    }

    private float uA() {
        if (this.Jcg == -1.0f) {
            this.Jcg = this.HiB.TKC();
        }
        return this.Jcg;
    }

    public float Dq() {
        return this.sP;
    }

    float EjP() {
        if (this.EjP) {
            return 0.0f;
        }
        com.bytedance.adsdk.sP.Jcg.Sj<K> sjTKC = TKC();
        if (sjTKC.HiB()) {
            return 0.0f;
        }
        return (this.sP - sjTKC.TKC()) / (sjTKC.EjP() - sjTKC.TKC());
    }

    protected float HiB() {
        com.bytedance.adsdk.sP.Jcg.Sj<K> sjTKC = TKC();
        if (sjTKC == null || sjTKC.HiB()) {
            return 0.0f;
        }
        return sjTKC.TKC.getInterpolation(EjP());
    }

    public A Jcg() {
        float fEjP = EjP();
        if (this.TKC == null && this.HiB.sP(fEjP)) {
            return this.vS;
        }
        com.bytedance.adsdk.sP.Jcg.Sj<K> sjTKC = TKC();
        Interpolator interpolator = sjTKC.EjP;
        A aSj = (interpolator == null || sjTKC.HiB == null) ? Sj(sjTKC, HiB()) : Sj(sjTKC, fEjP, interpolator.getInterpolation(fEjP), sjTKC.HiB.getInterpolation(fEjP));
        this.vS = aSj;
        return aSj;
    }

    abstract A Sj(com.bytedance.adsdk.sP.Jcg.Sj<K> sj2, float f10);

    public void Sj() {
        this.EjP = true;
    }

    protected com.bytedance.adsdk.sP.Jcg.Sj<K> TKC() {
        com.bytedance.adsdk.sP.HiB.Sj("BaseKeyframeAnimation#getCurrentKeyframe");
        com.bytedance.adsdk.sP.Jcg.Sj<K> sjSP = this.HiB.sP();
        com.bytedance.adsdk.sP.HiB.sP("BaseKeyframeAnimation#getCurrentKeyframe");
        return sjSP;
    }

    public void sP() {
        for (int i10 = 0; i10 < this.Sj.size(); i10++) {
            this.Sj.get(i10).Sj();
        }
    }

    float vS() {
        if (this.Dq == -1.0f) {
            this.Dq = this.HiB.EjP();
        }
        return this.Dq;
    }

    public void Sj(InterfaceC0175Sj interfaceC0175Sj) {
        this.Sj.add(interfaceC0175Sj);
    }

    public void Sj(float f10) {
        if (this.HiB.Sj()) {
            return;
        }
        if (f10 < uA()) {
            f10 = uA();
        } else if (f10 > vS()) {
            f10 = vS();
        }
        if (f10 == this.sP) {
            return;
        }
        this.sP = f10;
        if (this.HiB.Sj(f10)) {
            sP();
        }
    }

    protected A Sj(com.bytedance.adsdk.sP.Jcg.Sj<K> sj2, float f10, float f11, float f12) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    private static <T> TKC<T> Sj(List<? extends com.bytedance.adsdk.sP.Jcg.Sj<T>> list) {
        if (list.isEmpty()) {
            return new sP();
        }
        if (list.size() == 1) {
            return new HiB(list);
        }
        return new EjP(list);
    }
}
