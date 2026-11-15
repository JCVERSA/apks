package com.yandex.div.core.view2.divs;

import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import androidx.core.view.OneShotPreDrawListener;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.expression.variables.TwoWayVariableBinder;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.divs.widgets.DivSliderView;
import com.yandex.div.internal.widget.slider.SliderView;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivDimension;
import com.yandex.div2.DivDrawable;
import com.yandex.div2.DivEdgeInsets;
import com.yandex.div2.DivFontWeight;
import com.yandex.div2.DivPoint;
import com.yandex.div2.DivSizeUnit;
import com.yandex.div2.DivSlider;
import defpackage.ae5;
import defpackage.bu2;
import defpackage.dha;
import defpackage.e74;
import defpackage.gd2;
import defpackage.oj3;
import defpackage.op9;
import defpackage.s86;
import defpackage.sj3;
import defpackage.wc3;
import defpackage.wu2;
import defpackage.xc3;
import defpackage.xi;
import defpackage.y45;
import defpackage.zfb;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class DivSliderBinder extends wu2 {
    public static final a i = new a(null);
    public final gd2 b;
    public final bu2 c;
    public final com.yandex.div.core.expression.variables.b d;
    public final xc3 e;
    public final float f;
    public final boolean g;
    public wc3 h;

    public static final class a {

        public class C0289a {
            public static final int[] a;

            static {
                int[] iArr = new int[DivSizeUnit.values().length];
                try {
                    iArr[DivSizeUnit.DP.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[DivSizeUnit.SP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[DivSizeUnit.PX.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                a = iArr;
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(DivEdgeInsets divEdgeInsets, long j, oj3 oj3Var, DisplayMetrics displayMetrics) {
            y45.j(divEdgeInsets, "<this>");
            y45.j(oj3Var, "resolver");
            y45.j(displayMetrics, "metrics");
            return b(j, (DivSizeUnit) divEdgeInsets.g.b(oj3Var), displayMetrics);
        }

        public final int b(long j, DivSizeUnit divSizeUnit, DisplayMetrics displayMetrics) {
            y45.j(divSizeUnit, "unit");
            y45.j(displayMetrics, "metrics");
            int i = C0289a.a[divSizeUnit.ordinal()];
            if (i == 1) {
                return BaseDivViewExtensionsKt.K(Long.valueOf(j), displayMetrics);
            }
            if (i == 2) {
                return BaseDivViewExtensionsKt.s0(Long.valueOf(j), displayMetrics);
            }
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            long j2 = j >> 31;
            if (j2 == 0 || j2 == -1) {
                return (int) j;
            }
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i("Unable convert '" + j + "' to Int");
            }
            return j > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        }

        public final op9 c(DivSlider.TextStyle textStyle, DisplayMetrics displayMetrics, bu2 bu2Var, oj3 oj3Var) {
            DivDimension divDimension;
            DivDimension divDimension2;
            y45.j(textStyle, "<this>");
            y45.j(displayMetrics, "metrics");
            y45.j(bu2Var, "typefaceProvider");
            y45.j(oj3Var, "resolver");
            float fU = BaseDivViewExtensionsKt.U(((Number) textStyle.b.b(oj3Var)).longValue(), (DivSizeUnit) textStyle.c.b(oj3Var), displayMetrics);
            DivFontWeight divFontWeight = (DivFontWeight) textStyle.e.b(oj3Var);
            Expression expression = textStyle.f;
            Typeface typefaceE0 = BaseDivViewExtensionsKt.e0(BaseDivViewExtensionsKt.g0(divFontWeight, expression != null ? (Long) expression.b(oj3Var) : null), bu2Var);
            DivPoint divPoint = textStyle.g;
            float fG0 = (divPoint == null || (divDimension2 = divPoint.a) == null) ? 0.0f : BaseDivViewExtensionsKt.G0(divDimension2, displayMetrics, oj3Var);
            DivPoint divPoint2 = textStyle.g;
            return new op9(fU, typefaceE0, fG0, (divPoint2 == null || (divDimension = divPoint2.b) == null) ? 0.0f : BaseDivViewExtensionsKt.G0(divDimension, displayMetrics, oj3Var), ((Number) textStyle.h.b(oj3Var)).intValue());
        }

        public a() {
        }
    }

    public static class b implements TwoWayVariableBinder.a {
        public final DivSliderView a;
        public final DivSliderBinder b;
        public final com.yandex.div.core.view2.a c;

        public static final class a implements SliderView.c {
            public final DivSliderBinder a;
            public final com.yandex.div.core.view2.a b;
            public final DivSliderView c;
            public final e74 d;

            public a(DivSliderBinder divSliderBinder, com.yandex.div.core.view2.a aVar, DivSliderView divSliderView, e74 e74Var) {
                this.a = divSliderBinder;
                this.b = aVar;
                this.c = divSliderView;
                this.d = e74Var;
            }

            @Override
            public void b(Float f) {
                this.a.b.o(this.b.a(), this.c, f);
                this.d.invoke(Long.valueOf(f != null ? s86.e(f.floatValue()) : 0L));
            }
        }

        public b(DivSliderView divSliderView, DivSliderBinder divSliderBinder, com.yandex.div.core.view2.a aVar) {
            this.a = divSliderView;
            this.b = divSliderBinder;
            this.c = aVar;
        }

        @Override
        public void b(e74 e74Var) {
            y45.j(e74Var, "valueUpdater");
            DivSliderView divSliderView = this.a;
            divSliderView.addOnThumbChangedListener(new a(this.b, this.c, divSliderView, e74Var));
        }

        @Override
        public void a(Long l) {
            this.a.setThumbSecondaryValue(l != null ? Float.valueOf(l.longValue()) : null, false);
        }
    }

    public static class c implements TwoWayVariableBinder.a {
        public final DivSliderView a;
        public final DivSliderBinder b;
        public final com.yandex.div.core.view2.a c;

        public static final class a implements SliderView.c {
            public final DivSliderBinder a;
            public final com.yandex.div.core.view2.a b;
            public final DivSliderView c;
            public final e74 d;

            public a(DivSliderBinder divSliderBinder, com.yandex.div.core.view2.a aVar, DivSliderView divSliderView, e74 e74Var) {
                this.a = divSliderBinder;
                this.b = aVar;
                this.c = divSliderView;
                this.d = e74Var;
            }

            @Override
            public void a(float f) {
                this.a.b.o(this.b.a(), this.c, Float.valueOf(f));
                this.d.invoke(Long.valueOf(s86.e(f)));
            }
        }

        public c(DivSliderView divSliderView, DivSliderBinder divSliderBinder, com.yandex.div.core.view2.a aVar) {
            this.a = divSliderView;
            this.b = divSliderBinder;
            this.c = aVar;
        }

        @Override
        public void b(e74 e74Var) {
            y45.j(e74Var, "valueUpdater");
            DivSliderView divSliderView = this.a;
            divSliderView.addOnThumbChangedListener(new a(this.b, this.c, divSliderView, e74Var));
        }

        @Override
        public void a(Long l) {
            this.a.setThumbValue(l != null ? l.longValue() : 0.0f, false);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivSliderBinder(DivBaseBinder divBaseBinder, gd2 gd2Var, bu2 bu2Var, com.yandex.div.core.expression.variables.b bVar, xc3 xc3Var, float f, boolean z) {
        super(divBaseBinder);
        y45.j(divBaseBinder, "baseBinder");
        y45.j(gd2Var, "logger");
        y45.j(bu2Var, "typefaceProvider");
        y45.j(bVar, "variableBinder");
        y45.j(xc3Var, "errorCollectors");
        this.b = gd2Var;
        this.c = bu2Var;
        this.d = bVar;
        this.e = xc3Var;
        this.f = f;
        this.g = z;
    }

    public final void A(final DivSliderView divSliderView) {
        if (!this.g || this.h == null) {
            return;
        }
        OneShotPreDrawListener.add(divSliderView, new Runnable() {
            @Override
            public final void run() {
                wc3 wc3Var;
                if (divSliderView.getActiveTickMarkDrawable() == null && divSliderView.getInactiveTickMarkDrawable() == null) {
                    return;
                }
                float maxValue = divSliderView.getMaxValue() - divSliderView.getMinValue();
                Drawable activeTickMarkDrawable = divSliderView.getActiveTickMarkDrawable();
                boolean z = false;
                int intrinsicWidth = activeTickMarkDrawable != null ? activeTickMarkDrawable.getIntrinsicWidth() : 0;
                Drawable inactiveTickMarkDrawable = divSliderView.getInactiveTickMarkDrawable();
                if (Math.max(intrinsicWidth, inactiveTickMarkDrawable != null ? inactiveTickMarkDrawable.getIntrinsicWidth() : 0) * maxValue <= divSliderView.getWidth() || this.h == null) {
                    return;
                }
                wc3 wc3Var2 = this.h;
                y45.g(wc3Var2);
                Iterator itD = wc3Var2.d();
                while (itD.hasNext()) {
                    if (y45.e(((Throwable) itD.next()).getMessage(), "Slider ticks overlap each other.")) {
                        z = true;
                    }
                }
                if (z || (wc3Var = this.h) == null) {
                    return;
                }
                wc3Var.f(new Throwable("Slider ticks overlap each other."));
            }
        });
    }

    public final void B(final DivSliderView divSliderView, final oj3 oj3Var, final DivDrawable divDrawable) {
        if (divDrawable == null) {
            return;
        }
        r(divSliderView, oj3Var, divDrawable);
        sj3.e(divSliderView, divDrawable, oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m217invoke(obj);
                return zfb.a;
            }

            public final void m217invoke(Object obj) {
                y45.j(obj, "it");
                this.this$0.r(divSliderView, oj3Var, divDrawable);
            }
        });
    }

    public final void C(final DivSliderView divSliderView, final oj3 oj3Var, final DivSlider.TextStyle textStyle) {
        s(divSliderView, oj3Var, textStyle);
        if (textStyle == null) {
            return;
        }
        divSliderView.addSubscription(textStyle.h.e(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).intValue());
                return zfb.a;
            }

            public final void invoke(int i2) {
                this.this$0.s(divSliderView, oj3Var, textStyle);
            }
        }));
    }

    public final void D(DivSliderView divSliderView, String str, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath) {
        divSliderView.addSubscription(this.d.a(aVar, str, new b(divSliderView, this, aVar), divStatePath));
    }

    public final void E(final DivSliderView divSliderView, final oj3 oj3Var, final DivDrawable divDrawable) {
        t(divSliderView, oj3Var, divDrawable);
        sj3.e(divSliderView, divDrawable, oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m218invoke(obj);
                return zfb.a;
            }

            public final void m218invoke(Object obj) {
                y45.j(obj, "it");
                this.this$0.t(divSliderView, oj3Var, divDrawable);
            }
        });
    }

    public final void F(final DivSliderView divSliderView, final oj3 oj3Var, final DivSlider.TextStyle textStyle) {
        u(divSliderView, oj3Var, textStyle);
        if (textStyle == null) {
            return;
        }
        divSliderView.addSubscription(textStyle.h.e(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).intValue());
                return zfb.a;
            }

            public final void invoke(int i2) {
                this.this$0.u(divSliderView, oj3Var, textStyle);
            }
        }));
    }

    public final void G(DivSliderView divSliderView, DivSlider divSlider, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath) {
        String str = divSlider.E;
        if (str == null) {
            return;
        }
        divSliderView.addSubscription(this.d.a(aVar, str, new c(divSliderView, this, aVar), divStatePath));
    }

    public final void H(final DivSliderView divSliderView, final oj3 oj3Var, final DivDrawable divDrawable) {
        v(divSliderView, oj3Var, divDrawable);
        sj3.e(divSliderView, divDrawable, oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m219invoke(obj);
                return zfb.a;
            }

            public final void m219invoke(Object obj) {
                y45.j(obj, "it");
                this.this$0.v(divSliderView, oj3Var, divDrawable);
            }
        });
    }

    public final void I(final DivSliderView divSliderView, final oj3 oj3Var, final DivDrawable divDrawable) {
        w(divSliderView, oj3Var, divDrawable);
        sj3.e(divSliderView, divDrawable, oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m220invoke(obj);
                return zfb.a;
            }

            public final void m220invoke(Object obj) {
                y45.j(obj, "it");
                this.this$0.w(divSliderView, oj3Var, divDrawable);
            }
        });
    }

    public final void J(final DivSliderView divSliderView, final oj3 oj3Var, final DivDrawable divDrawable) {
        x(divSliderView, oj3Var, divDrawable);
        sj3.e(divSliderView, divDrawable, oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m221invoke(obj);
                return zfb.a;
            }

            public final void m221invoke(Object obj) {
                y45.j(obj, "it");
                this.this$0.x(divSliderView, oj3Var, divDrawable);
            }
        });
    }

    public final void K(final DivSliderView divSliderView, final oj3 oj3Var, final DivDrawable divDrawable) {
        y(divSliderView, oj3Var, divDrawable);
        sj3.e(divSliderView, divDrawable, oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m222invoke(obj);
                return zfb.a;
            }

            public final void m222invoke(Object obj) {
                y45.j(obj, "it");
                this.this$0.y(divSliderView, oj3Var, divDrawable);
            }
        });
    }

    public final void L(final DivSliderView divSliderView, DivSlider divSlider, final oj3 oj3Var) {
        divSliderView.getRanges().clear();
        List list = divSlider.u;
        if (list == null) {
            return;
        }
        final DisplayMetrics displayMetrics = divSliderView.getResources().getDisplayMetrics();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            DivSlider.Range range = (DivSlider.Range) it.next();
            final SliderView.d dVar = new SliderView.d();
            divSliderView.getRanges().add(dVar);
            Expression expression = range.c;
            if (expression == null) {
                expression = divSlider.s;
            }
            divSliderView.addSubscription(expression.f(oj3Var, new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke(((Number) obj).longValue());
                    return zfb.a;
                }

                public final void invoke(long j) {
                    DivSliderBinder.a unused = DivSliderBinder.i;
                    DivSliderView divSliderView2 = divSliderView;
                    dVar.p(j);
                    divSliderView2.requestLayout();
                    divSliderView2.invalidate();
                }
            }));
            Expression expression2 = range.a;
            if (expression2 == null) {
                expression2 = divSlider.r;
            }
            divSliderView.addSubscription(expression2.f(oj3Var, new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke(((Number) obj).longValue());
                    return zfb.a;
                }

                public final void invoke(long j) {
                    DivSliderBinder.a unused = DivSliderBinder.i;
                    DivSliderView divSliderView2 = divSliderView;
                    dVar.k(j);
                    divSliderView2.requestLayout();
                    divSliderView2.invalidate();
                }
            }));
            final DivEdgeInsets divEdgeInsets = range.b;
            if (divEdgeInsets == null) {
                dVar.n(0);
                dVar.m(0);
                it = it;
            } else {
                Expression expression3 = divEdgeInsets.e;
                boolean z = (expression3 == null && divEdgeInsets.b == null) ? false : true;
                if (!z) {
                    expression3 = divEdgeInsets.c;
                }
                final Expression expression4 = expression3;
                final Expression expression5 = z ? divEdgeInsets.b : divEdgeInsets.d;
                if (expression4 != null) {
                    divSliderView.addSubscription(expression4.e(oj3Var, new e74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj) {
                            invoke(((Number) obj).longValue());
                            return zfb.a;
                        }

                        public final void invoke(long j) {
                            DivSliderBinder.a unused = DivSliderBinder.i;
                            DivSliderView divSliderView2 = divSliderView;
                            SliderView.d dVar2 = dVar;
                            DivEdgeInsets divEdgeInsets2 = divEdgeInsets;
                            oj3 oj3Var2 = oj3Var;
                            DisplayMetrics displayMetrics2 = displayMetrics;
                            DivSliderBinder.a aVar = DivSliderBinder.i;
                            y45.i(displayMetrics2, "metrics");
                            dVar2.n(aVar.a(divEdgeInsets2, j, oj3Var2, displayMetrics2));
                            divSliderView2.requestLayout();
                            divSliderView2.invalidate();
                        }
                    }));
                }
                if (expression5 != null) {
                    divSliderView.addSubscription(expression5.e(oj3Var, new e74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj) {
                            invoke(((Number) obj).longValue());
                            return zfb.a;
                        }

                        public final void invoke(long j) {
                            DivSliderBinder.a unused = DivSliderBinder.i;
                            DivSliderView divSliderView2 = divSliderView;
                            SliderView.d dVar2 = dVar;
                            DivEdgeInsets divEdgeInsets2 = divEdgeInsets;
                            oj3 oj3Var2 = oj3Var;
                            DisplayMetrics displayMetrics2 = displayMetrics;
                            DivSliderBinder.a aVar = DivSliderBinder.i;
                            y45.i(displayMetrics2, "metrics");
                            dVar2.m(aVar.a(divEdgeInsets2, j, oj3Var2, displayMetrics2));
                            divSliderView2.requestLayout();
                            divSliderView2.invalidate();
                        }
                    }));
                }
                divEdgeInsets.g.f(oj3Var, new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((DivSizeUnit) obj);
                        return zfb.a;
                    }

                    public final void invoke(DivSizeUnit divSizeUnit) {
                        y45.j(divSizeUnit, "unit");
                        DivSliderBinder.a unused = DivSliderBinder.i;
                        DivSliderView divSliderView2 = divSliderView;
                        Expression expression6 = expression4;
                        Expression expression7 = expression5;
                        SliderView.d dVar2 = dVar;
                        oj3 oj3Var2 = oj3Var;
                        DisplayMetrics displayMetrics2 = displayMetrics;
                        if (expression6 != null) {
                            DivSliderBinder.a aVar = DivSliderBinder.i;
                            long jLongValue = ((Number) expression6.b(oj3Var2)).longValue();
                            y45.i(displayMetrics2, "metrics");
                            dVar2.n(aVar.b(jLongValue, divSizeUnit, displayMetrics2));
                        }
                        if (expression7 != null) {
                            DivSliderBinder.a aVar2 = DivSliderBinder.i;
                            long jLongValue2 = ((Number) expression7.b(oj3Var2)).longValue();
                            y45.i(displayMetrics2, "metrics");
                            dVar2.m(aVar2.b(jLongValue2, divSizeUnit, displayMetrics2));
                        }
                        divSliderView2.requestLayout();
                        divSliderView2.invalidate();
                    }
                });
            }
            DivDrawable divDrawable = range.d;
            if (divDrawable == null) {
                divDrawable = divSlider.I;
            }
            final DivDrawable divDrawable2 = divDrawable;
            e74 e74Var = new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    m223invoke(obj);
                    return zfb.a;
                }

                public final void m223invoke(Object obj) {
                    y45.j(obj, "<anonymous parameter 0>");
                    DivSliderBinder.a unused = DivSliderBinder.i;
                    DivSliderView divSliderView2 = divSliderView;
                    SliderView.d dVar2 = dVar;
                    DivDrawable divDrawable3 = divDrawable2;
                    DisplayMetrics displayMetrics2 = displayMetrics;
                    oj3 oj3Var2 = oj3Var;
                    y45.i(displayMetrics2, "metrics");
                    dVar2.i(BaseDivViewExtensionsKt.y0(divDrawable3, displayMetrics2, oj3Var2));
                    divSliderView2.requestLayout();
                    divSliderView2.invalidate();
                }
            };
            zfb zfbVar = zfb.a;
            e74Var.invoke(zfbVar);
            sj3.e(divSliderView, divDrawable2, oj3Var, e74Var);
            DivDrawable divDrawable3 = range.e;
            if (divDrawable3 == null) {
                divDrawable3 = divSlider.J;
            }
            final DivDrawable divDrawable4 = divDrawable3;
            e74 e74Var2 = new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    m224invoke(obj);
                    return zfb.a;
                }

                public final void m224invoke(Object obj) {
                    y45.j(obj, "<anonymous parameter 0>");
                    DivSliderBinder.a unused = DivSliderBinder.i;
                    DivSliderView divSliderView2 = divSliderView;
                    SliderView.d dVar2 = dVar;
                    DivDrawable divDrawable5 = divDrawable4;
                    DisplayMetrics displayMetrics2 = displayMetrics;
                    oj3 oj3Var2 = oj3Var;
                    y45.i(displayMetrics2, "metrics");
                    dVar2.l(BaseDivViewExtensionsKt.y0(divDrawable5, displayMetrics2, oj3Var2));
                    divSliderView2.requestLayout();
                    divSliderView2.invalidate();
                }
            };
            e74Var2.invoke(zfbVar);
            sj3.e(divSliderView, divDrawable4, oj3Var, e74Var2);
            it = it;
        }
    }

    public final void M(DivSliderView divSliderView, DivSlider divSlider, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath) {
        String str = divSlider.B;
        zfb zfbVar = null;
        if (str == null) {
            divSliderView.setThumbSecondaryDrawable(null);
            divSliderView.setThumbSecondaryValue(null, false);
            return;
        }
        oj3 oj3VarB = aVar.b();
        D(divSliderView, str, aVar, divStatePath);
        DivDrawable divDrawable = divSlider.z;
        if (divDrawable != null) {
            B(divSliderView, oj3VarB, divDrawable);
            zfbVar = zfb.a;
        }
        if (zfbVar == null) {
            B(divSliderView, oj3VarB, divSlider.C);
        }
        C(divSliderView, oj3VarB, divSlider.A);
    }

    public final void N(DivSliderView divSliderView, DivSlider divSlider, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath) {
        G(divSliderView, divSlider, aVar, divStatePath);
        E(divSliderView, aVar.b(), divSlider.C);
        F(divSliderView, aVar.b(), divSlider.D);
    }

    public final void O(DivSliderView divSliderView, DivSlider divSlider, oj3 oj3Var) {
        H(divSliderView, oj3Var, divSlider.F);
        I(divSliderView, oj3Var, divSlider.G);
    }

    public final void P(DivSliderView divSliderView, DivSlider divSlider, oj3 oj3Var) {
        J(divSliderView, oj3Var, divSlider.I);
        K(divSliderView, oj3Var, divSlider.J);
    }

    public final void r(SliderView sliderView, oj3 oj3Var, DivDrawable divDrawable) {
        DisplayMetrics displayMetrics = sliderView.getResources().getDisplayMetrics();
        y45.i(displayMetrics, "resources.displayMetrics");
        sliderView.setThumbSecondaryDrawable(BaseDivViewExtensionsKt.y0(divDrawable, displayMetrics, oj3Var));
    }

    public final void s(SliderView sliderView, oj3 oj3Var, DivSlider.TextStyle textStyle) {
        dha dhaVar;
        if (textStyle != null) {
            a aVar = i;
            DisplayMetrics displayMetrics = sliderView.getResources().getDisplayMetrics();
            y45.i(displayMetrics, "resources.displayMetrics");
            dhaVar = new dha(aVar.c(textStyle, displayMetrics, this.c, oj3Var));
        } else {
            dhaVar = null;
        }
        sliderView.setThumbSecondTextDrawable(dhaVar);
    }

    public final void t(SliderView sliderView, oj3 oj3Var, DivDrawable divDrawable) {
        DisplayMetrics displayMetrics = sliderView.getResources().getDisplayMetrics();
        y45.i(displayMetrics, "resources.displayMetrics");
        sliderView.setThumbDrawable(BaseDivViewExtensionsKt.y0(divDrawable, displayMetrics, oj3Var));
    }

    public final void u(SliderView sliderView, oj3 oj3Var, DivSlider.TextStyle textStyle) {
        dha dhaVar;
        if (textStyle != null) {
            a aVar = i;
            DisplayMetrics displayMetrics = sliderView.getResources().getDisplayMetrics();
            y45.i(displayMetrics, "resources.displayMetrics");
            dhaVar = new dha(aVar.c(textStyle, displayMetrics, this.c, oj3Var));
        } else {
            dhaVar = null;
        }
        sliderView.setThumbTextDrawable(dhaVar);
    }

    public final void v(DivSliderView divSliderView, oj3 oj3Var, DivDrawable divDrawable) {
        Drawable drawableY0;
        if (divDrawable != null) {
            DisplayMetrics displayMetrics = divSliderView.getResources().getDisplayMetrics();
            y45.i(displayMetrics, "resources.displayMetrics");
            drawableY0 = BaseDivViewExtensionsKt.y0(divDrawable, displayMetrics, oj3Var);
        } else {
            drawableY0 = null;
        }
        divSliderView.setActiveTickMarkDrawable(drawableY0);
        A(divSliderView);
    }

    public final void w(DivSliderView divSliderView, oj3 oj3Var, DivDrawable divDrawable) {
        Drawable drawableY0;
        if (divDrawable != null) {
            DisplayMetrics displayMetrics = divSliderView.getResources().getDisplayMetrics();
            y45.i(displayMetrics, "resources.displayMetrics");
            drawableY0 = BaseDivViewExtensionsKt.y0(divDrawable, displayMetrics, oj3Var);
        } else {
            drawableY0 = null;
        }
        divSliderView.setInactiveTickMarkDrawable(drawableY0);
        A(divSliderView);
    }

    public final void x(SliderView sliderView, oj3 oj3Var, DivDrawable divDrawable) {
        DisplayMetrics displayMetrics = sliderView.getResources().getDisplayMetrics();
        y45.i(displayMetrics, "resources.displayMetrics");
        sliderView.setActiveTrackDrawable(BaseDivViewExtensionsKt.y0(divDrawable, displayMetrics, oj3Var));
    }

    public final void y(SliderView sliderView, oj3 oj3Var, DivDrawable divDrawable) {
        DisplayMetrics displayMetrics = sliderView.getResources().getDisplayMetrics();
        y45.i(displayMetrics, "resources.displayMetrics");
        sliderView.setInactiveTrackDrawable(BaseDivViewExtensionsKt.y0(divDrawable, displayMetrics, oj3Var));
    }

    @Override
    public void b(final DivSliderView divSliderView, com.yandex.div.core.view2.a aVar, DivSlider divSlider, DivSlider divSlider2, DivStatePath divStatePath) {
        y45.j(divSliderView, "<this>");
        y45.j(aVar, "bindingContext");
        y45.j(divSlider, TtmlNode.TAG_DIV);
        y45.j(divStatePath, "path");
        oj3 oj3VarB = aVar.b();
        this.h = this.e.a(aVar.a().getDataTag(), aVar.a().getDivData());
        divSliderView.setInterceptionAngle(this.f);
        divSliderView.addSubscription(divSlider.s.f(oj3VarB, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).longValue());
                return zfb.a;
            }

            public final void invoke(long j) {
                divSliderView.setMinValue(j);
                this.A(divSliderView);
            }
        }));
        divSliderView.addSubscription(divSlider.r.f(oj3VarB, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).longValue());
                return zfb.a;
            }

            public final void invoke(long j) {
                divSliderView.setMaxValue(j);
                this.A(divSliderView);
            }
        }));
        divSliderView.addSubscription(divSlider.o.f(oj3VarB, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Boolean) obj).booleanValue());
                return zfb.a;
            }

            public final void invoke(boolean z) {
                divSliderView.setInteractive(z);
            }
        }));
        divSliderView.clearOnThumbChangedListener();
        N(divSliderView, divSlider, aVar, divStatePath);
        M(divSliderView, divSlider, aVar, divStatePath);
        P(divSliderView, divSlider, oj3VarB);
        O(divSliderView, divSlider, oj3VarB);
        L(divSliderView, divSlider, oj3VarB);
    }
}
