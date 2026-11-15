package com.airbnb.lottie.model.layer;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import androidx.core.graphics.PaintCompat;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.content.Mask;
import defpackage.ab0;
import defpackage.ag0;
import defpackage.ay4;
import defpackage.e37;
import defpackage.es9;
import defpackage.iu5;
import defpackage.jha;
import defpackage.l33;
import defpackage.mq5;
import defpackage.ni5;
import defpackage.plb;
import defpackage.tf5;
import defpackage.u23;
import defpackage.uf5;
import defpackage.ur5;
import defpackage.w16;
import defpackage.x6b;
import defpackage.xy3;
import defpackage.yh5;
import defpackage.zf9;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public abstract class a implements u23, ab0.b, uf5 {
    public Paint A;
    public float B;
    public BlurMaskFilter C;
    public ni5 D;
    public final Path a = new Path();
    public final Matrix b = new Matrix();
    public final Matrix c = new Matrix();
    public final Paint d = new ni5(1);
    public final Paint e;
    public final Paint f;
    public final Paint g;
    public final Paint h;
    public final RectF i;
    public final RectF j;
    public final RectF k;
    public final RectF l;
    public final RectF m;
    public final String n;
    public final Matrix o;
    public final LottieDrawable p;
    public final Layer q;
    public w16 r;
    public xy3 s;
    public a t;
    public a u;
    public List v;
    public final List w;
    public final x6b x;
    public boolean y;
    public boolean z;

    public static class C0023a {
        public static final int[] a;
        public static final int[] b;

        static {
            int[] iArr = new int[Mask.MaskMode.values().length];
            b = iArr;
            try {
                iArr[Mask.MaskMode.MASK_MODE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[Mask.MaskMode.MASK_MODE_SUBTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[Mask.MaskMode.MASK_MODE_INTERSECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[Mask.MaskMode.MASK_MODE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[Layer.LayerType.values().length];
            a = iArr2;
            try {
                iArr2[Layer.LayerType.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[Layer.LayerType.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[Layer.LayerType.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[Layer.LayerType.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[Layer.LayerType.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[Layer.LayerType.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[Layer.LayerType.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public a(LottieDrawable lottieDrawable, Layer layer) {
        PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
        this.e = new ni5(1, mode);
        PorterDuff.Mode mode2 = PorterDuff.Mode.DST_OUT;
        this.f = new ni5(1, mode2);
        ni5 ni5Var = new ni5(1);
        this.g = ni5Var;
        this.h = new ni5(PorterDuff.Mode.CLEAR);
        this.i = new RectF();
        this.j = new RectF();
        this.k = new RectF();
        this.l = new RectF();
        this.m = new RectF();
        this.o = new Matrix();
        this.w = new ArrayList();
        this.y = true;
        this.B = 0.0f;
        this.p = lottieDrawable;
        this.q = layer;
        this.n = layer.j() + "#draw";
        if (layer.i() == Layer.MatteType.INVERT) {
            ni5Var.setXfermode(new PorterDuffXfermode(mode2));
        } else {
            ni5Var.setXfermode(new PorterDuffXfermode(mode));
        }
        x6b x6bVarB = layer.x().b();
        this.x = x6bVarB;
        x6bVarB.b(this);
        if (layer.h() != null && !layer.h().isEmpty()) {
            w16 w16Var = new w16(layer.h());
            this.r = w16Var;
            Iterator it = w16Var.a().iterator();
            while (it.hasNext()) {
                ((ab0) it.next()).a(this);
            }
            for (ab0 ab0Var : this.r.c()) {
                i(ab0Var);
                ab0Var.a(this);
            }
        }
        O();
    }

    public static a u(b bVar, Layer layer, LottieDrawable lottieDrawable, ur5 ur5Var) {
        switch (C0023a.a[layer.g().ordinal()]) {
            case 1:
                return new zf9(lottieDrawable, layer, bVar, ur5Var);
            case 2:
                return new b(lottieDrawable, layer, ur5Var.o(layer.n()), ur5Var);
            case 3:
                return new es9(lottieDrawable, layer);
            case 4:
                return new ay4(lottieDrawable, layer);
            case 5:
                return new e37(lottieDrawable, layer);
            case 6:
                return new jha(lottieDrawable, layer);
            default:
                mq5.c("Unknown layer type " + layer.g());
                return null;
        }
    }

    public boolean A() {
        w16 w16Var = this.r;
        return (w16Var == null || w16Var.a().isEmpty()) ? false : true;
    }

    public boolean B() {
        return this.t != null;
    }

    public final void C(RectF rectF, Matrix matrix) {
        this.k.set(0.0f, 0.0f, 0.0f, 0.0f);
        if (A()) {
            int size = this.r.b().size();
            for (int i = 0; i < size; i++) {
                Mask mask = (Mask) this.r.b().get(i);
                Path path = (Path) ((ab0) this.r.a().get(i)).h();
                if (path != null) {
                    this.a.set(path);
                    this.a.transform(matrix);
                    int i2 = C0023a.b[mask.a().ordinal()];
                    if (i2 == 1 || i2 == 2) {
                        return;
                    }
                    if ((i2 == 3 || i2 == 4) && mask.d()) {
                        return;
                    }
                    this.a.computeBounds(this.m, false);
                    if (i == 0) {
                        this.k.set(this.m);
                    } else {
                        RectF rectF2 = this.k;
                        rectF2.set(Math.min(rectF2.left, this.m.left), Math.min(this.k.top, this.m.top), Math.max(this.k.right, this.m.right), Math.max(this.k.bottom, this.m.bottom));
                    }
                }
            }
            if (rectF.intersect(this.k)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    public final void D(RectF rectF, Matrix matrix) {
        if (B() && this.q.i() != Layer.MatteType.INVERT) {
            this.l.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.t.a(this.l, matrix, true);
            if (rectF.intersect(this.l)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    public final void E() {
        this.p.invalidateSelf();
    }

    public final void F() {
        N(this.s.q() == 1.0f);
    }

    public final void G(float f) {
        this.p.O().n().a(this.q.j(), f);
    }

    public void H(ab0 ab0Var) {
        this.w.remove(ab0Var);
    }

    public void I(tf5 tf5Var, int i, List list, tf5 tf5Var2) {
    }

    public void J(a aVar) {
        this.t = aVar;
    }

    public void K(boolean z) {
        if (z && this.A == null) {
            this.A = new ni5();
        }
        this.z = z;
    }

    public void L(a aVar) {
        this.u = aVar;
    }

    public void M(float f) {
        if (yh5.h()) {
            yh5.b("BaseLayer#setProgress");
            yh5.b("BaseLayer#setProgress.transform");
        }
        this.x.j(f);
        if (yh5.h()) {
            yh5.c("BaseLayer#setProgress.transform");
        }
        if (this.r != null) {
            if (yh5.h()) {
                yh5.b("BaseLayer#setProgress.mask");
            }
            for (int i = 0; i < this.r.a().size(); i++) {
                ((ab0) this.r.a().get(i)).n(f);
            }
            if (yh5.h()) {
                yh5.c("BaseLayer#setProgress.mask");
            }
        }
        if (this.s != null) {
            if (yh5.h()) {
                yh5.b("BaseLayer#setProgress.inout");
            }
            this.s.n(f);
            if (yh5.h()) {
                yh5.c("BaseLayer#setProgress.inout");
            }
        }
        if (this.t != null) {
            if (yh5.h()) {
                yh5.b("BaseLayer#setProgress.matte");
            }
            this.t.M(f);
            if (yh5.h()) {
                yh5.c("BaseLayer#setProgress.matte");
            }
        }
        if (yh5.h()) {
            yh5.b("BaseLayer#setProgress.animations." + this.w.size());
        }
        for (int i2 = 0; i2 < this.w.size(); i2++) {
            ((ab0) this.w.get(i2)).n(f);
        }
        if (yh5.h()) {
            yh5.c("BaseLayer#setProgress.animations." + this.w.size());
            yh5.c("BaseLayer#setProgress");
        }
    }

    public final void N(boolean z) {
        if (z != this.y) {
            this.y = z;
            E();
        }
    }

    public final void O() {
        if (this.q.f().isEmpty()) {
            N(true);
            return;
        }
        xy3 xy3Var = new xy3(this.q.f());
        this.s = xy3Var;
        xy3Var.m();
        this.s.a(new ab0.b() {
            @Override
            public final void e() {
                this.a.F();
            }
        });
        N(((Float) this.s.h()).floatValue() == 1.0f);
        i(this.s);
    }

    @Override
    public void a(RectF rectF, Matrix matrix, boolean z) {
        this.i.set(0.0f, 0.0f, 0.0f, 0.0f);
        r();
        this.o.set(matrix);
        if (z) {
            List list = this.v;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.o.preConcat(((a) this.v.get(size)).x.f());
                }
            } else {
                a aVar = this.u;
                if (aVar != null) {
                    this.o.preConcat(aVar.x.f());
                }
            }
        }
        this.o.preConcat(this.x.f());
    }

    @Override
    public void c(tf5 tf5Var, int i, List list, tf5 tf5Var2) {
        a aVar = this.t;
        if (aVar != null) {
            tf5 tf5VarA = tf5Var2.a(aVar.getName());
            if (tf5Var.c(this.t.getName(), i)) {
                list.add(tf5VarA.i(this.t));
            }
            if (tf5Var.h(getName(), i)) {
                this.t.I(tf5Var, tf5Var.e(this.t.getName(), i) + i, list, tf5VarA);
            }
        }
        if (tf5Var.g(getName(), i)) {
            if (!"__container".equals(getName())) {
                tf5Var2 = tf5Var2.a(getName());
                if (tf5Var.c(getName(), i)) {
                    list.add(tf5Var2.i(this));
                }
            }
            if (tf5Var.h(getName(), i)) {
                I(tf5Var, i + tf5Var.e(getName(), i), list, tf5Var2);
            }
        }
    }

    @Override
    public void d(Canvas canvas, Matrix matrix, int i) {
        Paint paint;
        Integer num;
        yh5.b(this.n);
        if (!this.y || this.q.y()) {
            yh5.c(this.n);
            return;
        }
        r();
        if (yh5.h()) {
            yh5.b("Layer#parentMatrix");
        }
        this.b.reset();
        this.b.set(matrix);
        for (int size = this.v.size() - 1; size >= 0; size--) {
            this.b.preConcat(((a) this.v.get(size)).x.f());
        }
        if (yh5.h()) {
            yh5.c("Layer#parentMatrix");
        }
        ab0 ab0VarH = this.x.h();
        int iIntValue = (int) ((((i / 255.0f) * ((ab0VarH == null || (num = (Integer) ab0VarH.h()) == null) ? 100 : num.intValue())) / 100.0f) * 255.0f);
        if (!B() && !A() && v() == LBlendMode.NORMAL) {
            this.b.preConcat(this.x.f());
            if (yh5.h()) {
                yh5.b("Layer#drawLayer");
            }
            t(canvas, this.b, iIntValue);
            if (yh5.h()) {
                yh5.c("Layer#drawLayer");
            }
            G(yh5.c(this.n));
            return;
        }
        if (yh5.h()) {
            yh5.b("Layer#computeBounds");
        }
        a(this.i, this.b, false);
        D(this.i, matrix);
        this.b.preConcat(this.x.f());
        C(this.i, this.b);
        this.j.set(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
        canvas.getMatrix(this.c);
        if (!this.c.isIdentity()) {
            Matrix matrix2 = this.c;
            matrix2.invert(matrix2);
            this.c.mapRect(this.j);
        }
        if (!this.i.intersect(this.j)) {
            this.i.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
        if (yh5.h()) {
            yh5.c("Layer#computeBounds");
        }
        if (this.i.width() >= 1.0f && this.i.height() >= 1.0f) {
            if (yh5.h()) {
                yh5.b("Layer#saveLayer");
            }
            this.d.setAlpha(255);
            PaintCompat.setBlendMode(this.d, v().toNativeBlendMode());
            plb.n(canvas, this.i, this.d);
            if (yh5.h()) {
                yh5.c("Layer#saveLayer");
            }
            if (v() != LBlendMode.MULTIPLY) {
                s(canvas);
            } else {
                if (this.D == null) {
                    ni5 ni5Var = new ni5();
                    this.D = ni5Var;
                    ni5Var.setColor(-1);
                }
                RectF rectF = this.i;
                canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.D);
            }
            if (yh5.h()) {
                yh5.b("Layer#drawLayer");
            }
            t(canvas, this.b, iIntValue);
            if (yh5.h()) {
                yh5.c("Layer#drawLayer");
            }
            if (A()) {
                o(canvas, this.b);
            }
            if (B()) {
                if (yh5.h()) {
                    yh5.b("Layer#drawMatte");
                    yh5.b("Layer#saveLayer");
                }
                plb.o(canvas, this.i, this.g, 19);
                if (yh5.h()) {
                    yh5.c("Layer#saveLayer");
                }
                s(canvas);
                this.t.d(canvas, matrix, iIntValue);
                if (yh5.h()) {
                    yh5.b("Layer#restoreLayer");
                }
                canvas.restore();
                if (yh5.h()) {
                    yh5.c("Layer#restoreLayer");
                    yh5.c("Layer#drawMatte");
                }
            }
            if (yh5.h()) {
                yh5.b("Layer#restoreLayer");
            }
            canvas.restore();
            if (yh5.h()) {
                yh5.c("Layer#restoreLayer");
            }
        }
        if (this.z && (paint = this.A) != null) {
            paint.setStyle(Paint.Style.STROKE);
            this.A.setColor(-251901);
            this.A.setStrokeWidth(4.0f);
            canvas.drawRect(this.i, this.A);
            this.A.setStyle(Paint.Style.FILL);
            this.A.setColor(1357638635);
            canvas.drawRect(this.i, this.A);
        }
        G(yh5.c(this.n));
    }

    @Override
    public void e() {
        E();
    }

    @Override
    public void f(List list, List list2) {
    }

    @Override
    public String getName() {
        return this.q.j();
    }

    public void h(Object obj, iu5 iu5Var) {
        this.x.c(obj, iu5Var);
    }

    public void i(ab0 ab0Var) {
        if (ab0Var == null) {
            return;
        }
        this.w.add(ab0Var);
    }

    public final void j(Canvas canvas, Matrix matrix, ab0 ab0Var, ab0 ab0Var2) {
        this.a.set((Path) ab0Var.h());
        this.a.transform(matrix);
        this.d.setAlpha((int) (((Integer) ab0Var2.h()).intValue() * 2.55f));
        canvas.drawPath(this.a, this.d);
    }

    public final void k(Canvas canvas, Matrix matrix, ab0 ab0Var, ab0 ab0Var2) {
        plb.n(canvas, this.i, this.e);
        this.a.set((Path) ab0Var.h());
        this.a.transform(matrix);
        this.d.setAlpha((int) (((Integer) ab0Var2.h()).intValue() * 2.55f));
        canvas.drawPath(this.a, this.d);
        canvas.restore();
    }

    public final void l(Canvas canvas, Matrix matrix, ab0 ab0Var, ab0 ab0Var2) {
        plb.n(canvas, this.i, this.d);
        canvas.drawRect(this.i, this.d);
        this.a.set((Path) ab0Var.h());
        this.a.transform(matrix);
        this.d.setAlpha((int) (((Integer) ab0Var2.h()).intValue() * 2.55f));
        canvas.drawPath(this.a, this.f);
        canvas.restore();
    }

    public final void m(Canvas canvas, Matrix matrix, ab0 ab0Var, ab0 ab0Var2) {
        plb.n(canvas, this.i, this.e);
        canvas.drawRect(this.i, this.d);
        this.f.setAlpha((int) (((Integer) ab0Var2.h()).intValue() * 2.55f));
        this.a.set((Path) ab0Var.h());
        this.a.transform(matrix);
        canvas.drawPath(this.a, this.f);
        canvas.restore();
    }

    public final void n(Canvas canvas, Matrix matrix, ab0 ab0Var, ab0 ab0Var2) {
        plb.n(canvas, this.i, this.f);
        canvas.drawRect(this.i, this.d);
        this.f.setAlpha((int) (((Integer) ab0Var2.h()).intValue() * 2.55f));
        this.a.set((Path) ab0Var.h());
        this.a.transform(matrix);
        canvas.drawPath(this.a, this.f);
        canvas.restore();
    }

    public final void o(Canvas canvas, Matrix matrix) {
        if (yh5.h()) {
            yh5.b("Layer#saveLayer");
        }
        plb.o(canvas, this.i, this.e, 19);
        if (yh5.h()) {
            yh5.c("Layer#saveLayer");
        }
        for (int i = 0; i < this.r.b().size(); i++) {
            Mask mask = (Mask) this.r.b().get(i);
            ab0 ab0Var = (ab0) this.r.a().get(i);
            ab0 ab0Var2 = (ab0) this.r.c().get(i);
            int i2 = C0023a.b[mask.a().ordinal()];
            if (i2 != 1) {
                if (i2 == 2) {
                    if (i == 0) {
                        this.d.setColor(-16777216);
                        this.d.setAlpha(255);
                        canvas.drawRect(this.i, this.d);
                    }
                    if (mask.d()) {
                        n(canvas, matrix, ab0Var, ab0Var2);
                    } else {
                        p(canvas, matrix, ab0Var);
                    }
                } else if (i2 != 3) {
                    if (i2 == 4) {
                        if (mask.d()) {
                            l(canvas, matrix, ab0Var, ab0Var2);
                        } else {
                            j(canvas, matrix, ab0Var, ab0Var2);
                        }
                    }
                } else if (mask.d()) {
                    m(canvas, matrix, ab0Var, ab0Var2);
                } else {
                    k(canvas, matrix, ab0Var, ab0Var2);
                }
            } else if (q()) {
                this.d.setAlpha(255);
                canvas.drawRect(this.i, this.d);
            }
        }
        if (yh5.h()) {
            yh5.b("Layer#restoreLayer");
        }
        canvas.restore();
        if (yh5.h()) {
            yh5.c("Layer#restoreLayer");
        }
    }

    public final void p(Canvas canvas, Matrix matrix, ab0 ab0Var) {
        this.a.set((Path) ab0Var.h());
        this.a.transform(matrix);
        canvas.drawPath(this.a, this.f);
    }

    public final boolean q() {
        if (this.r.a().isEmpty()) {
            return false;
        }
        for (int i = 0; i < this.r.b().size(); i++) {
            if (((Mask) this.r.b().get(i)).a() != Mask.MaskMode.MASK_MODE_NONE) {
                return false;
            }
        }
        return true;
    }

    public final void r() {
        if (this.v != null) {
            return;
        }
        if (this.u == null) {
            this.v = Collections.emptyList();
            return;
        }
        this.v = new ArrayList();
        for (a aVar = this.u; aVar != null; aVar = aVar.u) {
            this.v.add(aVar);
        }
    }

    public final void s(Canvas canvas) {
        if (yh5.h()) {
            yh5.b("Layer#clearLayer");
        }
        RectF rectF = this.i;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.h);
        if (yh5.h()) {
            yh5.c("Layer#clearLayer");
        }
    }

    public abstract void t(Canvas canvas, Matrix matrix, int i);

    public LBlendMode v() {
        return this.q.a();
    }

    public ag0 w() {
        return this.q.b();
    }

    public BlurMaskFilter x(float f) {
        if (this.B == f) {
            return this.C;
        }
        BlurMaskFilter blurMaskFilter = new BlurMaskFilter(f / 2.0f, BlurMaskFilter.Blur.NORMAL);
        this.C = blurMaskFilter;
        this.B = f;
        return blurMaskFilter;
    }

    public l33 y() {
        return this.q.d();
    }

    public Layer z() {
        return this.q;
    }
}
