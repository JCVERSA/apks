package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieDrawable;
import defpackage.ab0;
import defpackage.dc;
import defpackage.hnb;
import defpackage.it5;
import defpackage.iu5;
import defpackage.plb;
import defpackage.tf5;
import defpackage.ur5;
import defpackage.xy3;
import defpackage.yh5;
import defpackage.zf9;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class b extends com.airbnb.lottie.model.layer.a {
    public ab0 E;
    public final List F;
    public final RectF G;
    public final RectF H;
    public final Paint I;
    public Boolean J;
    public Boolean K;
    public float L;
    public boolean M;

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            a = iArr;
            try {
                iArr[Layer.MatteType.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Layer.MatteType.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public b(LottieDrawable lottieDrawable, Layer layer, List list, ur5 ur5Var) {
        int i;
        com.airbnb.lottie.model.layer.a aVar;
        super(lottieDrawable, layer);
        this.F = new ArrayList();
        this.G = new RectF();
        this.H = new RectF();
        this.I = new Paint();
        this.M = true;
        dc dcVarV = layer.v();
        if (dcVarV != null) {
            xy3 xy3VarH = dcVarV.h();
            this.E = xy3VarH;
            i(xy3VarH);
            this.E.a(this);
        } else {
            this.E = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(ur5Var.k().size());
        int size = list.size() - 1;
        com.airbnb.lottie.model.layer.a aVar2 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            Layer layer2 = (Layer) list.get(size);
            com.airbnb.lottie.model.layer.a aVarU = com.airbnb.lottie.model.layer.a.u(this, layer2, lottieDrawable, ur5Var);
            if (aVarU != null) {
                longSparseArray.put(aVarU.z().e(), aVarU);
                if (aVar2 != null) {
                    aVar2.J(aVarU);
                    aVar2 = null;
                } else {
                    this.F.add(0, aVarU);
                    int i2 = a.a[layer2.i().ordinal()];
                    if (i2 == 1 || i2 == 2) {
                        aVar2 = aVarU;
                    }
                }
            }
            size--;
        }
        for (i = 0; i < longSparseArray.size(); i++) {
            com.airbnb.lottie.model.layer.a aVar3 = (com.airbnb.lottie.model.layer.a) longSparseArray.get(longSparseArray.keyAt(i));
            if (aVar3 != null && (aVar = (com.airbnb.lottie.model.layer.a) longSparseArray.get(aVar3.z().k())) != null) {
                aVar3.L(aVar);
            }
        }
    }

    @Override
    public void I(tf5 tf5Var, int i, List list, tf5 tf5Var2) {
        for (int i2 = 0; i2 < this.F.size(); i2++) {
            ((com.airbnb.lottie.model.layer.a) this.F.get(i2)).c(tf5Var, i, list, tf5Var2);
        }
    }

    @Override
    public void K(boolean z) {
        super.K(z);
        Iterator it = this.F.iterator();
        while (it.hasNext()) {
            ((com.airbnb.lottie.model.layer.a) it.next()).K(z);
        }
    }

    @Override
    public void M(float f) {
        if (yh5.h()) {
            yh5.b("CompositionLayer#setProgress");
        }
        this.L = f;
        super.M(f);
        if (this.E != null) {
            f = ((((Float) this.E.h()).floatValue() * this.q.c().i()) - this.q.c().p()) / (this.p.O().e() + 0.01f);
        }
        if (this.E == null) {
            f -= this.q.s();
        }
        if (this.q.w() != 0.0f && !"__container".equals(this.q.j())) {
            f /= this.q.w();
        }
        for (int size = this.F.size() - 1; size >= 0; size--) {
            ((com.airbnb.lottie.model.layer.a) this.F.get(size)).M(f);
        }
        if (yh5.h()) {
            yh5.c("CompositionLayer#setProgress");
        }
    }

    public float P() {
        return this.L;
    }

    public boolean Q() {
        if (this.K == null) {
            for (int size = this.F.size() - 1; size >= 0; size--) {
                com.airbnb.lottie.model.layer.a aVar = (com.airbnb.lottie.model.layer.a) this.F.get(size);
                if (aVar instanceof zf9) {
                    if (aVar.A()) {
                        this.K = Boolean.TRUE;
                        return true;
                    }
                } else if ((aVar instanceof b) && ((b) aVar).Q()) {
                    this.K = Boolean.TRUE;
                    return true;
                }
            }
            this.K = Boolean.FALSE;
        }
        return this.K.booleanValue();
    }

    public boolean R() {
        if (this.J == null) {
            if (B()) {
                this.J = Boolean.TRUE;
                return true;
            }
            for (int size = this.F.size() - 1; size >= 0; size--) {
                if (((com.airbnb.lottie.model.layer.a) this.F.get(size)).B()) {
                    this.J = Boolean.TRUE;
                    return true;
                }
            }
            this.J = Boolean.FALSE;
        }
        return this.J.booleanValue();
    }

    public void S(boolean z) {
        this.M = z;
    }

    @Override
    public void a(RectF rectF, Matrix matrix, boolean z) {
        super.a(rectF, matrix, z);
        for (int size = this.F.size() - 1; size >= 0; size--) {
            this.G.set(0.0f, 0.0f, 0.0f, 0.0f);
            ((com.airbnb.lottie.model.layer.a) this.F.get(size)).a(this.G, this.o, true);
            rectF.union(this.G);
        }
    }

    @Override
    public void h(Object obj, iu5 iu5Var) {
        super.h(obj, iu5Var);
        if (obj == it5.E) {
            if (iu5Var == null) {
                ab0 ab0Var = this.E;
                if (ab0Var != null) {
                    ab0Var.o(null);
                    return;
                }
                return;
            }
            hnb hnbVar = new hnb(iu5Var);
            this.E = hnbVar;
            hnbVar.a(this);
            i(this.E);
        }
    }

    @Override
    public void t(Canvas canvas, Matrix matrix, int i) {
        if (yh5.h()) {
            yh5.b("CompositionLayer#draw");
        }
        this.H.set(0.0f, 0.0f, this.q.m(), this.q.l());
        matrix.mapRect(this.H);
        boolean z = this.p.m0() && this.F.size() > 1 && i != 255;
        if (z) {
            this.I.setAlpha(i);
            plb.n(canvas, this.H, this.I);
        } else {
            canvas.save();
        }
        if (z) {
            i = 255;
        }
        for (int size = this.F.size() - 1; size >= 0; size--) {
            if (((this.M || !"__container".equals(this.q.j())) && !this.H.isEmpty()) ? canvas.clipRect(this.H) : true) {
                ((com.airbnb.lottie.model.layer.a) this.F.get(size)).d(canvas, matrix, i);
            }
        }
        canvas.restore();
        if (yh5.h()) {
            yh5.c("CompositionLayer#draw");
        }
    }
}
