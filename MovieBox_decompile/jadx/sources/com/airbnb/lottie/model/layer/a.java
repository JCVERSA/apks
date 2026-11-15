package com.airbnb.lottie.model.layer;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import androidx.core.view.ViewCompat;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.content.Mask;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p4.h;
import p4.p;
import w4.j;
import x4.l;

public abstract class a implements o4.e, p4.a.b, r4.e {
    private Paint A;
    float B;
    BlurMaskFilter C;
    n4.a D;

    private final Path f17241a = new Path();

    private final Matrix f17242b = new Matrix();

    private final Matrix f17243c = new Matrix();

    private final Paint f17244d = new n4.a(1);

    private final Paint f17245e;

    private final Paint f17246f;

    private final Paint f17247g;

    private final Paint f17248h;

    private final RectF f17249i;

    private final RectF f17250j;

    private final RectF f17251k;

    private final RectF f17252l;

    private final RectF f17253m;

    private final String f17254n;

    final Matrix f17255o;

    final LottieDrawable f17256p;

    final Layer f17257q;

    private h f17258r;

    private p4.d f17259s;

    private a f17260t;

    private a f17261u;

    private List f17262v;

    private final List f17263w;

    public final p f17264x;

    private boolean f17265y;

    private boolean f17266z;

    static class C0152a {

        static final int[] f17267a;

        static final int[] f17268b;

        static {
            int[] iArr = new int[Mask.MaskMode.values().length];
            f17268b = iArr;
            try {
                iArr[Mask.MaskMode.MASK_MODE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17268b[Mask.MaskMode.MASK_MODE_SUBTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17268b[Mask.MaskMode.MASK_MODE_INTERSECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17268b[Mask.MaskMode.MASK_MODE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[Layer.LayerType.values().length];
            f17267a = iArr2;
            try {
                iArr2[Layer.LayerType.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17267a[Layer.LayerType.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17267a[Layer.LayerType.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17267a[Layer.LayerType.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17267a[Layer.LayerType.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17267a[Layer.LayerType.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f17267a[Layer.LayerType.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    a(LottieDrawable lottieDrawable, Layer layer) {
        PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
        this.f17245e = new n4.a(1, mode);
        PorterDuff.Mode mode2 = PorterDuff.Mode.DST_OUT;
        this.f17246f = new n4.a(1, mode2);
        n4.a aVar = new n4.a(1);
        this.f17247g = aVar;
        this.f17248h = new n4.a(PorterDuff.Mode.CLEAR);
        this.f17249i = new RectF();
        this.f17250j = new RectF();
        this.f17251k = new RectF();
        this.f17252l = new RectF();
        this.f17253m = new RectF();
        this.f17255o = new Matrix();
        this.f17263w = new ArrayList();
        this.f17265y = true;
        this.B = 0.0f;
        this.f17256p = lottieDrawable;
        this.f17257q = layer;
        this.f17254n = layer.j() + "#draw";
        if (layer.i() == Layer.MatteType.INVERT) {
            aVar.setXfermode(new PorterDuffXfermode(mode2));
        } else {
            aVar.setXfermode(new PorterDuffXfermode(mode));
        }
        p pVarB = layer.x().b();
        this.f17264x = pVarB;
        pVarB.b(this);
        if (layer.h() != null && !layer.h().isEmpty()) {
            h hVar = new h(layer.h());
            this.f17258r = hVar;
            Iterator it = hVar.a().iterator();
            while (it.hasNext()) {
                ((p4.a) it.next()).a(this);
            }
            for (p4.a aVar2 : this.f17258r.c()) {
                i(aVar2);
                aVar2.a(this);
            }
        }
        O();
    }

    private void C(RectF rectF, Matrix matrix) {
        this.f17251k.set(0.0f, 0.0f, 0.0f, 0.0f);
        if (A()) {
            int size = this.f17258r.b().size();
            for (int i10 = 0; i10 < size; i10++) {
                Mask mask = (Mask) this.f17258r.b().get(i10);
                Path path = (Path) ((p4.a) this.f17258r.a().get(i10)).h();
                if (path != null) {
                    this.f17241a.set(path);
                    this.f17241a.transform(matrix);
                    int i11 = C0152a.f17268b[mask.a().ordinal()];
                    if (i11 == 1 || i11 == 2) {
                        return;
                    }
                    if ((i11 == 3 || i11 == 4) && mask.d()) {
                        return;
                    }
                    this.f17241a.computeBounds(this.f17253m, false);
                    if (i10 == 0) {
                        this.f17251k.set(this.f17253m);
                    } else {
                        RectF rectF2 = this.f17251k;
                        rectF2.set(Math.min(rectF2.left, this.f17253m.left), Math.min(this.f17251k.top, this.f17253m.top), Math.max(this.f17251k.right, this.f17253m.right), Math.max(this.f17251k.bottom, this.f17253m.bottom));
                    }
                }
            }
            if (rectF.intersect(this.f17251k)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void D(RectF rectF, Matrix matrix) {
        if (B() && this.f17257q.i() != Layer.MatteType.INVERT) {
            this.f17252l.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.f17260t.f(this.f17252l, matrix, true);
            if (rectF.intersect(this.f17252l)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void E() {
        this.f17256p.invalidateSelf();
    }

    public void F() {
        N(this.f17259s.q() == 1.0f);
    }

    private void G(float f10) {
        this.f17256p.O().n().a(this.f17257q.j(), f10);
    }

    private void N(boolean z10) {
        if (z10 != this.f17265y) {
            this.f17265y = z10;
            E();
        }
    }

    private void O() {
        if (this.f17257q.f().isEmpty()) {
            N(true);
            return;
        }
        p4.d dVar = new p4.d(this.f17257q.f());
        this.f17259s = dVar;
        dVar.m();
        this.f17259s.a(new p4.a.b() {
            @Override
            public final void a() {
                this.f73000a.F();
            }
        });
        N(((Float) this.f17259s.h()).floatValue() == 1.0f);
        i(this.f17259s);
    }

    private void j(Canvas canvas, Matrix matrix, p4.a aVar, p4.a aVar2) {
        this.f17241a.set((Path) aVar.h());
        this.f17241a.transform(matrix);
        this.f17244d.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        canvas.drawPath(this.f17241a, this.f17244d);
    }

    private void k(Canvas canvas, Matrix matrix, p4.a aVar, p4.a aVar2) {
        l.n(canvas, this.f17249i, this.f17245e);
        this.f17241a.set((Path) aVar.h());
        this.f17241a.transform(matrix);
        this.f17244d.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        canvas.drawPath(this.f17241a, this.f17244d);
        canvas.restore();
    }

    private void l(Canvas canvas, Matrix matrix, p4.a aVar, p4.a aVar2) {
        l.n(canvas, this.f17249i, this.f17244d);
        canvas.drawRect(this.f17249i, this.f17244d);
        this.f17241a.set((Path) aVar.h());
        this.f17241a.transform(matrix);
        this.f17244d.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        canvas.drawPath(this.f17241a, this.f17246f);
        canvas.restore();
    }

    private void m(Canvas canvas, Matrix matrix, p4.a aVar, p4.a aVar2) {
        l.n(canvas, this.f17249i, this.f17245e);
        canvas.drawRect(this.f17249i, this.f17244d);
        this.f17246f.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        this.f17241a.set((Path) aVar.h());
        this.f17241a.transform(matrix);
        canvas.drawPath(this.f17241a, this.f17246f);
        canvas.restore();
    }

    private void n(Canvas canvas, Matrix matrix, p4.a aVar, p4.a aVar2) {
        l.n(canvas, this.f17249i, this.f17246f);
        canvas.drawRect(this.f17249i, this.f17244d);
        this.f17246f.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        this.f17241a.set((Path) aVar.h());
        this.f17241a.transform(matrix);
        canvas.drawPath(this.f17241a, this.f17246f);
        canvas.restore();
    }

    private void o(Canvas canvas, Matrix matrix) {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("Layer#saveLayer");
        }
        l.o(canvas, this.f17249i, this.f17245e, 19);
        if (Build.VERSION.SDK_INT < 28) {
            s(canvas);
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("Layer#saveLayer");
        }
        for (int i10 = 0; i10 < this.f17258r.b().size(); i10++) {
            Mask mask = (Mask) this.f17258r.b().get(i10);
            p4.a aVar = (p4.a) this.f17258r.a().get(i10);
            p4.a aVar2 = (p4.a) this.f17258r.c().get(i10);
            int i11 = C0152a.f17268b[mask.a().ordinal()];
            if (i11 != 1) {
                if (i11 == 2) {
                    if (i10 == 0) {
                        this.f17244d.setColor(ViewCompat.MEASURED_STATE_MASK);
                        this.f17244d.setAlpha(255);
                        canvas.drawRect(this.f17249i, this.f17244d);
                    }
                    if (mask.d()) {
                        n(canvas, matrix, aVar, aVar2);
                    } else {
                        p(canvas, matrix, aVar);
                    }
                } else if (i11 != 3) {
                    if (i11 == 4) {
                        if (mask.d()) {
                            l(canvas, matrix, aVar, aVar2);
                        } else {
                            j(canvas, matrix, aVar, aVar2);
                        }
                    }
                } else if (mask.d()) {
                    m(canvas, matrix, aVar, aVar2);
                } else {
                    k(canvas, matrix, aVar, aVar2);
                }
            } else if (q()) {
                this.f17244d.setAlpha(255);
                canvas.drawRect(this.f17249i, this.f17244d);
            }
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("Layer#restoreLayer");
        }
        canvas.restore();
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("Layer#restoreLayer");
        }
    }

    private void p(Canvas canvas, Matrix matrix, p4.a aVar) {
        this.f17241a.set((Path) aVar.h());
        this.f17241a.transform(matrix);
        canvas.drawPath(this.f17241a, this.f17246f);
    }

    private boolean q() {
        if (this.f17258r.a().isEmpty()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f17258r.b().size(); i10++) {
            if (((Mask) this.f17258r.b().get(i10)).a() != Mask.MaskMode.MASK_MODE_NONE) {
                return false;
            }
        }
        return true;
    }

    private void r() {
        if (this.f17262v != null) {
            return;
        }
        if (this.f17261u == null) {
            this.f17262v = Collections.emptyList();
            return;
        }
        this.f17262v = new ArrayList();
        for (a aVar = this.f17261u; aVar != null; aVar = aVar.f17261u) {
            this.f17262v.add(aVar);
        }
    }

    private void s(Canvas canvas) {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("Layer#clearLayer");
        }
        RectF rectF = this.f17249i;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.f17248h);
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("Layer#clearLayer");
        }
    }

    static a u(b bVar, Layer layer, LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar) {
        switch (C0152a.f17267a[layer.g().ordinal()]) {
            case 1:
                return new e(lottieDrawable, layer, bVar, hVar);
            case 2:
                return new b(lottieDrawable, layer, hVar.o(layer.n()), hVar);
            case 3:
                return new f(lottieDrawable, layer);
            case 4:
                return new c(lottieDrawable, layer);
            case 5:
                return new d(lottieDrawable, layer);
            case 6:
                return new g(lottieDrawable, layer);
            default:
                x4.f.c("Unknown layer type " + layer.g());
                return null;
        }
    }

    boolean A() {
        h hVar = this.f17258r;
        return (hVar == null || hVar.a().isEmpty()) ? false : true;
    }

    boolean B() {
        return this.f17260t != null;
    }

    public void H(p4.a aVar) {
        this.f17263w.remove(aVar);
    }

    void J(a aVar) {
        this.f17260t = aVar;
    }

    void K(boolean z10) {
        if (z10 && this.A == null) {
            this.A = new n4.a();
        }
        this.f17266z = z10;
    }

    void L(a aVar) {
        this.f17261u = aVar;
    }

    void M(float f10) {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("BaseLayer#setProgress");
            com.airbnb.lottie.d.b("BaseLayer#setProgress.transform");
        }
        this.f17264x.j(f10);
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("BaseLayer#setProgress.transform");
        }
        if (this.f17258r != null) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.b("BaseLayer#setProgress.mask");
            }
            for (int i10 = 0; i10 < this.f17258r.a().size(); i10++) {
                ((p4.a) this.f17258r.a().get(i10)).n(f10);
            }
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("BaseLayer#setProgress.mask");
            }
        }
        if (this.f17259s != null) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.b("BaseLayer#setProgress.inout");
            }
            this.f17259s.n(f10);
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("BaseLayer#setProgress.inout");
            }
        }
        if (this.f17260t != null) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.b("BaseLayer#setProgress.matte");
            }
            this.f17260t.M(f10);
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("BaseLayer#setProgress.matte");
            }
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("BaseLayer#setProgress.animations." + this.f17263w.size());
        }
        for (int i11 = 0; i11 < this.f17263w.size(); i11++) {
            ((p4.a) this.f17263w.get(i11)).n(f10);
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("BaseLayer#setProgress.animations." + this.f17263w.size());
            com.airbnb.lottie.d.c("BaseLayer#setProgress");
        }
    }

    @Override
    public void a() {
        E();
    }

    @Override
    public void c(r4.d dVar, int i10, List list, r4.d dVar2) {
        a aVar = this.f17260t;
        if (aVar != null) {
            r4.d dVarA = dVar2.a(aVar.getName());
            if (dVar.c(this.f17260t.getName(), i10)) {
                list.add(dVarA.i(this.f17260t));
            }
            if (dVar.h(getName(), i10)) {
                this.f17260t.I(dVar, dVar.e(this.f17260t.getName(), i10) + i10, list, dVarA);
            }
        }
        if (dVar.g(getName(), i10)) {
            if (!"__container".equals(getName())) {
                dVar2 = dVar2.a(getName());
                if (dVar.c(getName(), i10)) {
                    list.add(dVar2.i(this));
                }
            }
            if (dVar.h(getName(), i10)) {
                I(dVar, i10 + dVar.e(getName(), i10), list, dVar2);
            }
        }
    }

    @Override
    public void d(Object obj, y4.c cVar) {
        this.f17264x.c(obj, cVar);
    }

    @Override
    public void f(RectF rectF, Matrix matrix, boolean z10) {
        this.f17249i.set(0.0f, 0.0f, 0.0f, 0.0f);
        r();
        this.f17255o.set(matrix);
        if (z10) {
            List list = this.f17262v;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f17255o.preConcat(((a) this.f17262v.get(size)).f17264x.f());
                }
            } else {
                a aVar = this.f17261u;
                if (aVar != null) {
                    this.f17255o.preConcat(aVar.f17264x.f());
                }
            }
        }
        this.f17255o.preConcat(this.f17264x.f());
    }

    @Override
    public String getName() {
        return this.f17257q.j();
    }

    @Override
    public void h(Canvas canvas, Matrix matrix, int i10) {
        Paint paint;
        Integer num;
        com.airbnb.lottie.d.b(this.f17254n);
        if (!this.f17265y || this.f17257q.y()) {
            com.airbnb.lottie.d.c(this.f17254n);
            return;
        }
        r();
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("Layer#parentMatrix");
        }
        this.f17242b.reset();
        this.f17242b.set(matrix);
        for (int size = this.f17262v.size() - 1; size >= 0; size--) {
            this.f17242b.preConcat(((a) this.f17262v.get(size)).f17264x.f());
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("Layer#parentMatrix");
        }
        p4.a aVarH = this.f17264x.h();
        int iIntValue = (int) ((((i10 / 255.0f) * ((aVarH == null || (num = (Integer) aVarH.h()) == null) ? 100 : num.intValue())) / 100.0f) * 255.0f);
        if (!B() && !A() && v() == LBlendMode.NORMAL) {
            this.f17242b.preConcat(this.f17264x.f());
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.b("Layer#drawLayer");
            }
            t(canvas, this.f17242b, iIntValue);
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("Layer#drawLayer");
            }
            G(com.airbnb.lottie.d.c(this.f17254n));
            return;
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("Layer#computeBounds");
        }
        f(this.f17249i, this.f17242b, false);
        D(this.f17249i, matrix);
        this.f17242b.preConcat(this.f17264x.f());
        C(this.f17249i, this.f17242b);
        this.f17250j.set(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
        canvas.getMatrix(this.f17243c);
        if (!this.f17243c.isIdentity()) {
            Matrix matrix2 = this.f17243c;
            matrix2.invert(matrix2);
            this.f17243c.mapRect(this.f17250j);
        }
        if (!this.f17249i.intersect(this.f17250j)) {
            this.f17249i.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("Layer#computeBounds");
        }
        if (this.f17249i.width() >= 1.0f && this.f17249i.height() >= 1.0f) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.b("Layer#saveLayer");
            }
            this.f17244d.setAlpha(255);
            z0.d.b(this.f17244d, v().toNativeBlendMode());
            l.n(canvas, this.f17249i, this.f17244d);
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("Layer#saveLayer");
            }
            if (v() != LBlendMode.MULTIPLY) {
                s(canvas);
            } else {
                if (this.D == null) {
                    n4.a aVar = new n4.a();
                    this.D = aVar;
                    aVar.setColor(-1);
                }
                RectF rectF = this.f17249i;
                canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.D);
            }
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.b("Layer#drawLayer");
            }
            t(canvas, this.f17242b, iIntValue);
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("Layer#drawLayer");
            }
            if (A()) {
                o(canvas, this.f17242b);
            }
            if (B()) {
                if (com.airbnb.lottie.d.g()) {
                    com.airbnb.lottie.d.b("Layer#drawMatte");
                    com.airbnb.lottie.d.b("Layer#saveLayer");
                }
                l.o(canvas, this.f17249i, this.f17247g, 19);
                if (com.airbnb.lottie.d.g()) {
                    com.airbnb.lottie.d.c("Layer#saveLayer");
                }
                s(canvas);
                this.f17260t.h(canvas, matrix, iIntValue);
                if (com.airbnb.lottie.d.g()) {
                    com.airbnb.lottie.d.b("Layer#restoreLayer");
                }
                canvas.restore();
                if (com.airbnb.lottie.d.g()) {
                    com.airbnb.lottie.d.c("Layer#restoreLayer");
                    com.airbnb.lottie.d.c("Layer#drawMatte");
                }
            }
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.b("Layer#restoreLayer");
            }
            canvas.restore();
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("Layer#restoreLayer");
            }
        }
        if (this.f17266z && (paint = this.A) != null) {
            paint.setStyle(Paint.Style.STROKE);
            this.A.setColor(-251901);
            this.A.setStrokeWidth(4.0f);
            canvas.drawRect(this.f17249i, this.A);
            this.A.setStyle(Paint.Style.FILL);
            this.A.setColor(1357638635);
            canvas.drawRect(this.f17249i, this.A);
        }
        G(com.airbnb.lottie.d.c(this.f17254n));
    }

    public void i(p4.a aVar) {
        if (aVar == null) {
            return;
        }
        this.f17263w.add(aVar);
    }

    abstract void t(Canvas canvas, Matrix matrix, int i10);

    public LBlendMode v() {
        return this.f17257q.a();
    }

    public t4.a w() {
        return this.f17257q.b();
    }

    public BlurMaskFilter x(float f10) {
        if (this.B == f10) {
            return this.C;
        }
        BlurMaskFilter blurMaskFilter = new BlurMaskFilter(f10 / 2.0f, BlurMaskFilter.Blur.NORMAL);
        this.C = blurMaskFilter;
        this.B = f10;
        return blurMaskFilter;
    }

    public j y() {
        return this.f17257q.d();
    }

    Layer z() {
        return this.f17257q;
    }

    @Override
    public void b(List list, List list2) {
    }

    void I(r4.d dVar, int i10, List list, r4.d dVar2) {
    }
}
