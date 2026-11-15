package com.yandex.div.core.view2.divs.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.NinePatch;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.yandex.div.R;
import com.yandex.div.core.util.DivDataExtensionsKt;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.divs.widgets.DivBorderDrawer.a;
import com.yandex.div.core.view2.divs.widgets.DivBorderDrawer.e;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div.logging.Severity;
import com.yandex.div2.DivBorder;
import com.yandex.div2.DivCornersRadius;
import com.yandex.div2.DivDimension;
import com.yandex.div2.DivPoint;
import com.yandex.div2.DivShadow;
import com.yandex.div2.DivStroke;
import com.yandex.div2.DivStrokeStyle;
import defpackage.c74;
import defpackage.e74;
import defpackage.eu2;
import defpackage.hi;
import defpackage.m7b;
import defpackage.ne5;
import defpackage.nf9;
import defpackage.oj3;
import defpackage.qc2;
import defpackage.qj3;
import defpackage.tg2;
import defpackage.wn8;
import defpackage.xh8;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class DivBorderDrawer implements qj3 {
    public static final c q = new c(null);
    public final Div2View b;
    public final View c;
    public DivBorder d;
    public final b e;
    public final yi5 f;
    public final yi5 g;
    public final d h;
    public float i;
    public float[] j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public final List p;

    public final class a {
        public final Paint a;
        public final Path b;
        public boolean c;
        public final float d;
        public final float e;
        public final float f;
        public final RectF g;

        public a() {
            Paint paint = new Paint();
            this.a = paint;
            this.b = new Path();
            this.d = BaseDivViewExtensionsKt.M(Double.valueOf(0.5d), DivBorderDrawer.this.k());
            this.e = BaseDivViewExtensionsKt.M(6, DivBorderDrawer.this.k());
            this.f = BaseDivViewExtensionsKt.M(2, DivBorderDrawer.this.k());
            this.g = new RectF();
            paint.setStyle(Paint.Style.STROKE);
            paint.setAntiAlias(true);
        }

        public final float a(float f, float f2, float[] fArr) {
            float f3 = 2;
            float fSqrt = (f * f3) + (f3 * f2);
            if (fArr.length != 8) {
                ne5 ne5Var = ne5.a;
                if (ne5Var.a(Severity.ERROR)) {
                    ne5Var.b(6, "DivBorderDrawer", "Wrong corner radii count " + fArr.length + ". Expected 8");
                }
                return fSqrt;
            }
            int i = 0;
            int iC = xh8.c(0, fArr.length - 1, 2);
            if (iC >= 0) {
                while (true) {
                    float f4 = fArr[i];
                    float f5 = fArr[i + 1];
                    fSqrt = ((fSqrt - f4) - f5) + ((float) (Math.sqrt(((double) ((f4 * f4) + (f5 * f5))) / 8.0d) * 3.141592653589793d));
                    if (i == iC) {
                        break;
                    }
                    i += 2;
                }
            }
            return wn8.c(fSqrt, 0.0f);
        }

        public final DashPathEffect b(float f) {
            float f2;
            float f3;
            if (f > 0.0f) {
                float f4 = this.e;
                float f5 = this.f;
                float f6 = f4 + f5;
                float f7 = (int) (f / f6);
                float f8 = f - (f6 * f7);
                f2 = f4 + (((f8 * f4) / f6) / f7);
                f3 = f5 + (((f8 * f5) / f6) / f7);
            } else {
                f2 = this.e;
                f3 = this.f;
            }
            return new DashPathEffect(new float[]{f2, f3}, 0.0f);
        }

        public final Paint c() {
            return this.a;
        }

        public final Path d() {
            return this.b;
        }

        public final float e() {
            return Math.min(this.d, Math.max(1.0f, DivBorderDrawer.this.i * 0.1f));
        }

        public final void f(float[] fArr) {
            y45.j(fArr, "radii");
            float fE = (DivBorderDrawer.this.i - e()) / 2.0f;
            this.g.set(fE, fE, DivBorderDrawer.this.c.getWidth() - fE, DivBorderDrawer.this.c.getHeight() - fE);
            this.b.reset();
            this.b.addRoundRect(this.g, fArr, Path.Direction.CW);
            this.b.close();
            this.a.setPathEffect(this.c ? b(a(this.g.width(), this.g.height(), fArr)) : null);
        }

        public final void g(boolean z) {
            this.c = z;
        }

        public final void h(float f, int i) {
            this.a.setStrokeWidth(f + e());
            this.a.setColor(i);
        }
    }

    public final class b {
        public final Path a = new Path();
        public final RectF b = new RectF();

        public b() {
        }

        public final Path a() {
            return this.a;
        }

        public final void b(float[] fArr) {
            this.b.set(0.0f, 0.0f, DivBorderDrawer.this.c.getWidth(), DivBorderDrawer.this.c.getHeight());
            this.a.reset();
            if (fArr != null) {
                this.a.addRoundRect(this.b, (float[]) fArr.clone(), Path.Direction.CW);
                this.a.close();
            }
        }
    }

    public static final class c {
        public c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final float b(float f, float f2, float f3) {
            if (f3 <= 0.0f || f2 <= 0.0f) {
                return 0.0f;
            }
            float fMin = Math.min(f3, f2) / 2;
            if (f > fMin) {
                ne5 ne5Var = ne5.a;
                if (ne5Var.a(Severity.WARNING)) {
                    ne5Var.b(5, "DivBorderDrawer", "Corner radius " + f + " is greater than half of the smallest side " + fMin);
                }
            }
            return Math.min(f, fMin);
        }

        public c() {
        }
    }

    public static final class d extends ViewOutlineProvider {
        public float a;

        public d(float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? 0.0f : f);
        }

        public final void a(float f) {
            this.a = f;
        }

        @Override
        public void getOutline(View view, Outline outline) {
            y45.j(view, "view");
            y45.j(outline, "outline");
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), DivBorderDrawer.q.b(this.a, view.getWidth(), view.getHeight()));
        }

        public d(float f) {
            this.a = f;
        }
    }

    public final class e {
        public final float a;
        public float b;
        public int c;
        public float d;
        public final Paint e;
        public final Rect f;
        public NinePatch g;
        public float h;
        public float i;

        public e() {
            float dimension = DivBorderDrawer.this.c.getContext().getResources().getDimension(R.dimen.div_shadow_elevation);
            this.a = dimension;
            this.b = dimension;
            this.c = -16777216;
            this.d = 0.14f;
            this.e = new Paint();
            this.f = new Rect();
            this.i = 0.5f;
        }

        public final NinePatch a() {
            return this.g;
        }

        public final float b() {
            return this.h;
        }

        public final float c() {
            return this.i;
        }

        public final Paint d() {
            return this.e;
        }

        public final Rect e() {
            return this.f;
        }

        public final void f(float[] fArr) {
            y45.j(fArr, "radii");
            float f = 2;
            this.f.set(0, 0, (int) (DivBorderDrawer.this.c.getWidth() + (this.b * f)), (int) (DivBorderDrawer.this.c.getHeight() + (this.b * f)));
            this.e.setColor(this.c);
            this.e.setAlpha((int) (this.d * DivBorderDrawer.this.c.getAlpha() * 255));
            nf9 nf9Var = nf9.a;
            Context context = DivBorderDrawer.this.c.getContext();
            y45.i(context, "view.context");
            this.g = nf9Var.e(context, fArr, this.b);
        }

        public final void g(DivShadow divShadow, oj3 oj3Var) {
            DivPoint divPoint;
            DivDimension divDimension;
            DivPoint divPoint2;
            DivDimension divDimension2;
            Expression expression;
            Expression expression2;
            Expression expression3;
            y45.j(oj3Var, "resolver");
            DisplayMetrics displayMetricsK = DivBorderDrawer.this.k();
            this.b = (divShadow == null || (expression3 = divShadow.b) == null) ? this.a : BaseDivViewExtensionsKt.M(Long.valueOf(((Number) expression3.b(oj3Var)).longValue()), displayMetricsK);
            this.c = (divShadow == null || (expression2 = divShadow.c) == null) ? -16777216 : ((Number) expression2.b(oj3Var)).intValue();
            this.d = (divShadow == null || (expression = divShadow.a) == null) ? 0.14f : (float) ((Number) expression.b(oj3Var)).doubleValue();
            this.h = ((divShadow == null || (divPoint2 = divShadow.d) == null || (divDimension2 = divPoint2.a) == null) ? BaseDivViewExtensionsKt.L(Float.valueOf(0.0f), displayMetricsK) : BaseDivViewExtensionsKt.G0(divDimension2, displayMetricsK, oj3Var)) - this.b;
            this.i = ((divShadow == null || (divPoint = divShadow.d) == null || (divDimension = divPoint.b) == null) ? BaseDivViewExtensionsKt.L(Float.valueOf(0.5f), displayMetricsK) : BaseDivViewExtensionsKt.G0(divDimension, displayMetricsK, oj3Var)) - this.b;
        }
    }

    public DivBorderDrawer(Div2View div2View, View view) {
        y45.j(div2View, "divView");
        y45.j(view, "view");
        this.b = div2View;
        this.c = view;
        this.e = new b();
        this.f = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final DivBorderDrawer.a invoke() {
                return this.this$0.new a();
            }
        });
        this.g = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final DivBorderDrawer.e invoke() {
                return this.this$0.new e();
            }
        });
        this.h = new d(0.0f, 1, null);
        this.o = true;
        this.p = new ArrayList();
    }

    private final void n() {
        if (t()) {
            this.c.setClipToOutline(false);
            this.c.setOutlineProvider(u() ? null : ViewOutlineProvider.BACKGROUND);
            return;
        }
        float[] fArr = this.j;
        float fU = fArr != null ? hi.U(fArr) : 0.0f;
        if (fU == 0.0f) {
            this.c.setClipToOutline(false);
            this.c.setOutlineProvider(u() ? null : ViewOutlineProvider.BACKGROUND);
        } else {
            this.h.a(fU);
            this.c.setOutlineProvider(this.h);
            this.c.setClipToOutline(this.o);
        }
    }

    /* JADX WARN: Code duplicated, block: B:57:0x00cb  */
    public final void e(DivBorder divBorder, oj3 oj3Var) {
        boolean z;
        Expression expression;
        boolean z2;
        DivStroke divStroke;
        DivStroke divStroke2;
        Expression expression2;
        DivStroke divStroke3;
        DisplayMetrics displayMetricsK = k();
        float dimension = 0.0f;
        float fA = (divBorder == null || (divStroke3 = divBorder.e) == null) ? 0.0f : tg2.a(divStroke3, oj3Var, displayMetricsK);
        this.i = fA;
        boolean z3 = true;
        boolean z4 = fA > 0.0f;
        this.l = z4;
        if (z4) {
            j().h(this.i, (divBorder == null || (divStroke2 = divBorder.e) == null || (expression2 = divStroke2.a) == null) ? 0 : ((Number) expression2.b(oj3Var)).intValue());
            j().g(((divBorder == null || (divStroke = divBorder.e) == null) ? null : divStroke.b) instanceof DivStrokeStyle.b);
        }
        float[] fArrE = divBorder != null ? eu2.e(divBorder, BaseDivViewExtensionsKt.L(Integer.valueOf(this.c.getWidth()), displayMetricsK), BaseDivViewExtensionsKt.L(Integer.valueOf(this.c.getHeight()), displayMetricsK), displayMetricsK, oj3Var) : null;
        this.j = fArrE;
        if (fArrE != null) {
            float fU = hi.U(fArrE);
            int length = fArrE.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z2 = true;
                    break;
                } else {
                    if (!Float.valueOf(fArrE[i]).equals(Float.valueOf(fU))) {
                        z2 = false;
                        break;
                    }
                    i++;
                }
            }
            z = !z2;
        } else {
            z = false;
        }
        this.k = z;
        boolean z5 = this.m;
        boolean zBooleanValue = (divBorder == null || (expression = divBorder.c) == null) ? false : ((Boolean) expression.b(oj3Var)).booleanValue();
        this.n = zBooleanValue;
        if (zBooleanValue) {
            if ((divBorder != null ? divBorder.d : null) == null && !(this.c.getParent() instanceof DivFrameLayout)) {
                z3 = false;
            }
        } else {
            z3 = false;
        }
        this.m = z3;
        View view = this.c;
        if (this.n && !z3) {
            dimension = view.getContext().getResources().getDimension(R.dimen.div_shadow_elevation);
        }
        view.setElevation(dimension);
        if (this.m) {
            l().g(divBorder != null ? divBorder.d : null, oj3Var);
        }
        m();
        if (this.m || z5) {
            Object parent = this.c.getParent();
            View view2 = parent instanceof View ? (View) parent : null;
            if (view2 != null) {
                view2.invalidate();
            }
        }
    }

    public final void f(DivBorder divBorder, oj3 oj3Var) {
        e(divBorder, oj3Var);
        p(divBorder, oj3Var);
    }

    public final void g(Canvas canvas) {
        y45.j(canvas, "canvas");
        if (t()) {
            canvas.clipPath(this.e.a());
        }
    }

    @Override
    public List getSubscriptions() {
        return this.p;
    }

    public final void h(Canvas canvas) {
        y45.j(canvas, "canvas");
        if (this.l) {
            canvas.drawPath(j().d(), j().c());
        }
    }

    public final void i(Canvas canvas) {
        y45.j(canvas, "canvas");
        if (m7b.a(this.c) || !this.m) {
            return;
        }
        float fB = l().b();
        float fC = l().c();
        int iSave = canvas.save();
        canvas.translate(fB, fC);
        try {
            NinePatch ninePatchA = l().a();
            if (ninePatchA != null) {
                ninePatchA.draw(canvas, l().e(), l().d());
            }
        } finally {
            canvas.restoreToCount(iSave);
        }
    }

    public final a j() {
        return (a) this.f.getValue();
    }

    public final DisplayMetrics k() {
        DisplayMetrics displayMetrics = this.c.getResources().getDisplayMetrics();
        y45.i(displayMetrics, "view.resources.displayMetrics");
        return displayMetrics;
    }

    public final e l() {
        return (e) this.g.getValue();
    }

    public final void m() {
        o();
        n();
    }

    public final void o() {
        float[] fArr;
        float[] fArr2 = this.j;
        if (fArr2 == null || (fArr = (float[]) fArr2.clone()) == null) {
            return;
        }
        this.e.b(fArr);
        float f = this.i / 2.0f;
        int length = fArr.length;
        for (int i = 0; i < length; i++) {
            fArr[i] = Math.max(0.0f, fArr[i] - f);
        }
        if (this.l) {
            j().f(fArr);
        }
        if (this.m) {
            l().f(fArr);
        }
    }

    public final void p(final DivBorder divBorder, final oj3 oj3Var) {
        DivPoint divPoint;
        DivDimension divDimension;
        Expression expression;
        DivPoint divPoint2;
        DivDimension divDimension2;
        Expression expression2;
        DivPoint divPoint3;
        DivDimension divDimension3;
        Expression expression3;
        DivPoint divPoint4;
        DivDimension divDimension4;
        Expression expression4;
        Expression expression5;
        Expression expression6;
        Expression expression7;
        Expression expression8;
        Expression expression9;
        Expression expression10;
        Expression expression11;
        Expression expression12;
        Expression expression13;
        Expression expression14;
        if (divBorder == null || DivDataExtensionsKt.w(divBorder)) {
            return;
        }
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m256invoke(obj);
                return zfb.a;
            }

            public final void m256invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                this.this$0.e(divBorder, oj3Var);
                this.this$0.c.invalidate();
            }
        };
        Expression expression15 = divBorder.a;
        qc2 qc2VarE = null;
        addSubscription(expression15 != null ? expression15.e(oj3Var, e74Var) : null);
        DivCornersRadius divCornersRadius = divBorder.b;
        addSubscription((divCornersRadius == null || (expression14 = divCornersRadius.c) == null) ? null : expression14.e(oj3Var, e74Var));
        DivCornersRadius divCornersRadius2 = divBorder.b;
        addSubscription((divCornersRadius2 == null || (expression13 = divCornersRadius2.d) == null) ? null : expression13.e(oj3Var, e74Var));
        DivCornersRadius divCornersRadius3 = divBorder.b;
        addSubscription((divCornersRadius3 == null || (expression12 = divCornersRadius3.b) == null) ? null : expression12.e(oj3Var, e74Var));
        DivCornersRadius divCornersRadius4 = divBorder.b;
        addSubscription((divCornersRadius4 == null || (expression11 = divCornersRadius4.a) == null) ? null : expression11.e(oj3Var, e74Var));
        addSubscription(divBorder.c.e(oj3Var, e74Var));
        DivStroke divStroke = divBorder.e;
        addSubscription((divStroke == null || (expression10 = divStroke.a) == null) ? null : expression10.e(oj3Var, e74Var));
        DivStroke divStroke2 = divBorder.e;
        addSubscription((divStroke2 == null || (expression9 = divStroke2.d) == null) ? null : expression9.e(oj3Var, e74Var));
        DivStroke divStroke3 = divBorder.e;
        addSubscription((divStroke3 == null || (expression8 = divStroke3.c) == null) ? null : expression8.e(oj3Var, e74Var));
        DivShadow divShadow = divBorder.d;
        addSubscription((divShadow == null || (expression7 = divShadow.a) == null) ? null : expression7.e(oj3Var, e74Var));
        DivShadow divShadow2 = divBorder.d;
        addSubscription((divShadow2 == null || (expression6 = divShadow2.b) == null) ? null : expression6.e(oj3Var, e74Var));
        DivShadow divShadow3 = divBorder.d;
        addSubscription((divShadow3 == null || (expression5 = divShadow3.c) == null) ? null : expression5.e(oj3Var, e74Var));
        DivShadow divShadow4 = divBorder.d;
        addSubscription((divShadow4 == null || (divPoint4 = divShadow4.d) == null || (divDimension4 = divPoint4.a) == null || (expression4 = divDimension4.a) == null) ? null : expression4.e(oj3Var, e74Var));
        DivShadow divShadow5 = divBorder.d;
        addSubscription((divShadow5 == null || (divPoint3 = divShadow5.d) == null || (divDimension3 = divPoint3.a) == null || (expression3 = divDimension3.b) == null) ? null : expression3.e(oj3Var, e74Var));
        DivShadow divShadow6 = divBorder.d;
        addSubscription((divShadow6 == null || (divPoint2 = divShadow6.d) == null || (divDimension2 = divPoint2.b) == null || (expression2 = divDimension2.a) == null) ? null : expression2.e(oj3Var, e74Var));
        DivShadow divShadow7 = divBorder.d;
        if (divShadow7 != null && (divPoint = divShadow7.d) != null && (divDimension = divPoint.b) != null && (expression = divDimension.b) != null) {
            qc2VarE = expression.e(oj3Var, e74Var);
        }
        addSubscription(qc2VarE);
    }

    public final void q(int i, int i2) {
        m();
    }

    public final void r(DivBorder divBorder, oj3 oj3Var) {
        y45.j(oj3Var, "resolver");
        if (DivDataExtensionsKt.c(divBorder, this.d)) {
            return;
        }
        release();
        this.d = divBorder;
        f(divBorder, oj3Var);
    }

    public final void s(boolean z) {
        if (this.o == z) {
            return;
        }
        this.o = z;
        n();
        this.c.invalidate();
    }

    public final boolean t() {
        return this.o && (this.b.getForceCanvasClipping() || this.m || ((!this.n && (this.k || this.l)) || m7b.a(this.c)));
    }

    public final boolean u() {
        return this.m || m7b.a(this.c);
    }
}
