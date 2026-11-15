package com.bytedance.adsdk.sP.Sj.Sj;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

public class EjP implements Fmk, HiB, com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0175Sj {
    private final List<TKC> Dq;
    private final Path EjP;
    private final RectF HiB;
    private final boolean Jcg;
    private final Paint Sj;
    private List<Fmk> TEQ;
    private final Matrix TKC;
    private com.bytedance.adsdk.sP.Sj.sP.uvD Ym;
    private final RectF sP;
    private final com.bytedance.adsdk.sP.uA uA;
    private final String vS;

    public EjP(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2, com.bytedance.adsdk.sP.TKC.sP.uvD uvd, com.bytedance.adsdk.sP.Jcg jcg) {
        this(uAVar, sj2, uvd.Sj(), uvd.TKC(), Sj(uAVar, jcg, sj2, uvd.sP()), Sj(uvd.sP()));
    }

    private boolean HiB() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.Dq.size(); i11++) {
            if ((this.Dq.get(i11) instanceof HiB) && (i10 = i10 + 1) >= 2) {
                return true;
            }
        }
        return false;
    }

    private static List<TKC> Sj(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.Jcg jcg, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2, List<com.bytedance.adsdk.sP.TKC.sP.TKC> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            TKC tkcSj = list.get(i10).Sj(uAVar, jcg, sj2);
            if (tkcSj != null) {
                arrayList.add(tkcSj);
            }
        }
        return arrayList;
    }

    @Override
    public Path EjP() {
        this.TKC.reset();
        com.bytedance.adsdk.sP.Sj.sP.uvD uvd = this.Ym;
        if (uvd != null) {
            this.TKC.set(uvd.EjP());
        }
        this.EjP.reset();
        if (this.Jcg) {
            return this.EjP;
        }
        for (int size = this.Dq.size() - 1; size >= 0; size--) {
            TKC tkc = this.Dq.get(size);
            if (tkc instanceof Fmk) {
                this.EjP.addPath(((Fmk) tkc).EjP(), this.TKC);
            }
        }
        return this.EjP;
    }

    Matrix TKC() {
        com.bytedance.adsdk.sP.Sj.sP.uvD uvd = this.Ym;
        if (uvd != null) {
            return uvd.EjP();
        }
        this.TKC.reset();
        return this.TKC;
    }

    List<Fmk> sP() {
        if (this.TEQ == null) {
            this.TEQ = new ArrayList();
            for (int i10 = 0; i10 < this.Dq.size(); i10++) {
                TKC tkc = this.Dq.get(i10);
                if (tkc instanceof Fmk) {
                    this.TEQ.add((Fmk) tkc);
                }
            }
        }
        return this.TEQ;
    }

    EjP(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2, String str, boolean z10, List<TKC> list, com.bytedance.adsdk.sP.TKC.Sj.aa aaVar) {
        this.Sj = new com.bytedance.adsdk.sP.Sj.Sj();
        this.sP = new RectF();
        this.TKC = new Matrix();
        this.EjP = new Path();
        this.HiB = new RectF();
        this.vS = str;
        this.uA = uAVar;
        this.Jcg = z10;
        this.Dq = list;
        if (aaVar != null) {
            com.bytedance.adsdk.sP.Sj.sP.uvD uvdTEQ = aaVar.TEQ();
            this.Ym = uvdTEQ;
            uvdTEQ.Sj(sj2);
            this.Ym.Sj(this);
        }
        ArrayList arrayList = new ArrayList();
        for (int size = list.size() - 1; size >= 0; size--) {
            TKC tkc = list.get(size);
            if (tkc instanceof TEQ) {
                arrayList.add((TEQ) tkc);
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            ((TEQ) arrayList.get(size2)).Sj(list.listIterator(list.size()));
        }
    }

    static com.bytedance.adsdk.sP.TKC.Sj.aa Sj(List<com.bytedance.adsdk.sP.TKC.sP.TKC> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            com.bytedance.adsdk.sP.TKC.sP.TKC tkc = list.get(i10);
            if (tkc instanceof com.bytedance.adsdk.sP.TKC.Sj.aa) {
                return (com.bytedance.adsdk.sP.TKC.Sj.aa) tkc;
            }
        }
        return null;
    }

    @Override
    public void Sj() {
        this.uA.invalidateSelf();
    }

    @Override
    public void Sj(List<TKC> list, List<TKC> list2) {
        ArrayList arrayList = new ArrayList(list.size() + this.Dq.size());
        arrayList.addAll(list);
        for (int size = this.Dq.size() - 1; size >= 0; size--) {
            TKC tkc = this.Dq.get(size);
            tkc.Sj(arrayList, this.Dq.subList(0, size));
            arrayList.add(tkc);
        }
    }

    @Override
    public void Sj(Canvas canvas, Matrix matrix, int i10) {
        if (this.Jcg) {
            return;
        }
        this.TKC.set(matrix);
        com.bytedance.adsdk.sP.Sj.sP.uvD uvd = this.Ym;
        if (uvd != null) {
            this.TKC.preConcat(uvd.EjP());
            i10 = (int) (((((this.Ym.Sj() == null ? 100 : this.Ym.Sj().Jcg().intValue()) / 100.0f) * i10) / 255.0f) * 255.0f);
        }
        boolean z10 = this.uA.uA() && HiB() && i10 != 255;
        if (z10) {
            this.sP.set(0.0f, 0.0f, 0.0f, 0.0f);
            Sj(this.sP, this.TKC, true);
            this.Sj.setAlpha(i10);
            com.bytedance.adsdk.sP.vS.vS.Sj(canvas, this.sP, this.Sj);
        }
        if (z10) {
            i10 = 255;
        }
        for (int size = this.Dq.size() - 1; size >= 0; size--) {
            TKC tkc = this.Dq.get(size);
            if (tkc instanceof HiB) {
                ((HiB) tkc).Sj(canvas, this.TKC, i10);
            }
        }
        if (z10) {
            canvas.restore();
        }
    }

    @Override
    public void Sj(RectF rectF, Matrix matrix, boolean z10) {
        this.TKC.set(matrix);
        com.bytedance.adsdk.sP.Sj.sP.uvD uvd = this.Ym;
        if (uvd != null) {
            this.TKC.preConcat(uvd.EjP());
        }
        this.HiB.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.Dq.size() - 1; size >= 0; size--) {
            TKC tkc = this.Dq.get(size);
            if (tkc instanceof HiB) {
                ((HiB) tkc).Sj(this.HiB, this.TKC, z10);
                rectF.union(this.HiB);
            }
        }
    }
}
