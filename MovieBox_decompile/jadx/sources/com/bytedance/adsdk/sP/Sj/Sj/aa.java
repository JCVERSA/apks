package com.bytedance.adsdk.sP.Sj.Sj;

import android.annotation.TargetApi;
import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

@TargetApi(19)
public class aa implements Fmk, TEQ {
    private final String EjP;
    private final com.bytedance.adsdk.sP.TKC.sP.uA vS;
    private final Path Sj = new Path();
    private final Path sP = new Path();
    private final Path TKC = new Path();
    private final List<Fmk> HiB = new ArrayList();

    static class AnonymousClass1 {
        static final int[] Sj;

        static {
            int[] iArr = new int[com.bytedance.adsdk.sP.TKC.sP.uA.Sj.values().length];
            Sj = iArr;
            try {
                iArr[com.bytedance.adsdk.sP.TKC.sP.uA.Sj.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Sj[com.bytedance.adsdk.sP.TKC.sP.uA.Sj.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Sj[com.bytedance.adsdk.sP.TKC.sP.uA.Sj.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                Sj[com.bytedance.adsdk.sP.TKC.sP.uA.Sj.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                Sj[com.bytedance.adsdk.sP.TKC.sP.uA.Sj.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public aa(com.bytedance.adsdk.sP.TKC.sP.uA uAVar) {
        this.EjP = uAVar.Sj();
        this.vS = uAVar;
    }

    @Override
    public Path EjP() {
        this.TKC.reset();
        if (this.vS.TKC()) {
            return this.TKC;
        }
        int i10 = AnonymousClass1.Sj[this.vS.sP().ordinal()];
        if (i10 == 1) {
            Sj();
        } else if (i10 == 2) {
            Sj(Path.Op.UNION);
        } else if (i10 == 3) {
            Sj(Path.Op.REVERSE_DIFFERENCE);
        } else if (i10 == 4) {
            Sj(Path.Op.INTERSECT);
        } else if (i10 == 5) {
            Sj(Path.Op.XOR);
        }
        return this.TKC;
    }

    @Override
    public void Sj(ListIterator<TKC> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            TKC tkcPrevious = listIterator.previous();
            if (tkcPrevious instanceof Fmk) {
                this.HiB.add((Fmk) tkcPrevious);
                listIterator.remove();
            }
        }
    }

    @Override
    public void Sj(List<TKC> list, List<TKC> list2) {
        for (int i10 = 0; i10 < this.HiB.size(); i10++) {
            this.HiB.get(i10).Sj(list, list2);
        }
    }

    private void Sj() {
        for (int i10 = 0; i10 < this.HiB.size(); i10++) {
            this.TKC.addPath(this.HiB.get(i10).EjP());
        }
    }

    @TargetApi(19)
    private void Sj(Path.Op op2) {
        this.sP.reset();
        this.Sj.reset();
        for (int size = this.HiB.size() - 1; size > 0; size--) {
            Fmk fmk = this.HiB.get(size);
            if (fmk instanceof EjP) {
                EjP ejP = (EjP) fmk;
                List<Fmk> listSP = ejP.sP();
                for (int size2 = listSP.size() - 1; size2 >= 0; size2--) {
                    Path pathEjP = listSP.get(size2).EjP();
                    pathEjP.transform(ejP.TKC());
                    this.sP.addPath(pathEjP);
                }
            } else {
                this.sP.addPath(fmk.EjP());
            }
        }
        Fmk fmk2 = this.HiB.get(0);
        if (fmk2 instanceof EjP) {
            EjP ejP2 = (EjP) fmk2;
            List<Fmk> listSP2 = ejP2.sP();
            for (int i10 = 0; i10 < listSP2.size(); i10++) {
                Path pathEjP2 = listSP2.get(i10).EjP();
                pathEjP2.transform(ejP2.TKC());
                this.Sj.addPath(pathEjP2);
            }
        } else {
            this.Sj.set(fmk2.EjP());
        }
        this.TKC.op(this.Sj, this.sP, op2);
    }
}
