package com.yandex.div.core.view2.divs;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewGroupKt;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.yandex.div.core.state.DivPathUtils;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.DivVisibilityActionTracker;
import com.yandex.div.core.view2.animations.UtilsKt;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.divs.widgets.DivBorderDrawer;
import com.yandex.div.core.view2.divs.widgets.DivStateLayout;
import com.yandex.div.core.view2.spannable.TextVerticalAlignment;
import com.yandex.div.core.widget.AspectView;
import com.yandex.div.internal.drawable.ScalingDrawable;
import com.yandex.div.internal.widget.AspectImageView;
import com.yandex.div.internal.widget.DivLayoutParams;
import com.yandex.div.json.ParsingException;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.Div;
import com.yandex.div2.DivAccessibility;
import com.yandex.div2.DivAction;
import com.yandex.div2.DivAlignmentHorizontal;
import com.yandex.div2.DivAlignmentVertical;
import com.yandex.div2.DivAnimation;
import com.yandex.div2.DivAspect;
import com.yandex.div2.DivBlendMode;
import com.yandex.div2.DivBorder;
import com.yandex.div2.DivCollectionItemBuilder;
import com.yandex.div2.DivContainer;
import com.yandex.div2.DivContentAlignmentHorizontal;
import com.yandex.div2.DivContentAlignmentVertical;
import com.yandex.div2.DivDefaultIndicatorItemPlacement;
import com.yandex.div2.DivDimension;
import com.yandex.div2.DivDisappearAction;
import com.yandex.div2.DivDrawable;
import com.yandex.div2.DivEdgeInsets;
import com.yandex.div2.DivFilter;
import com.yandex.div2.DivFixedSize;
import com.yandex.div2.DivFontWeight;
import com.yandex.div2.DivImageScale;
import com.yandex.div2.DivIndicator;
import com.yandex.div2.DivIndicatorItemPlacement;
import com.yandex.div2.DivPivot;
import com.yandex.div2.DivPivotFixed;
import com.yandex.div2.DivPivotPercentage;
import com.yandex.div2.DivRadialGradientFixedCenter;
import com.yandex.div2.DivShape;
import com.yandex.div2.DivShapeDrawable;
import com.yandex.div2.DivSize;
import com.yandex.div2.DivSizeUnit;
import com.yandex.div2.DivState;
import com.yandex.div2.DivStroke;
import com.yandex.div2.DivTextAlignmentVertical;
import com.yandex.div2.DivTransform;
import com.yandex.div2.DivVisibilityAction;
import com.yandex.div2.DivWrapContentSize;
import defpackage.a15;
import defpackage.ae5;
import defpackage.b5;
import defpackage.bh2;
import defpackage.bk2;
import defpackage.bu2;
import defpackage.d81;
import defpackage.dx3;
import defpackage.e74;
import defpackage.ew0;
import defpackage.hw8;
import defpackage.i81;
import defpackage.lj3;
import defpackage.mk2;
import defpackage.og2;
import defpackage.oj3;
import defpackage.pdc;
import defpackage.pp5;
import defpackage.qc2;
import defpackage.qj3;
import defpackage.rg2;
import defpackage.s74;
import defpackage.s86;
import defpackage.uj3;
import defpackage.vg2;
import defpackage.wp2;
import defpackage.x71;
import defpackage.xi;
import defpackage.y45;
import defpackage.y71;
import defpackage.y90;
import defpackage.yv0;
import defpackage.ze0;
import defpackage.zfb;
import defpackage.zl2;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.sequences.SequencesKt___SequencesKt;

public abstract class BaseDivViewExtensionsKt {

    public class a {
        public static final int[] a;
        public static final int[] b;
        public static final int[] c;
        public static final int[] d;
        public static final int[] e;
        public static final int[] f;
        public static final int[] g;
        public static final int[] h;
        public static final int[] i;

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
            int[] iArr2 = new int[DivAlignmentHorizontal.values().length];
            try {
                iArr2[DivAlignmentHorizontal.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[DivAlignmentHorizontal.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[DivAlignmentHorizontal.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[DivAlignmentHorizontal.START.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[DivAlignmentHorizontal.END.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            b = iArr2;
            int[] iArr3 = new int[DivAlignmentVertical.values().length];
            try {
                iArr3[DivAlignmentVertical.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr3[DivAlignmentVertical.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr3[DivAlignmentVertical.BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            c = iArr3;
            int[] iArr4 = new int[DivContentAlignmentHorizontal.values().length];
            try {
                iArr4[DivContentAlignmentHorizontal.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr4[DivContentAlignmentHorizontal.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr4[DivContentAlignmentHorizontal.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr4[DivContentAlignmentHorizontal.START.ordinal()] = 4;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr4[DivContentAlignmentHorizontal.END.ordinal()] = 5;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr4[DivContentAlignmentHorizontal.SPACE_AROUND.ordinal()] = 6;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr4[DivContentAlignmentHorizontal.SPACE_BETWEEN.ordinal()] = 7;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr4[DivContentAlignmentHorizontal.SPACE_EVENLY.ordinal()] = 8;
            } catch (NoSuchFieldError unused19) {
            }
            d = iArr4;
            int[] iArr5 = new int[DivContentAlignmentVertical.values().length];
            try {
                iArr5[DivContentAlignmentVertical.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr5[DivContentAlignmentVertical.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr5[DivContentAlignmentVertical.BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr5[DivContentAlignmentVertical.SPACE_AROUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr5[DivContentAlignmentVertical.SPACE_BETWEEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr5[DivContentAlignmentVertical.SPACE_EVENLY.ordinal()] = 6;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr5[DivContentAlignmentVertical.BASELINE.ordinal()] = 7;
            } catch (NoSuchFieldError unused26) {
            }
            e = iArr5;
            int[] iArr6 = new int[DivImageScale.values().length];
            try {
                iArr6[DivImageScale.FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr6[DivImageScale.FIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr6[DivImageScale.STRETCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr6[DivImageScale.NO_SCALE.ordinal()] = 4;
            } catch (NoSuchFieldError unused30) {
            }
            f = iArr6;
            int[] iArr7 = new int[DivTextAlignmentVertical.values().length];
            try {
                iArr7[DivTextAlignmentVertical.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr7[DivTextAlignmentVertical.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr7[DivTextAlignmentVertical.BASELINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr7[DivTextAlignmentVertical.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused34) {
            }
            g = iArr7;
            int[] iArr8 = new int[DivBlendMode.values().length];
            try {
                iArr8[DivBlendMode.SOURCE_IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr8[DivBlendMode.SOURCE_ATOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr8[DivBlendMode.DARKEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr8[DivBlendMode.LIGHTEN.ordinal()] = 4;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr8[DivBlendMode.MULTIPLY.ordinal()] = 5;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr8[DivBlendMode.SCREEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused40) {
            }
            h = iArr8;
            int[] iArr9 = new int[DivFontWeight.values().length];
            try {
                iArr9[DivFontWeight.LIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr9[DivFontWeight.REGULAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr9[DivFontWeight.MEDIUM.ordinal()] = 3;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr9[DivFontWeight.BOLD.ordinal()] = 4;
            } catch (NoSuchFieldError unused44) {
            }
            i = iArr9;
        }
    }

    public static final class b implements View.OnLayoutChangeListener {
        public final View b;
        public final Bitmap c;
        public final List d;
        public final oj3 e;
        public final ze0 f;
        public final e74 g;

        public b(View view, Bitmap bitmap, List list, oj3 oj3Var, ze0 ze0Var, e74 e74Var) {
            this.b = view;
            this.c = bitmap;
            this.d = list;
            this.e = oj3Var;
            this.f = ze0Var;
            this.g = e74Var;
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            int i9;
            view.removeOnLayoutChangeListener(this);
            float fMax = Math.max(this.b.getHeight() / this.c.getHeight(), this.b.getWidth() / this.c.getWidth());
            Bitmap bitmap = this.c;
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * fMax), (int) (fMax * this.c.getHeight()), false);
            for (DivFilter divFilter : this.d) {
                if (divFilter instanceof DivFilter.a) {
                    long jLongValue = ((Number) ((DivFilter.a) divFilter).c().a.b(this.e)).longValue();
                    long j = jLongValue >> 31;
                    if (j == 0 || j == -1) {
                        i9 = (int) jLongValue;
                    } else {
                        ae5 ae5Var = ae5.a;
                        if (xi.o()) {
                            xi.i("Unable convert '" + jLongValue + "' to Int");
                        }
                        i9 = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                    }
                    Integer numValueOf = Integer.valueOf(i9);
                    DisplayMetrics displayMetrics = this.b.getResources().getDisplayMetrics();
                    y45.i(displayMetrics, "resources.displayMetrics");
                    bitmapCreateScaledBitmap = this.f.a(bitmapCreateScaledBitmap, BaseDivViewExtensionsKt.L(numValueOf, displayMetrics));
                } else if ((divFilter instanceof DivFilter.c) && pdc.f(this.b)) {
                    bitmapCreateScaledBitmap = this.f.b(bitmapCreateScaledBitmap);
                }
            }
            this.g.invoke(bitmapCreateScaledBitmap);
        }
    }

    public static final class c implements View.OnLayoutChangeListener {
        public final ViewGroup b;
        public final List c;
        public final DivVisibilityActionTracker d;
        public final Div2View e;

        public c(ViewGroup viewGroup, List list, DivVisibilityActionTracker divVisibilityActionTracker, Div2View div2View) {
            this.b = viewGroup;
            this.c = list;
            this.d = divVisibilityActionTracker;
            this.e = div2View;
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            view.removeOnLayoutChangeListener(this);
            for (Pair pair : SequencesKt___SequencesKt.f0(ViewGroupKt.getChildren(this.b), i81.b0(this.c))) {
                View view2 = (View) pair.component1();
                zl2 zl2Var = (zl2) pair.component2();
                DivVisibilityActionTracker.x(this.d, this.e, zl2Var.d(), view2, zl2Var.c(), null, null, 48, null);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void A(final View view, DivAspect divAspect, DivAspect divAspect2, oj3 oj3Var) {
        Expression expression;
        Expression expression2;
        y45.j(view, "<this>");
        y45.j(oj3Var, "resolver");
        if (view instanceof AspectView) {
            qc2 qc2VarE = null;
            if (uj3.b(divAspect != null ? divAspect.a : null, divAspect2 != null ? divAspect2.a : null)) {
                return;
            }
            f((AspectView) view, (divAspect == null || (expression2 = divAspect.a) == null) ? null : (Double) expression2.b(oj3Var));
            if (uj3.f(divAspect != null ? divAspect.a : null) || !(view instanceof qj3)) {
                return;
            }
            qj3 qj3Var = (qj3) view;
            if (divAspect != null && (expression = divAspect.a) != null) {
                qc2VarE = expression.e(oj3Var, new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke(((Number) obj).doubleValue());
                        return zfb.a;
                    }

                    public final void invoke(double d) {
                        BaseDivViewExtensionsKt.f((AspectView) view, Double.valueOf(d));
                    }
                });
            }
            qj3Var.addSubscription(qc2VarE);
        }
    }

    public static final ScalingDrawable.AlignmentHorizontal A0(DivAlignmentHorizontal divAlignmentHorizontal, boolean z) {
        y45.j(divAlignmentHorizontal, "<this>");
        int i = a.b[divAlignmentHorizontal.ordinal()];
        if (i == 1) {
            return ScalingDrawable.AlignmentHorizontal.LEFT;
        }
        if (i == 2) {
            return ScalingDrawable.AlignmentHorizontal.CENTER;
        }
        if (i == 3) {
            return ScalingDrawable.AlignmentHorizontal.RIGHT;
        }
        if (i == 4) {
            return z ? ScalingDrawable.AlignmentHorizontal.RIGHT : ScalingDrawable.AlignmentHorizontal.LEFT;
        }
        if (i == 5) {
            return z ? ScalingDrawable.AlignmentHorizontal.LEFT : ScalingDrawable.AlignmentHorizontal.RIGHT;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void B(final ViewGroup viewGroup, Expression expression, Expression expression2, oj3 oj3Var) {
        y45.j(viewGroup, "<this>");
        y45.j(expression, "newClipToBounds");
        y45.j(oj3Var, "resolver");
        if (uj3.b(expression, expression2)) {
            return;
        }
        i(viewGroup, ((Boolean) expression.b(oj3Var)).booleanValue());
        if (uj3.d(expression)) {
            return;
        }
        mk2 mk2Var = viewGroup instanceof mk2 ? (mk2) viewGroup : null;
        if (mk2Var != null) {
            mk2Var.addSubscription(expression.e(oj3Var, new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke(((Boolean) obj).booleanValue());
                    return zfb.a;
                }

                public final void invoke(boolean z) {
                    BaseDivViewExtensionsKt.i(viewGroup, z);
                }
            }));
        }
    }

    public static final AspectImageView.Scale B0(DivImageScale divImageScale) {
        y45.j(divImageScale, "<this>");
        int i = a.f[divImageScale.ordinal()];
        if (i == 1) {
            return AspectImageView.Scale.FILL;
        }
        if (i == 2) {
            return AspectImageView.Scale.FIT;
        }
        if (i == 3) {
            return AspectImageView.Scale.STRETCH;
        }
        if (i == 4) {
            return AspectImageView.Scale.NO_SCALE;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final void C(DivCollectionItemBuilder divCollectionItemBuilder, oj3 oj3Var, e74 e74Var) {
        y45.j(divCollectionItemBuilder, "builder");
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        divCollectionItemBuilder.a.e(oj3Var, e74Var);
        oj3 oj3VarI = bh2.i(divCollectionItemBuilder, oj3Var);
        Iterator it = divCollectionItemBuilder.c.iterator();
        while (it.hasNext()) {
            ((DivCollectionItemBuilder.Prototype) it.next()).c.e(oj3VarI, e74Var);
        }
    }

    public static final int C0(DivSize divSize, DisplayMetrics displayMetrics, oj3 oj3Var, ViewGroup.LayoutParams layoutParams) {
        y45.j(displayMetrics, "metrics");
        y45.j(oj3Var, "resolver");
        if (divSize == null) {
            return -2;
        }
        if (divSize instanceof DivSize.c) {
            return -1;
        }
        if (divSize instanceof DivSize.b) {
            return H0(((DivSize.b) divSize).c(), displayMetrics, oj3Var);
        }
        if (!(divSize instanceof DivSize.d)) {
            throw new NoWhenBranchMatchedException();
        }
        Expression expression = ((DivSize.d) divSize).c().a;
        return (expression != null && ((Boolean) expression.b(oj3Var)).booleanValue() && (layoutParams instanceof DivLayoutParams)) ? -3 : -2;
    }

    public static final void D(View view, og2 og2Var, oj3 oj3Var) {
        y45.j(view, "<this>");
        y45.j(og2Var, TtmlNode.TAG_DIV);
        y45.j(oj3Var, "resolver");
        try {
            z(view, og2Var, oj3Var);
            m(view, og2Var, oj3Var);
            Expression expressionG = og2Var.g();
            DivAlignmentHorizontal divAlignmentHorizontal = expressionG != null ? (DivAlignmentHorizontal) expressionG.b(oj3Var) : null;
            Expression expressionO = og2Var.o();
            d(view, divAlignmentHorizontal, expressionO != null ? (DivAlignmentVertical) expressionO.b(oj3Var) : null);
        } catch (ParsingException e) {
            if (!lj3.b(e)) {
                throw e;
            }
        }
    }

    public static int D0(DivSize divSize, DisplayMetrics displayMetrics, oj3 oj3Var, ViewGroup.LayoutParams layoutParams, int i, Object obj) {
        if ((i & 4) != 0) {
            layoutParams = null;
        }
        return C0(divSize, displayMetrics, oj3Var, layoutParams);
    }

    public static final void E(View view, final com.yandex.div.core.view2.a aVar, final rg2 rg2Var) {
        y45.j(view, "<this>");
        y45.j(aVar, "bindingContext");
        y45.j(rg2Var, "binder");
        P0(view, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final Boolean invoke(View view2) {
                DivStatePath path;
                y45.j(view2, "currentView");
                if (!(view2 instanceof DivStateLayout)) {
                    return Boolean.TRUE;
                }
                DivStateLayout divStateLayout = (DivStateLayout) view2;
                Div.n div = divStateLayout.getDiv();
                if (div != null && (path = divStateLayout.getPath()) != null) {
                    rg2Var.b(aVar, view2, div, path.n());
                    return Boolean.FALSE;
                }
                return Boolean.FALSE;
            }
        });
    }

    public static final PorterDuff.Mode E0(DivBlendMode divBlendMode) {
        y45.j(divBlendMode, "<this>");
        switch (a.h[divBlendMode.ordinal()]) {
            case 1:
                return PorterDuff.Mode.SRC_IN;
            case 2:
                return PorterDuff.Mode.SRC_ATOP;
            case 3:
                return PorterDuff.Mode.DARKEN;
            case 4:
                return PorterDuff.Mode.LIGHTEN;
            case 5:
                return PorterDuff.Mode.MULTIPLY;
            case 6:
                return PorterDuff.Mode.SCREEN;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public static final boolean F(DivSize divSize, oj3 oj3Var) {
        y45.j(divSize, "<this>");
        y45.j(oj3Var, "resolver");
        if (!(divSize instanceof DivSize.d)) {
            return true;
        }
        Expression expression = ((DivSize.d) divSize).c().a;
        return expression != null && ((Boolean) expression.b(oj3Var)).booleanValue();
    }

    public static final int F0(long j, DivSizeUnit divSizeUnit, DisplayMetrics displayMetrics) {
        y45.j(divSizeUnit, "unit");
        y45.j(displayMetrics, "metrics");
        int i = a.a[divSizeUnit.ordinal()];
        if (i == 1) {
            return K(Long.valueOf(j), displayMetrics);
        }
        if (i == 2) {
            return s0(Long.valueOf(j), displayMetrics);
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

    public static final void G(View view, a15 a15Var) {
        y45.j(view, "<this>");
        y45.j(a15Var, "focusTracker");
        if (view.isFocused() || !view.isInTouchMode()) {
            return;
        }
        a15Var.d();
    }

    public static final int G0(DivDimension divDimension, DisplayMetrics displayMetrics, oj3 oj3Var) {
        y45.j(divDimension, "<this>");
        y45.j(displayMetrics, "metrics");
        y45.j(oj3Var, "resolver");
        int i = a.a[((DivSizeUnit) divDimension.a.b(oj3Var)).ordinal()];
        if (i == 1) {
            return L((Number) divDimension.b.b(oj3Var), displayMetrics);
        }
        if (i == 2) {
            return t0((Number) divDimension.b.b(oj3Var), displayMetrics);
        }
        if (i == 3) {
            return (int) ((Number) divDimension.b.b(oj3Var)).doubleValue();
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0038  */
    public static final s74 H(View view, com.yandex.div.core.view2.a aVar, DivAnimation divAnimation, bk2 bk2Var) {
        final GestureDetector gestureDetector;
        y45.j(view, "<this>");
        y45.j(aVar, "context");
        final s74 s74VarB = divAnimation != null ? UtilsKt.b(divAnimation, aVar.b(), view) : null;
        if (bk2Var == null) {
            gestureDetector = null;
        } else {
            if (((bk2Var.b() == null && bk2Var.a() == null) ? null : bk2Var) != null) {
                gestureDetector = new GestureDetector(aVar.a().getContext(), bk2Var);
            } else {
                gestureDetector = null;
            }
        }
        if (s74VarB == null && gestureDetector == null) {
            return null;
        }
        return new s74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override
            public final Boolean invoke(View view2, MotionEvent motionEvent) {
                y45.j(view2, "v");
                y45.j(motionEvent, NotificationCompat.CATEGORY_EVENT);
                s74 s74Var = s74VarB;
                if (s74Var != null) {
                    s74Var.invoke(view2, motionEvent);
                }
                GestureDetector gestureDetector2 = gestureDetector;
                return Boolean.valueOf(gestureDetector2 != null ? gestureDetector2.onTouchEvent(motionEvent) : false);
            }
        };
    }

    public static final int H0(DivFixedSize divFixedSize, DisplayMetrics displayMetrics, oj3 oj3Var) {
        y45.j(divFixedSize, "<this>");
        y45.j(displayMetrics, "metrics");
        y45.j(oj3Var, "resolver");
        int i = a.a[((DivSizeUnit) divFixedSize.a.b(oj3Var)).ordinal()];
        if (i == 1) {
            return K((Long) divFixedSize.b.b(oj3Var), displayMetrics);
        }
        if (i == 2) {
            return s0((Long) divFixedSize.b.b(oj3Var), displayMetrics);
        }
        if (i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        long jLongValue = ((Number) divFixedSize.b.b(oj3Var)).longValue();
        long j = jLongValue >> 31;
        if (j == 0 || j == -1) {
            return (int) jLongValue;
        }
        ae5 ae5Var = ae5.a;
        if (xi.o()) {
            xi.i("Unable convert '" + jLongValue + "' to Int");
        }
        return jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
    }

    public static final com.yandex.div.internal.widget.indicator.c I(int i, float f, float f2) {
        return new com.yandex.div.internal.widget.indicator.c.a(i, new com.yandex.div.internal.widget.indicator.b.a(f * f2));
    }

    public static final int I0(DivWrapContentSize.ConstraintSize constraintSize, DisplayMetrics displayMetrics, oj3 oj3Var) {
        y45.j(constraintSize, "<this>");
        y45.j(displayMetrics, "metrics");
        y45.j(oj3Var, "resolver");
        int i = a.a[((DivSizeUnit) constraintSize.a.b(oj3Var)).ordinal()];
        if (i == 1) {
            return K((Long) constraintSize.b.b(oj3Var), displayMetrics);
        }
        if (i == 2) {
            return s0((Long) constraintSize.b.b(oj3Var), displayMetrics);
        }
        if (i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        long jLongValue = ((Number) constraintSize.b.b(oj3Var)).longValue();
        long j = jLongValue >> 31;
        if (j == 0 || j == -1) {
            return (int) jLongValue;
        }
        ae5 ae5Var = ae5.a;
        if (xi.o()) {
            xi.i("Unable convert '" + jLongValue + "' to Int");
        }
        return jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
    }

    public static final com.yandex.div.internal.widget.indicator.c J(int i, float f, float f2, float f3, float f4, Float f5, Integer num) {
        return new com.yandex.div.internal.widget.indicator.c.b(i, new com.yandex.div.internal.widget.indicator.b.C0303b(f * f4, f2 * f4, f3 * f4), f5 != null ? f5.floatValue() : 0.0f, num != null ? num.intValue() : 0);
    }

    public static final float J0(DivFixedSize divFixedSize, DisplayMetrics displayMetrics, oj3 oj3Var) {
        y45.j(divFixedSize, "<this>");
        y45.j(displayMetrics, "metrics");
        y45.j(oj3Var, "resolver");
        return Q(((Number) divFixedSize.b.b(oj3Var)).longValue(), (DivSizeUnit) divFixedSize.a.b(oj3Var), displayMetrics);
    }

    public static final int K(Long l, DisplayMetrics displayMetrics) {
        Integer numValueOf;
        int i;
        y45.j(displayMetrics, "metrics");
        if (l != null) {
            long jLongValue = l.longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                i = (int) jLongValue;
            } else {
                ae5 ae5Var = ae5.a;
                if (xi.o()) {
                    xi.i("Unable convert '" + jLongValue + "' to Int");
                }
                i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            numValueOf = Integer.valueOf(i);
        } else {
            numValueOf = null;
        }
        return L(numValueOf, displayMetrics);
    }

    public static final float K0(DivRadialGradientFixedCenter divRadialGradientFixedCenter, DisplayMetrics displayMetrics, oj3 oj3Var) {
        y45.j(divRadialGradientFixedCenter, "<this>");
        y45.j(displayMetrics, "metrics");
        y45.j(oj3Var, "resolver");
        return Q(((Number) divRadialGradientFixedCenter.b.b(oj3Var)).longValue(), (DivSizeUnit) divRadialGradientFixedCenter.a.b(oj3Var), displayMetrics);
    }

    public static final int L(Number number, DisplayMetrics displayMetrics) {
        y45.j(displayMetrics, "metrics");
        return s86.c(M(number, displayMetrics));
    }

    public static final ScalingDrawable.ScaleType L0(DivImageScale divImageScale) {
        y45.j(divImageScale, "<this>");
        int i = a.f[divImageScale.ordinal()];
        if (i == 1) {
            return ScalingDrawable.ScaleType.FILL;
        }
        if (i != 2) {
            return i != 3 ? ScalingDrawable.ScaleType.NO_SCALE : ScalingDrawable.ScaleType.STRETCH;
        }
        return ScalingDrawable.ScaleType.FIT;
    }

    public static final float M(Number number, DisplayMetrics displayMetrics) {
        y45.j(displayMetrics, "metrics");
        return TypedValue.applyDimension(1, number != null ? number.floatValue() : 0.0f, displayMetrics);
    }

    public static final TextVerticalAlignment M0(DivTextAlignmentVertical divTextAlignmentVertical) {
        y45.j(divTextAlignmentVertical, "<this>");
        int i = a.g[divTextAlignmentVertical.ordinal()];
        if (i == 1) {
            return TextVerticalAlignment.TOP;
        }
        if (i == 2) {
            return TextVerticalAlignment.CENTER;
        }
        if (i != 3 && i == 4) {
            return TextVerticalAlignment.BOTTOM;
        }
        return TextVerticalAlignment.BASELINE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void N(View view, Canvas canvas) {
        DivBorderDrawer divBorderDrawer;
        y45.j(view, "<this>");
        y45.j(canvas, "canvas");
        int iSave = canvas.save();
        try {
            canvas.translate(view.getX(), view.getY());
            canvas.rotate(view.getRotation(), view.getPivotX(), view.getPivotY());
            vg2 vg2Var = view instanceof vg2 ? (vg2) view : null;
            if (vg2Var != null && (divBorderDrawer = vg2Var.getDivBorderDrawer()) != null) {
                divBorderDrawer.i(canvas);
            }
        } finally {
            canvas.restoreToCount(iSave);
        }
    }

    public static final ScalingDrawable.AlignmentVertical N0(DivAlignmentVertical divAlignmentVertical) {
        y45.j(divAlignmentVertical, "<this>");
        int i = a.c[divAlignmentVertical.ordinal()];
        if (i != 2) {
            return i != 3 ? ScalingDrawable.AlignmentVertical.TOP : ScalingDrawable.AlignmentVertical.BOTTOM;
        }
        return ScalingDrawable.AlignmentVertical.CENTER;
    }

    public static final int O(DivAlignmentHorizontal divAlignmentHorizontal, DivAlignmentVertical divAlignmentVertical) {
        int i;
        int i2 = divAlignmentHorizontal == null ? -1 : a.b[divAlignmentHorizontal.ordinal()];
        if (i2 == 1) {
            i = 3;
        } else if (i2 != 2) {
            i = 5;
            if (i2 != 3) {
                i = (i2 == 4 || i2 != 5) ? 8388611 : GravityCompat.END;
            }
        } else {
            i = 1;
        }
        int i3 = divAlignmentVertical != null ? a.c[divAlignmentVertical.ordinal()] : -1;
        int i4 = 48;
        if (i3 != 1) {
            if (i3 == 2) {
                i4 = 16;
            } else if (i3 == 3) {
                i4 = 80;
            }
        }
        return i4 | i;
    }

    public static final void O0(ViewGroup viewGroup, Div2View div2View, List list, List list2) {
        y45.j(viewGroup, "<this>");
        y45.j(div2View, "divView");
        y45.j(list, "newItems");
        DivVisibilityActionTracker divVisibilityActionTrackerH = div2View.getDiv2Component().H();
        y45.i(divVisibilityActionTrackerH, "divView.div2Component.visibilityActionTracker");
        List list3 = list2;
        if (list3 != null && !list3.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                d81.C(arrayList, Y(((zl2) it.next()).c().b()));
            }
            HashSet hashSet = new HashSet();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                hashSet.add(((wp2) it2.next()).b());
            }
            Iterator it3 = list2.iterator();
            while (it3.hasNext()) {
                zl2 zl2Var = (zl2) it3.next();
                List listW = W(zl2Var.c().b());
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : listW) {
                    if (!hashSet.contains(((DivVisibilityAction) obj).b())) {
                        arrayList2.add(obj);
                    }
                }
                List listX = X(zl2Var.c().b());
                ArrayList arrayList3 = new ArrayList();
                for (Object obj2 : listX) {
                    if (!hashSet.contains(((DivDisappearAction) obj2).b())) {
                        arrayList3.add(obj2);
                    }
                }
                divVisibilityActionTrackerH.w(div2View, zl2Var.d(), null, zl2Var.c(), arrayList2, arrayList3);
            }
        }
        if (list.isEmpty()) {
            return;
        }
        viewGroup.addOnLayoutChangeListener(new c(viewGroup, list, divVisibilityActionTrackerH, div2View));
    }

    public static final int P(DivContentAlignmentHorizontal divContentAlignmentHorizontal, DivContentAlignmentVertical divContentAlignmentVertical) {
        int i = divContentAlignmentHorizontal == null ? -1 : a.d[divContentAlignmentHorizontal.ordinal()];
        int i2 = GravityCompat.START;
        switch (i) {
            case 1:
                i2 = 3;
                break;
            case 2:
                i2 = 1;
                break;
            case 3:
                i2 = 5;
                break;
            case 5:
                i2 = GravityCompat.END;
                break;
            case 6:
                i2 = 16777216;
                break;
            case 7:
                i2 = 33554432;
                break;
            case 8:
                i2 = 67108864;
                break;
        }
        int i3 = 48;
        switch (divContentAlignmentVertical != null ? a.e[divContentAlignmentVertical.ordinal()] : -1) {
            case 2:
                i3 = 16;
                break;
            case 3:
                i3 = 80;
                break;
            case 4:
                i3 = 268435456;
                break;
            case 5:
                i3 = 536870912;
                break;
            case 6:
                i3 = 1073741824;
                break;
        }
        return i3 | i2;
    }

    public static final void P0(View view, e74 e74Var) {
        if (((Boolean) e74Var.invoke(view)).booleanValue() && (view instanceof ViewGroup)) {
            Iterator it = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it.hasNext()) {
                P0((View) it.next(), e74Var);
            }
        }
    }

    public static final float Q(long j, DivSizeUnit divSizeUnit, DisplayMetrics displayMetrics) {
        int i = a.a[divSizeUnit.ordinal()];
        if (i == 1) {
            return M(Long.valueOf(j), displayMetrics);
        }
        if (i == 2) {
            return u0(Long.valueOf(j), displayMetrics);
        }
        if (i == 3) {
            return j;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final int Q0(Long l, DisplayMetrics displayMetrics, DivSizeUnit divSizeUnit) {
        Integer numValueOf;
        int i;
        y45.j(displayMetrics, "metrics");
        y45.j(divSizeUnit, "unit");
        if (l != null) {
            long jLongValue = l.longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                i = (int) jLongValue;
            } else {
                ae5 ae5Var = ae5.a;
                if (xi.o()) {
                    xi.i("Unable convert '" + jLongValue + "' to Int");
                }
                i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            numValueOf = Integer.valueOf(i);
        } else {
            numValueOf = null;
        }
        return R0(numValueOf, displayMetrics, divSizeUnit);
    }

    public static final DivContentAlignmentHorizontal R(View view, oj3 oj3Var) {
        DivContainer divContainerC;
        Expression expression;
        y45.j(view, "<this>");
        y45.j(oj3Var, "resolver");
        ViewParent parent = view.getParent();
        mk2 mk2Var = parent instanceof mk2 ? (mk2) parent : null;
        Div div = mk2Var != null ? mk2Var.getDiv() : null;
        Div.b bVar = div instanceof Div.b ? (Div.b) div : null;
        if (bVar == null || (divContainerC = bVar.c()) == null || (expression = divContainerC.o) == null) {
            return null;
        }
        return (DivContentAlignmentHorizontal) expression.b(oj3Var);
    }

    public static final int R0(Number number, DisplayMetrics displayMetrics, DivSizeUnit divSizeUnit) {
        y45.j(displayMetrics, "metrics");
        y45.j(divSizeUnit, "unit");
        return s86.c(S0(number, displayMetrics, divSizeUnit));
    }

    public static final DivContentAlignmentVertical S(View view, oj3 oj3Var) {
        DivContainer divContainerC;
        Expression expression;
        y45.j(view, "<this>");
        y45.j(oj3Var, "resolver");
        ViewParent parent = view.getParent();
        mk2 mk2Var = parent instanceof mk2 ? (mk2) parent : null;
        Div div = mk2Var != null ? mk2Var.getDiv() : null;
        Div.b bVar = div instanceof Div.b ? (Div.b) div : null;
        if (bVar == null || (divContainerC = bVar.c()) == null || (expression = divContainerC.p) == null) {
            return null;
        }
        return (DivContentAlignmentVertical) expression.b(oj3Var);
    }

    public static final float S0(Number number, DisplayMetrics displayMetrics, DivSizeUnit divSizeUnit) {
        y45.j(displayMetrics, "metrics");
        y45.j(divSizeUnit, "unit");
        return TypedValue.applyDimension(x0(divSizeUnit), number != null ? number.floatValue() : 0.0f, displayMetrics);
    }

    public static final List T(List list, oj3 oj3Var) {
        y45.j(list, "<this>");
        y45.j(oj3Var, "resolver");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((Boolean) ((wp2) obj).isEnabled().b(oj3Var)).booleanValue()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final float U(long j, DivSizeUnit divSizeUnit, DisplayMetrics displayMetrics) {
        Number numberValueOf;
        y45.j(divSizeUnit, "unit");
        y45.j(displayMetrics, "metrics");
        int i = a.a[divSizeUnit.ordinal()];
        if (i == 1) {
            numberValueOf = Integer.valueOf(K(Long.valueOf(j), displayMetrics));
        } else if (i == 2) {
            numberValueOf = Integer.valueOf(s0(Long.valueOf(j), displayMetrics));
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            numberValueOf = Long.valueOf(j);
        }
        return numberValueOf.floatValue();
    }

    public static final void V(View view) {
        y45.j(view, "<this>");
        view.performAccessibilityAction(64, null);
        view.sendAccessibilityEvent(1);
    }

    public static final List W(og2 og2Var) {
        y45.j(og2Var, "<this>");
        List listA = og2Var.a();
        if (listA != null) {
            return listA;
        }
        DivVisibilityAction divVisibilityActionX = og2Var.x();
        List listE = divVisibilityActionX != null ? x71.e(divVisibilityActionX) : null;
        return listE == null ? y71.k() : listE;
    }

    public static final List X(og2 og2Var) {
        y45.j(og2Var, "<this>");
        List listK = og2Var.k();
        return listK == null ? y71.k() : listK;
    }

    public static final List Y(og2 og2Var) {
        y45.j(og2Var, "<this>");
        return i81.J0(X(og2Var), W(og2Var));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final com.yandex.div.core.view2.a Z(View view) {
        y45.j(view, "<this>");
        mk2 mk2Var = view instanceof mk2 ? (mk2) view : null;
        if (mk2Var != null) {
            return mk2Var.getBindingContext();
        }
        return null;
    }

    public static final String a0(og2 og2Var, int i) {
        y45.j(og2Var, "<this>");
        if (og2Var instanceof DivState) {
            return DivPathUtils.i(DivPathUtils.a, (DivState) og2Var, null, 1, null);
        }
        String id = og2Var.getId();
        return id == null ? yv0.a.b(i) : id;
    }

    public static final boolean b0(og2 og2Var) {
        List listA;
        List listK;
        y45.j(og2Var, "<this>");
        return (og2Var.x() == null && ((listA = og2Var.a()) == null || listA.isEmpty()) && ((listK = og2Var.k()) == null || listK.isEmpty())) ? false : true;
    }

    public static final DivIndicatorItemPlacement c0(DivIndicator divIndicator) {
        y45.j(divIndicator, "<this>");
        DivIndicatorItemPlacement divIndicatorItemPlacement = divIndicator.v;
        return divIndicatorItemPlacement == null ? new DivIndicatorItemPlacement.b(new DivDefaultIndicatorItemPlacement(divIndicator.F)) : divIndicatorItemPlacement;
    }

    public static final void d(View view, DivAlignmentHorizontal divAlignmentHorizontal, DivAlignmentVertical divAlignmentVertical) {
        y45.j(view, "<this>");
        l(view, O(divAlignmentHorizontal, divAlignmentVertical));
        g(view, divAlignmentVertical == DivAlignmentVertical.BASELINE);
    }

    public static final float d0(View view, int i, DivPivot divPivot, oj3 oj3Var) {
        Object objB = divPivot.b();
        if (!(objB instanceof DivPivotFixed)) {
            if (!(objB instanceof DivPivotPercentage)) {
                return i / 2.0f;
            }
            return i * (((float) ((Number) ((DivPivotPercentage) objB).a.b(oj3Var)).doubleValue()) / 100.0f);
        }
        DivPivotFixed divPivotFixed = (DivPivotFixed) objB;
        Expression expression = divPivotFixed.b;
        if (expression == null) {
            return i / 2.0f;
        }
        float fLongValue = ((Number) expression.b(oj3Var)).longValue();
        int i2 = a.a[((DivSizeUnit) divPivotFixed.a.b(oj3Var)).ordinal()];
        if (i2 == 1) {
            Float fValueOf = Float.valueOf(fLongValue);
            DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
            y45.i(displayMetrics, "resources.displayMetrics");
            return M(fValueOf, displayMetrics);
        }
        if (i2 != 2) {
            if (i2 == 3) {
                return fLongValue;
            }
            throw new NoWhenBranchMatchedException();
        }
        Float fValueOf2 = Float.valueOf(fLongValue);
        DisplayMetrics displayMetrics2 = view.getResources().getDisplayMetrics();
        y45.i(displayMetrics2, "resources.displayMetrics");
        return u0(fValueOf2, displayMetrics2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void e(View view, double d) {
        y45.j(view, "<this>");
        view.setAlpha((float) d);
        vg2 vg2Var = view instanceof vg2 ? (vg2) view : null;
        if (vg2Var != null) {
            vg2Var.invalidateBorder();
        }
    }

    public static final Typeface e0(int i, bu2 bu2Var) {
        y45.j(bu2Var, "typefaceProvider");
        Typeface typefaceFor = bu2Var.getTypefaceFor(i);
        if (typefaceFor != null) {
            return typefaceFor;
        }
        Typeface typeface = Typeface.DEFAULT;
        y45.i(typeface, "DEFAULT");
        return typeface;
    }

    public static final void f(AspectView aspectView, Double d) {
        aspectView.setAspectRatio(d != null ? (float) d.doubleValue() : 0.0f);
    }

    public static final int f0(DivFontWeight divFontWeight, Integer num) {
        if (num != null) {
            return num.intValue();
        }
        int i = divFontWeight == null ? -1 : a.i[divFontWeight.ordinal()];
        if (i == 1) {
            return 300;
        }
        if (i != 2) {
            if (i == 3) {
                return 500;
            }
            if (i == 4) {
                return 700;
            }
        }
        return 400;
    }

    public static final void g(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        DivLayoutParams divLayoutParams = layoutParams instanceof DivLayoutParams ? (DivLayoutParams) layoutParams : null;
        if (divLayoutParams == null || divLayoutParams.getIsBaselineAligned() == z) {
            return;
        }
        divLayoutParams.k(z);
        view.requestLayout();
    }

    public static final int g0(DivFontWeight divFontWeight, Long l) {
        Integer numValueOf;
        int i;
        if (l != null) {
            long jLongValue = l.longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                i = (int) jLongValue;
            } else {
                ae5 ae5Var = ae5.a;
                if (xi.o()) {
                    xi.i("Unable convert '" + jLongValue + "' to Int");
                }
                i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            numValueOf = Integer.valueOf(i);
        } else {
            numValueOf = null;
        }
        return f0(divFontWeight, numValueOf);
    }

    public static final void h(View view, com.yandex.div.core.view2.a aVar, Bitmap bitmap, List list, e74 e74Var) {
        int i;
        y45.j(view, "<this>");
        y45.j(aVar, "context");
        y45.j(bitmap, "bitmap");
        y45.j(e74Var, "actionAfterFilters");
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            e74Var.invoke(bitmap);
            return;
        }
        oj3 oj3VarB = aVar.b();
        ze0 ze0VarL = aVar.a().getDiv2Component().l();
        y45.i(ze0VarL, "context.divView.div2Component.bitmapEffectHelper");
        if (!pdc.d(view) || view.isLayoutRequested()) {
            view.addOnLayoutChangeListener(new b(view, bitmap, list, oj3VarB, ze0VarL, e74Var));
            return;
        }
        float fMax = Math.max(view.getHeight() / bitmap.getHeight(), view.getWidth() / bitmap.getWidth());
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * fMax), (int) (fMax * bitmap.getHeight()), false);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            DivFilter divFilter = (DivFilter) it.next();
            if (divFilter instanceof DivFilter.a) {
                long jLongValue = ((Number) ((DivFilter.a) divFilter).c().a.b(oj3VarB)).longValue();
                long j = jLongValue >> 31;
                if (j == 0 || j == -1) {
                    i = (int) jLongValue;
                } else {
                    ae5 ae5Var = ae5.a;
                    if (xi.o()) {
                        xi.i("Unable convert '" + jLongValue + "' to Int");
                    }
                    i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                }
                Integer numValueOf = Integer.valueOf(i);
                DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
                y45.i(displayMetrics, "resources.displayMetrics");
                bitmapCreateScaledBitmap = ze0VarL.a(bitmapCreateScaledBitmap, L(numValueOf, displayMetrics));
            } else if ((divFilter instanceof DivFilter.c) && pdc.f(view)) {
                bitmapCreateScaledBitmap = ze0VarL.b(bitmapCreateScaledBitmap);
            }
        }
        e74Var.invoke(bitmapCreateScaledBitmap);
    }

    public static final float h0(DivSize divSize, oj3 oj3Var) {
        Expression expression;
        y45.j(divSize, "<this>");
        y45.j(oj3Var, "resolver");
        if (!(divSize instanceof DivSize.c) || (expression = ((DivSize.c) divSize).c().a) == null) {
            return 0.0f;
        }
        return (float) ((Number) expression.b(oj3Var)).doubleValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void i(ViewGroup viewGroup, boolean z) {
        y45.j(viewGroup, "<this>");
        mk2 mk2Var = viewGroup instanceof mk2 ? (mk2) viewGroup : null;
        if (mk2Var != null) {
            mk2Var.setNeedClipping(z);
        }
        ViewParent parent = viewGroup.getParent();
        if (z || !(parent instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) parent).setClipChildren(false);
    }

    public static final float i0(DivStroke divStroke, DisplayMetrics displayMetrics, oj3 oj3Var) {
        return S0((Number) divStroke.d.b(oj3Var), displayMetrics, (DivSizeUnit) divStroke.c.b(oj3Var));
    }

    public static final void j(View view, com.yandex.div.core.view2.a aVar, DivAction divAction, List list, List list2, List list3, List list4, List list5, List list6, List list7, DivAnimation divAnimation, DivAccessibility divAccessibility, Expression expression) {
        List listE;
        y45.j(view, "<this>");
        y45.j(aVar, "context");
        y45.j(divAnimation, "actionAnimation");
        y45.j(expression, "captureFocusOnAction");
        DivActionBinder divActionBinderN = aVar.a().getDiv2Component().n();
        y45.i(divActionBinderN, "context.divView.div2Component.actionBinder");
        List list8 = list;
        if (list8 == null || list8.isEmpty()) {
            listE = divAction != null ? x71.e(divAction) : null;
        } else {
            listE = list;
        }
        divActionBinderN.p(aVar, view, listE, list2, list3, list4, list5, list6, list7, divAnimation, divAccessibility, expression);
    }

    public static final boolean j0(DivBorder divBorder) {
        if (divBorder == null) {
            return true;
        }
        return divBorder.a == null && divBorder.b == null && y45.e(divBorder.c, Expression.a.a(Boolean.FALSE)) && divBorder.d == null && divBorder.e == null;
    }

    public static final void k(TextView textView, int i, DivSizeUnit divSizeUnit) {
        y45.j(textView, "<this>");
        y45.j(divSizeUnit, "unit");
        textView.setTextSize(x0(divSizeUnit), i);
    }

    public static final boolean k0(DivContainer divContainer, oj3 oj3Var) {
        y45.j(divContainer, "<this>");
        y45.j(oj3Var, "resolver");
        return divContainer.G.b(oj3Var) == DivContainer.Orientation.HORIZONTAL;
    }

    public static final void l(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof DivLayoutParams) {
            DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
            if (divLayoutParams.getGravity() != i) {
                divLayoutParams.m(i);
                view.requestLayout();
                return;
            }
            return;
        }
        pp5.b("DivView", "tag=" + view.getTag() + ": Can't cast " + layoutParams + " to get gravity");
    }

    public static final boolean l0(DivContainer divContainer, oj3 oj3Var) {
        y45.j(divContainer, "<this>");
        y45.j(oj3Var, "resolver");
        if (divContainer.B.b(oj3Var) != DivContainer.LayoutMode.WRAP || divContainer.G.b(oj3Var) == DivContainer.Orientation.OVERLAP) {
            return false;
        }
        if (k0(divContainer, oj3Var)) {
            return F(divContainer.getWidth(), oj3Var);
        }
        if (F(divContainer.getHeight(), oj3Var)) {
            return true;
        }
        DivAspect divAspect = divContainer.i;
        if (divAspect != null) {
            return !(((float) ((Number) divAspect.a.b(oj3Var)).doubleValue()) == 0.0f);
        }
        return false;
    }

    public static final void m(View view, og2 og2Var, oj3 oj3Var) {
        y45.j(view, "<this>");
        y45.j(og2Var, TtmlNode.TAG_DIV);
        y45.j(oj3Var, "resolver");
        DivSize height = og2Var.getHeight();
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        y45.i(displayMetrics, "resources.displayMetrics");
        int iC0 = C0(height, displayMetrics, oj3Var, view.getLayoutParams());
        if (view.getLayoutParams().height != iC0) {
            view.getLayoutParams().height = iC0;
            view.requestLayout();
        }
        x(view, og2Var.m(), oj3Var);
    }

    public static final int m0(Number number, DisplayMetrics displayMetrics) {
        y45.j(displayMetrics, "metrics");
        return s86.c(n0(number, displayMetrics));
    }

    public static final void n(View view, float f) {
        y45.j(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        DivLayoutParams divLayoutParams = layoutParams instanceof DivLayoutParams ? (DivLayoutParams) layoutParams : null;
        if (divLayoutParams == null || divLayoutParams.getHorizontalWeight() == f) {
            return;
        }
        divLayoutParams.n(f);
        view.requestLayout();
    }

    public static final float n0(Number number, DisplayMetrics displayMetrics) {
        y45.j(displayMetrics, "metrics");
        if (Build.VERSION.SDK_INT >= 34) {
            return TypedValue.deriveDimension(1, number != null ? number.floatValue() : 0.0f, displayMetrics);
        }
        return (number != null ? number.floatValue() : 0.0f) / displayMetrics.density;
    }

    public static final void o(View view, String str, int i) {
        y45.j(view, "<this>");
        view.setTag(str);
        view.setId(i);
    }

    public static final DivStatePath o0(og2 og2Var, int i, DivStatePath divStatePath) {
        y45.j(og2Var, "<this>");
        y45.j(divStatePath, PlayAudioData.TAG_PARENT_PATH);
        return divStatePath.c(a0(og2Var, i));
    }

    public static final void p(TextView textView, double d, int i) {
        y45.j(textView, "<this>");
        textView.setLetterSpacing(((float) d) / i);
    }

    public static final void p0(int i, View view, b5 b5Var) {
        y45.j(b5Var, "accessibilityStateProvider");
        if (view == null) {
            return;
        }
        Context context = view.getContext();
        y45.i(context, "view.context");
        if (b5Var.c(context)) {
            view.sendAccessibilityEventUnchecked(Build.VERSION.SDK_INT >= 30 ? y90.a(i) : AccessibilityEvent.obtain(i));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void q(TextView textView, Long l, DivSizeUnit divSizeUnit) {
        int iQ0;
        y45.j(textView, "<this>");
        y45.j(divSizeUnit, "unit");
        dx3 dx3Var = (dx3) textView;
        if (l != null) {
            DisplayMetrics displayMetrics = textView.getResources().getDisplayMetrics();
            y45.i(displayMetrics, "resources.displayMetrics");
            iQ0 = Q0(l, displayMetrics, divSizeUnit);
        } else {
            iQ0 = -1;
        }
        dx3Var.setFixedLineHeight(iQ0);
    }

    public static final void q0(View view, com.yandex.div.core.view2.a aVar, DivAnimation divAnimation, bk2 bk2Var) {
        y45.j(view, "<this>");
        y45.j(aVar, "context");
        final s74 s74VarH = H(view, aVar, divAnimation, bk2Var);
        view.setOnTouchListener(s74VarH != null ? new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return BaseDivViewExtensionsKt.r0(s74VarH, view2, motionEvent);
            }
        } : null);
    }

    public static final void r(View view, DivEdgeInsets divEdgeInsets, oj3 oj3Var) {
        int iQ0;
        int iQ1;
        int iQ2;
        int iQ3;
        Integer numValueOf;
        y45.j(view, "<this>");
        y45.j(oj3Var, "resolver");
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Integer num = null;
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams == null) {
            return;
        }
        if (divEdgeInsets != null) {
            DivSizeUnit divSizeUnit = (DivSizeUnit) divEdgeInsets.g.b(oj3Var);
            Long l = (Long) divEdgeInsets.c.b(oj3Var);
            y45.i(displayMetrics, "metrics");
            iQ0 = Q0(l, displayMetrics, divSizeUnit);
            iQ1 = Q0((Long) divEdgeInsets.f.b(oj3Var), displayMetrics, divSizeUnit);
            iQ2 = Q0((Long) divEdgeInsets.d.b(oj3Var), displayMetrics, divSizeUnit);
            iQ3 = Q0((Long) divEdgeInsets.a.b(oj3Var), displayMetrics, divSizeUnit);
            Expression expression = divEdgeInsets.e;
            Integer numValueOf2 = expression != null ? Integer.valueOf(Q0((Long) expression.b(oj3Var), displayMetrics, divSizeUnit)) : null;
            Expression expression2 = divEdgeInsets.b;
            numValueOf = expression2 != null ? Integer.valueOf(Q0((Long) expression2.b(oj3Var), displayMetrics, divSizeUnit)) : null;
            num = numValueOf2;
        } else {
            iQ0 = 0;
            iQ1 = 0;
            iQ2 = 0;
            iQ3 = 0;
            numValueOf = null;
        }
        if (marginLayoutParams.leftMargin == iQ0 && marginLayoutParams.topMargin == iQ1 && marginLayoutParams.rightMargin == iQ2 && marginLayoutParams.bottomMargin == iQ3 && ((num == null || marginLayoutParams.getMarginStart() == num.intValue()) && (numValueOf == null || marginLayoutParams.getMarginEnd() == numValueOf.intValue()))) {
            return;
        }
        marginLayoutParams.topMargin = iQ1;
        marginLayoutParams.bottomMargin = iQ3;
        if (num == null && numValueOf == null) {
            marginLayoutParams.leftMargin = iQ0;
            marginLayoutParams.rightMargin = iQ2;
        } else {
            marginLayoutParams.setMarginStart(num != null ? num.intValue() : 0);
            marginLayoutParams.setMarginEnd(numValueOf != null ? numValueOf.intValue() : 0);
        }
        view.requestLayout();
    }

    public static final boolean r0(s74 s74Var, View view, MotionEvent motionEvent) {
        return ((Boolean) s74Var.invoke(view, motionEvent)).booleanValue();
    }

    public static final void s(View view, DivWrapContentSize.ConstraintSize constraintSize, oj3 oj3Var) {
        int iI0;
        y45.j(view, "<this>");
        y45.j(oj3Var, "resolver");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        DivLayoutParams divLayoutParams = layoutParams instanceof DivLayoutParams ? (DivLayoutParams) layoutParams : null;
        if (divLayoutParams == null) {
            return;
        }
        if (constraintSize != null) {
            DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
            y45.i(displayMetrics, "resources.displayMetrics");
            iI0 = I0(constraintSize, displayMetrics, oj3Var);
        } else {
            iI0 = Integer.MAX_VALUE;
        }
        if (divLayoutParams.getMaxHeight() != iI0) {
            divLayoutParams.o(iI0);
            view.requestLayout();
        }
    }

    public static final int s0(Long l, DisplayMetrics displayMetrics) {
        Integer numValueOf;
        int i;
        y45.j(displayMetrics, "metrics");
        if (l != null) {
            long jLongValue = l.longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                i = (int) jLongValue;
            } else {
                ae5 ae5Var = ae5.a;
                if (xi.o()) {
                    xi.i("Unable convert '" + jLongValue + "' to Int");
                }
                i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            numValueOf = Integer.valueOf(i);
        } else {
            numValueOf = null;
        }
        return t0(numValueOf, displayMetrics);
    }

    public static final void t(View view, DivWrapContentSize.ConstraintSize constraintSize, oj3 oj3Var) {
        int iI0;
        y45.j(view, "<this>");
        y45.j(oj3Var, "resolver");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        DivLayoutParams divLayoutParams = layoutParams instanceof DivLayoutParams ? (DivLayoutParams) layoutParams : null;
        if (divLayoutParams == null) {
            return;
        }
        if (constraintSize != null) {
            DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
            y45.i(displayMetrics, "resources.displayMetrics");
            iI0 = I0(constraintSize, displayMetrics, oj3Var);
        } else {
            iI0 = Integer.MAX_VALUE;
        }
        if (divLayoutParams.getMaxWidth() != iI0) {
            divLayoutParams.p(iI0);
            view.requestLayout();
        }
    }

    public static final int t0(Number number, DisplayMetrics displayMetrics) {
        y45.j(displayMetrics, "metrics");
        return s86.c(u0(number, displayMetrics));
    }

    public static final void u(View view, DivWrapContentSize.ConstraintSize constraintSize, oj3 oj3Var) {
        int iI0;
        y45.j(view, "<this>");
        y45.j(oj3Var, "resolver");
        if (constraintSize != null) {
            DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
            y45.i(displayMetrics, "resources.displayMetrics");
            iI0 = I0(constraintSize, displayMetrics, oj3Var);
        } else {
            iI0 = 0;
        }
        if (view.getMinimumHeight() != iI0) {
            view.setMinimumHeight(iI0);
            view.requestLayout();
        }
    }

    public static final float u0(Number number, DisplayMetrics displayMetrics) {
        y45.j(displayMetrics, "metrics");
        return TypedValue.applyDimension(2, number != null ? number.floatValue() : 0.0f, displayMetrics);
    }

    public static final void v(View view, DivWrapContentSize.ConstraintSize constraintSize, oj3 oj3Var) {
        int iI0;
        y45.j(view, "<this>");
        y45.j(oj3Var, "resolver");
        if (constraintSize != null) {
            DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
            y45.i(displayMetrics, "resources.displayMetrics");
            iI0 = I0(constraintSize, displayMetrics, oj3Var);
        } else {
            iI0 = 0;
        }
        if (view.getMinimumWidth() != iI0) {
            view.setMinimumWidth(iI0);
            view.requestLayout();
        }
    }

    public static final DivAlignmentHorizontal v0(DivContentAlignmentHorizontal divContentAlignmentHorizontal) {
        y45.j(divContentAlignmentHorizontal, "<this>");
        int i = a.d[divContentAlignmentHorizontal.ordinal()];
        if (i == 1) {
            return DivAlignmentHorizontal.LEFT;
        }
        if (i == 2) {
            return DivAlignmentHorizontal.CENTER;
        }
        if (i == 3) {
            return DivAlignmentHorizontal.RIGHT;
        }
        if (i != 4 && i == 5) {
            return DivAlignmentHorizontal.END;
        }
        return DivAlignmentHorizontal.START;
    }

    public static final void w(View view, DivEdgeInsets divEdgeInsets, oj3 oj3Var) {
        int iF0;
        y45.j(view, "<this>");
        y45.j(oj3Var, "resolver");
        if (divEdgeInsets == null) {
            view.setPadding(0, 0, 0, 0);
            return;
        }
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        DivSizeUnit divSizeUnit = (DivSizeUnit) divEdgeInsets.g.b(oj3Var);
        Expression expression = divEdgeInsets.e;
        if (expression == null && divEdgeInsets.b == null) {
            long jLongValue = ((Number) divEdgeInsets.c.b(oj3Var)).longValue();
            y45.i(displayMetrics, "metrics");
            view.setPadding(F0(jLongValue, divSizeUnit, displayMetrics), F0(((Number) divEdgeInsets.f.b(oj3Var)).longValue(), divSizeUnit, displayMetrics), F0(((Number) divEdgeInsets.d.b(oj3Var)).longValue(), divSizeUnit, displayMetrics), F0(((Number) divEdgeInsets.a.b(oj3Var)).longValue(), divSizeUnit, displayMetrics));
            return;
        }
        if (expression != null) {
            long jLongValue2 = ((Number) expression.b(oj3Var)).longValue();
            y45.i(displayMetrics, "metrics");
            iF0 = F0(jLongValue2, divSizeUnit, displayMetrics);
        } else {
            iF0 = 0;
        }
        long jLongValue3 = ((Number) divEdgeInsets.f.b(oj3Var)).longValue();
        y45.i(displayMetrics, "metrics");
        int iF1 = F0(jLongValue3, divSizeUnit, displayMetrics);
        Expression expression2 = divEdgeInsets.b;
        view.setPaddingRelative(iF0, iF1, expression2 != null ? F0(((Number) expression2.b(oj3Var)).longValue(), divSizeUnit, displayMetrics) : 0, F0(((Number) divEdgeInsets.a.b(oj3Var)).longValue(), divSizeUnit, displayMetrics));
    }

    public static final DivAlignmentVertical w0(DivContentAlignmentVertical divContentAlignmentVertical) {
        y45.j(divContentAlignmentVertical, "<this>");
        int i = a.e[divContentAlignmentVertical.ordinal()];
        if (i == 1) {
            return DivAlignmentVertical.TOP;
        }
        if (i == 2) {
            return DivAlignmentVertical.CENTER;
        }
        if (i != 3) {
            return i != 7 ? DivAlignmentVertical.TOP : DivAlignmentVertical.BASELINE;
        }
        return DivAlignmentVertical.BOTTOM;
    }

    public static final void x(final View view, final DivTransform divTransform, final oj3 oj3Var) {
        Expression expression;
        y45.j(view, "<this>");
        y45.j(oj3Var, "resolver");
        Float fValueOf = (divTransform == null || (expression = divTransform.c) == null) ? null : Float.valueOf((float) ((Number) expression.b(oj3Var)).doubleValue());
        if (fValueOf == null) {
            view.setRotation(0.0f);
            return;
        }
        view.setRotation(fValueOf.floatValue());
        if (view.getWidth() == 0 && view.getHeight() == 0) {
            OneShotPreDrawListener.add(view, new Runnable() {
                @Override
                public final void run() {
                    View view2 = view;
                    view2.setPivotX(BaseDivViewExtensionsKt.d0(view2, view2.getWidth(), divTransform.a, oj3Var));
                    View view3 = view;
                    view3.setPivotY(BaseDivViewExtensionsKt.d0(view3, view3.getHeight(), divTransform.b, oj3Var));
                }
            });
        } else {
            view.setPivotX(d0(view, view.getWidth(), divTransform.a, oj3Var));
            view.setPivotY(d0(view, view.getHeight(), divTransform.b, oj3Var));
        }
    }

    public static final int x0(DivSizeUnit divSizeUnit) {
        y45.j(divSizeUnit, "<this>");
        int i = a.a[divSizeUnit.ordinal()];
        if (i == 1) {
            return 1;
        }
        if (i == 2) {
            return 2;
        }
        if (i == 3) {
            return 0;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final void y(View view, float f) {
        y45.j(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        DivLayoutParams divLayoutParams = layoutParams instanceof DivLayoutParams ? (DivLayoutParams) layoutParams : null;
        if (divLayoutParams == null || divLayoutParams.getVerticalWeight() == f) {
            return;
        }
        divLayoutParams.r(f);
        view.requestLayout();
    }

    public static final Drawable y0(DivDrawable divDrawable, DisplayMetrics displayMetrics, oj3 oj3Var) {
        y45.j(divDrawable, "<this>");
        y45.j(displayMetrics, "metrics");
        y45.j(oj3Var, "resolver");
        if (divDrawable instanceof DivDrawable.b) {
            return z0(((DivDrawable.b) divDrawable).c(), displayMetrics, oj3Var);
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final void z(View view, og2 og2Var, oj3 oj3Var) {
        y45.j(view, "<this>");
        y45.j(og2Var, TtmlNode.TAG_DIV);
        y45.j(oj3Var, "resolver");
        DivSize width = og2Var.getWidth();
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        y45.i(displayMetrics, "resources.displayMetrics");
        int iC0 = C0(width, displayMetrics, oj3Var, view.getLayoutParams());
        if (view.getLayoutParams().width != iC0) {
            view.getLayoutParams().width = iC0;
            view.requestLayout();
        }
        x(view, og2Var.m(), oj3Var);
    }

    public static final Drawable z0(DivShapeDrawable divShapeDrawable, DisplayMetrics displayMetrics, oj3 oj3Var) {
        Drawable ew0Var;
        Expression expression;
        Expression expression2;
        y45.j(divShapeDrawable, "<this>");
        y45.j(displayMetrics, "metrics");
        y45.j(oj3Var, "resolver");
        DivShape divShape = divShapeDrawable.b;
        if (divShape instanceof DivShape.c) {
            DivShape.c cVar = (DivShape.c) divShape;
            float fJ0 = J0(cVar.c().d, displayMetrics, oj3Var);
            float fJ1 = J0(cVar.c().c, displayMetrics, oj3Var);
            Expression expression3 = cVar.c().a;
            if (expression3 == null) {
                expression3 = divShapeDrawable.a;
            }
            int iIntValue = ((Number) expression3.b(oj3Var)).intValue();
            float fJ2 = J0(cVar.c().b, displayMetrics, oj3Var);
            DivStroke divStroke = cVar.c().e;
            if (divStroke == null) {
                divStroke = divShapeDrawable.c;
            }
            Integer num = (divStroke == null || (expression2 = divStroke.a) == null) ? null : (Integer) expression2.b(oj3Var);
            DivStroke divStroke2 = cVar.c().e;
            if (divStroke2 == null) {
                divStroke2 = divShapeDrawable.c;
            }
            ew0Var = new hw8(new hw8.a(fJ0, fJ1, iIntValue, fJ2, num, divStroke2 != null ? Float.valueOf(i0(divStroke2, displayMetrics, oj3Var)) : null));
        } else {
            if (!(divShape instanceof DivShape.a)) {
                return null;
            }
            DivShape.a aVar = (DivShape.a) divShape;
            float fJ3 = J0(aVar.c().b, displayMetrics, oj3Var);
            Expression expression4 = aVar.c().a;
            if (expression4 == null) {
                expression4 = divShapeDrawable.a;
            }
            int iIntValue2 = ((Number) expression4.b(oj3Var)).intValue();
            DivStroke divStroke3 = aVar.c().c;
            if (divStroke3 == null) {
                divStroke3 = divShapeDrawable.c;
            }
            Integer num2 = (divStroke3 == null || (expression = divStroke3.a) == null) ? null : (Integer) expression.b(oj3Var);
            DivStroke divStroke4 = aVar.c().c;
            if (divStroke4 == null) {
                divStroke4 = divShapeDrawable.c;
            }
            ew0Var = new ew0(new ew0.a(fJ3, iIntValue2, num2, divStroke4 != null ? Float.valueOf(i0(divStroke4, displayMetrics, oj3Var)) : null));
        }
        return ew0Var;
    }
}
