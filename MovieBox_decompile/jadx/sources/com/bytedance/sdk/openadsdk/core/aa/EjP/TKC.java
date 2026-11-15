package com.bytedance.sdk.openadsdk.core.aa.EjP;

import com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import v5.a;

public class TKC extends EjP {
    private final Sj EjP;
    private final List<sP> Sj = Collections.synchronizedList(new ArrayList());
    private int sP = 1;
    private int TKC = 1;

    public interface sP extends a.InterfaceC0909a {
        @Override
        void EjP(a aVar);

        @Override
        void HiB(a aVar);

        void Sj(int i10, int i11);

        @Override
        void Sj(a aVar);

        @Override
        void Sj(a aVar, int i10);

        @Override
        void Sj(a aVar, int i10, int i11);

        @Override
        void Sj(a aVar, int i10, int i11, int i12);

        @Override
        void Sj(a aVar, long j10);

        @Override
        void Sj(a aVar, long j10, long j11);

        @Override
        void Sj(a aVar, a6.a aVar2);

        @Override
        void Sj(a aVar, boolean z10);

        @Override
        void TKC(a aVar);

        @Override
        void sP(a aVar);

        @Override
        void sP(a aVar, int i10);
    }

    public TKC() {
        Sj sj2 = new Sj();
        this.EjP = sj2;
        super.Sj(sj2);
        Sj(500);
    }

    static int Sj(TKC tkc) {
        int i10 = tkc.TKC;
        tkc.TKC = i10 + 1;
        return i10;
    }

    @Override
    public long dNu() {
        return super.dNu() + (((long) (this.TKC - 1)) * super.uvD());
    }

    public int sU() {
        return this.TKC;
    }

    @Override
    public long uvD() {
        return super.uvD() * ((long) this.sP);
    }

    private class Sj implements a.InterfaceC0909a {
        private Sj() {
        }

        @Override
        public void EjP(a aVar) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).EjP(aVar);
            }
        }

        @Override
        public void HiB(a aVar) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).HiB(aVar);
            }
        }

        @Override
        public void Sj(a aVar) {
            TKC.Sj(TKC.this);
            if (TKC.this.TKC > TKC.this.sP) {
                Iterator it = TKC.this.Sj.iterator();
                while (it.hasNext()) {
                    ((sP) it.next()).Sj(aVar);
                }
            } else {
                Iterator it2 = TKC.this.Sj.iterator();
                while (it2.hasNext()) {
                    ((sP) it2.next()).Sj(TKC.this.TKC, TKC.this.sP);
                }
                TKC.this.uA();
            }
        }

        @Override
        public void TKC(a aVar) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).TKC(aVar);
            }
        }

        @Override
        public void sP(a aVar) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).sP(aVar);
            }
        }

        @Override
        public void sP(a aVar, int i10) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).sP(aVar, i10);
            }
        }

        @Override
        public void Sj(a aVar, long j10) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).Sj(aVar, j10);
            }
        }

        @Override
        public void Sj(a aVar, a6.a aVar2) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).Sj(aVar, aVar2);
            }
        }

        @Override
        public void Sj(a aVar, boolean z10) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).Sj(aVar, z10);
            }
        }

        @Override
        public void Sj(a aVar, int i10, int i11) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).Sj(aVar, i10, i11);
            }
        }

        @Override
        public void Sj(a aVar, int i10, int i11, int i12) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).Sj(aVar, i10, i11, i12);
            }
        }

        @Override
        public void Sj(a aVar, int i10) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).Sj(aVar, i10);
            }
        }

        @Override
        public void Sj(a aVar, long j10, long j11) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).Sj(aVar, j10, j11);
            }
        }
    }

    @Override
    public void Sj(a.InterfaceC0909a interfaceC0909a) {
        if (!(interfaceC0909a instanceof sP)) {
            super.Sj(interfaceC0909a);
        } else {
            if (this.Sj.contains(interfaceC0909a)) {
                return;
            }
            this.Sj.add((sP) interfaceC0909a);
        }
    }

    public void TKC(int i10) {
        this.sP = Math.max(1, i10);
    }
}
