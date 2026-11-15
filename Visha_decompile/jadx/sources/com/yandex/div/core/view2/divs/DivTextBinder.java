package com.yandex.div.core.view2.divs;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.text.Spanned;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.util.DivDataExtensionsKt;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.widgets.DivLineHeightTextView;
import com.yandex.div.core.view2.spannable.SpannedTextBuilder;
import com.yandex.div.core.widget.DivViewWrapper;
import com.yandex.div.internal.drawable.RadialGradientDrawable;
import com.yandex.div.internal.widget.EllipsizedTextView;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAlignmentHorizontal;
import com.yandex.div2.DivAlignmentVertical;
import com.yandex.div2.DivDimension;
import com.yandex.div2.DivExtension;
import com.yandex.div2.DivFontWeight;
import com.yandex.div2.DivLineStyle;
import com.yandex.div2.DivLinearGradient;
import com.yandex.div2.DivPoint;
import com.yandex.div2.DivRadialGradient;
import com.yandex.div2.DivRadialGradientCenter;
import com.yandex.div2.DivRadialGradientRadius;
import com.yandex.div2.DivRadialGradientRelativeRadius;
import com.yandex.div2.DivShadow;
import com.yandex.div2.DivSizeUnit;
import com.yandex.div2.DivSolidBackground;
import com.yandex.div2.DivStroke;
import com.yandex.div2.DivText;
import com.yandex.div2.DivTextGradient;
import com.yandex.div2.DivTextRangeBackground;
import com.yandex.div2.DivTextRangeBorder;
import defpackage.ae5;
import defpackage.cu2;
import defpackage.du2;
import defpackage.e74;
import defpackage.e8;
import defpackage.fl5;
import defpackage.i81;
import defpackage.j1a;
import defpackage.nj3;
import defpackage.of9;
import defpackage.oj3;
import defpackage.pdc;
import defpackage.pha;
import defpackage.qc2;
import defpackage.sj3;
import defpackage.uj3;
import defpackage.wu2;
import defpackage.xi;
import defpackage.y45;
import defpackage.y71;
import defpackage.y91;
import defpackage.z91;
import defpackage.zfb;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;

public final class DivTextBinder extends wu2 {
    public final cu2 b;
    public final SpannedTextBuilder c;
    public final boolean d;

    public class a {
        public static final int[] a;
        public static final int[] b;
        public static final int[] c;
        public static final int[] d;

        static {
            int[] iArr = new int[DivAlignmentHorizontal.values().length];
            try {
                iArr[DivAlignmentHorizontal.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivAlignmentHorizontal.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DivAlignmentHorizontal.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DivAlignmentHorizontal.START.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DivAlignmentHorizontal.END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            a = iArr;
            int[] iArr2 = new int[DivLineStyle.values().length];
            try {
                iArr2[DivLineStyle.SINGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[DivLineStyle.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            b = iArr2;
            int[] iArr3 = new int[DivRadialGradientRelativeRadius.Value.values().length];
            try {
                iArr3[DivRadialGradientRelativeRadius.Value.FARTHEST_CORNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr3[DivRadialGradientRelativeRadius.Value.NEAREST_CORNER.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr3[DivRadialGradientRelativeRadius.Value.FARTHEST_SIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr3[DivRadialGradientRelativeRadius.Value.NEAREST_SIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
            c = iArr3;
            int[] iArr4 = new int[DivText.Truncate.values().length];
            try {
                iArr4[DivText.Truncate.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr4[DivText.Truncate.START.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr4[DivText.Truncate.MIDDLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr4[DivText.Truncate.END.ordinal()] = 4;
            } catch (NoSuchFieldError unused15) {
            }
            d = iArr4;
        }
    }

    public static final class b implements View.OnLayoutChangeListener {
        public final TextView b;
        public final long c;
        public final y91 d;
        public final DivTextBinder e;

        public b(TextView textView, long j, y91 y91Var, DivTextBinder divTextBinder) {
            this.b = textView;
            this.c = j;
            this.d = y91Var;
            this.e = divTextBinder;
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            view.removeOnLayoutChangeListener(this);
            this.b.getPaint().setShader(fl5.e.a(this.c, this.d.a(), this.d.b(), this.e.r0(this.b), (this.b.getHeight() - this.b.getPaddingBottom()) - this.b.getPaddingTop()));
            this.b.invalidate();
        }
    }

    public static final class c implements View.OnLayoutChangeListener {
        public final TextView b;
        public final RadialGradientDrawable.Radius c;
        public final RadialGradientDrawable.a d;
        public final RadialGradientDrawable.a e;
        public final List f;
        public final DivTextBinder g;

        public c(TextView textView, RadialGradientDrawable.Radius radius, RadialGradientDrawable.a aVar, RadialGradientDrawable.a aVar2, List list, DivTextBinder divTextBinder) {
            this.b = textView;
            this.c = radius;
            this.d = aVar;
            this.e = aVar2;
            this.f = list;
            this.g = divTextBinder;
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            view.removeOnLayoutChangeListener(this);
            this.b.getPaint().setShader(RadialGradientDrawable.g.d(this.c, this.d, this.e, i81.a1(this.f), this.g.r0(this.b), (this.b.getHeight() - this.b.getPaddingBottom()) - this.b.getPaddingTop()));
            this.b.invalidate();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivTextBinder(DivBaseBinder divBaseBinder, cu2 cu2Var, SpannedTextBuilder spannedTextBuilder, boolean z) {
        super(divBaseBinder);
        y45.j(divBaseBinder, "baseBinder");
        y45.j(cu2Var, "typefaceResolver");
        y45.j(spannedTextBuilder, "spannedTextBuilder");
        this.b = cu2Var;
        this.c = spannedTextBuilder;
        this.d = z;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0047  */
    public final void C(DivLineHeightTextView divLineHeightTextView, DivText divText, oj3 oj3Var) {
        TextUtils.TruncateAt truncateAt;
        boolean z;
        DivText.Truncate truncate = (DivText.Truncate) divText.j0.b(oj3Var);
        int i = a.d[truncate.ordinal()];
        if (i == 1) {
            truncateAt = null;
        } else if (i == 2) {
            truncateAt = TextUtils.TruncateAt.START;
        } else if (i == 3) {
            truncateAt = TextUtils.TruncateAt.MIDDLE;
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            truncateAt = TextUtils.TruncateAt.END;
        }
        divLineHeightTextView.setEllipsisLocation(truncateAt);
        if (truncate != DivText.Truncate.NONE) {
            Expression expression = divText.i;
            z = expression != null ? ((Boolean) expression.b(oj3Var)).booleanValue() : false;
        }
        divLineHeightTextView.setAutoEllipsize(z);
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0010  */
    public final void D(TextView textView, String str) {
        if (str != null) {
            y45.i(str, "it");
            if (!(!j1a.o0(str))) {
                str = null;
            }
        } else {
            str = null;
        }
        textView.setFontFeatureSettings(str);
    }

    public final void E(TextView textView, long j, DivSizeUnit divSizeUnit, double d) {
        int i;
        long j2 = j >> 31;
        if (j2 == 0 || j2 == -1) {
            i = (int) j;
        } else {
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i("Unable convert '" + j + "' to Int");
            }
            i = j > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        }
        BaseDivViewExtensionsKt.k(textView, i, divSizeUnit);
        BaseDivViewExtensionsKt.p(textView, d, i);
    }

    public final void F(TextView textView, String str) {
        if (pha.a()) {
            int hyphenationFrequency = textView.getHyphenationFrequency();
            int i = 0;
            if (this.d && TextUtils.indexOf((CharSequence) str, (char) 173, 0, Math.min(str.length(), 10)) > 0) {
                i = 1;
            }
            if (hyphenationFrequency != i) {
                textView.setHyphenationFrequency(i);
            }
        }
    }

    public final void G(TextView textView, long j, y91 y91Var) {
        if (!pdc.d(textView) || textView.isLayoutRequested()) {
            textView.addOnLayoutChangeListener(new b(textView, j, y91Var, this));
        } else {
            textView.getPaint().setShader(fl5.e.a(j, y91Var.a(), y91Var.b(), r0(textView), (textView.getHeight() - textView.getPaddingBottom()) - textView.getPaddingTop()));
            textView.invalidate();
        }
    }

    public final void H(DivLineHeightTextView divLineHeightTextView, Long l, Long l2) {
        int i;
        e8 adaptiveMaxLines = divLineHeightTextView.getAdaptiveMaxLines();
        if (adaptiveMaxLines != null) {
            adaptiveMaxLines.l();
        }
        int i2 = Integer.MIN_VALUE;
        int i3 = Integer.MAX_VALUE;
        if (l == null || l2 == null) {
            if (l != null) {
                long jLongValue = l.longValue();
                long j = jLongValue >> 31;
                if (j == 0 || j == -1) {
                    i2 = (int) jLongValue;
                } else {
                    ae5 ae5Var = ae5.a;
                    if (xi.o()) {
                        xi.i("Unable convert '" + jLongValue + "' to Int");
                    }
                    if (jLongValue > 0) {
                        i2 = Integer.MAX_VALUE;
                    }
                }
                i3 = i2;
            }
            divLineHeightTextView.setMaxLines(i3);
            return;
        }
        e8 e8Var = new e8(divLineHeightTextView);
        long jLongValue2 = l.longValue();
        long j2 = jLongValue2 >> 31;
        if (j2 == 0 || j2 == -1) {
            i = (int) jLongValue2;
        } else {
            ae5 ae5Var2 = ae5.a;
            if (xi.o()) {
                xi.i("Unable convert '" + jLongValue2 + "' to Int");
            }
            i = jLongValue2 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        }
        long jLongValue3 = l2.longValue();
        long j3 = jLongValue3 >> 31;
        if (j3 == 0 || j3 == -1) {
            i2 = (int) jLongValue3;
        } else {
            ae5 ae5Var3 = ae5.a;
            if (xi.o()) {
                xi.i("Unable convert '" + jLongValue3 + "' to Int");
            }
            if (jLongValue3 > 0) {
                i2 = Integer.MAX_VALUE;
            }
        }
        e8Var.i(new e8.a(i, i2));
        divLineHeightTextView.setAdaptiveMaxLines$div_release(e8Var);
    }

    public final void I(DivLineHeightTextView divLineHeightTextView, String str) {
        if (str == null) {
            str = EllipsizedTextView.DEFAULT_ELLIPSIS;
        }
        divLineHeightTextView.setEllipsis(str);
    }

    public final void J(TextView textView, com.yandex.div.core.view2.a aVar, DivText divText) {
        textView.setText(this.c.l(aVar, textView, divText));
    }

    public final void K(TextView textView, RadialGradientDrawable.Radius radius, RadialGradientDrawable.a aVar, RadialGradientDrawable.a aVar2, List list) {
        if (!pdc.d(textView) || textView.isLayoutRequested()) {
            textView.addOnLayoutChangeListener(new c(textView, radius, aVar, aVar2, list, this));
        } else {
            textView.getPaint().setShader(RadialGradientDrawable.g.d(radius, aVar, aVar2, i81.a1(list), r0(textView), (textView.getHeight() - textView.getPaddingBottom()) - textView.getPaddingTop()));
            textView.invalidate();
        }
    }

    public final void L(final EllipsizedTextView ellipsizedTextView, com.yandex.div.core.view2.a aVar, DivText divText) {
        DivText.Ellipsis ellipsis = divText.p;
        if (ellipsis == null) {
            ellipsizedTextView.setEllipsis(EllipsizedTextView.DEFAULT_ELLIPSIS);
        } else {
            this.c.k(aVar, ellipsizedTextView, divText, ellipsis, new e74() {
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((Spanned) obj);
                    return zfb.a;
                }

                public final void invoke(Spanned spanned) {
                    y45.j(spanned, "ellipsis");
                    ellipsizedTextView.setEllipsis(spanned);
                }
            });
        }
    }

    public final void M(final TextView textView, com.yandex.div.core.view2.a aVar, DivText divText) {
        this.c.m(aVar, textView, divText, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Spanned) obj);
                return zfb.a;
            }

            public final void invoke(Spanned spanned) {
                y45.j(spanned, "spannedText");
                textView.setText(spanned, TextView.BufferType.NORMAL);
            }
        });
    }

    public final void N(TextView textView, boolean z) {
        textView.setTextIsSelectable(z);
    }

    public final void O(TextView textView, DivLineStyle divLineStyle) {
        int i = a.b[divLineStyle.ordinal()];
        if (i == 1) {
            textView.setPaintFlags(textView.getPaintFlags() | 16);
        } else {
            if (i != 2) {
                return;
            }
            textView.setPaintFlags(textView.getPaintFlags() & (-17));
        }
    }

    public final void P(TextView textView, DivAlignmentHorizontal divAlignmentHorizontal, DivAlignmentVertical divAlignmentVertical) {
        textView.setGravity(BaseDivViewExtensionsKt.O(divAlignmentHorizontal, divAlignmentVertical));
        int i = a.a[divAlignmentHorizontal.ordinal()];
        int i2 = 5;
        if (i != 1) {
            if (i == 2) {
                i2 = 4;
            } else if (i == 3 || (i != 4 && i == 5)) {
                i2 = 6;
            }
        }
        textView.setTextAlignment(i2);
    }

    public final void Q(TextView textView, int i, Integer num) {
        textView.setTextColor(new ColorStateList(new int[][]{new int[]{R.attr.state_focused}, new int[0]}, new int[]{num != null ? num.intValue() : i, i}));
    }

    public final void R(TextView textView, of9 of9Var) {
        DivViewWrapper divViewWrapper;
        if (of9Var == null) {
            ViewParent parent = textView.getParent();
            divViewWrapper = parent instanceof DivViewWrapper ? (DivViewWrapper) parent : null;
            if (divViewWrapper != null) {
                divViewWrapper.setClipChildren(true);
                divViewWrapper.setClipToPadding(true);
            }
            textView.setClipToOutline(true);
            textView.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            return;
        }
        ViewParent parent2 = textView.getParent();
        divViewWrapper = parent2 instanceof DivViewWrapper ? (DivViewWrapper) parent2 : null;
        if (divViewWrapper != null) {
            divViewWrapper.setClipChildren(false);
            divViewWrapper.setClipToPadding(false);
        }
        textView.setClipToOutline(false);
        textView.setShadowLayer(of9Var.d(), of9Var.b(), of9Var.c(), of9Var.a());
    }

    public final void S(DivLineHeightTextView divLineHeightTextView, boolean z) {
        divLineHeightTextView.setTightenWidth(z);
    }

    public final void T(TextView textView, String str, DivFontWeight divFontWeight, Long l) {
        textView.setTypeface(du2.a(this.b, str, divFontWeight, l));
    }

    public final void U(TextView textView, DivLineStyle divLineStyle) {
        int i = a.b[divLineStyle.ordinal()];
        if (i == 1) {
            textView.setPaintFlags(textView.getPaintFlags() | 8);
        } else {
            if (i != 2) {
                return;
            }
            textView.setPaintFlags(textView.getPaintFlags() & (-9));
        }
    }

    @Override
    public void a(DivLineHeightTextView divLineHeightTextView, com.yandex.div.core.view2.a aVar, DivText divText, DivText divText2) {
        y45.j(divLineHeightTextView, "<this>");
        y45.j(aVar, "bindingContext");
        y45.j(divText, TtmlNode.TAG_DIV);
        BaseDivViewExtensionsKt.j(divLineHeightTextView, aVar, divText.b, divText.d, divText.J, divText.o, divText.D, divText.C, divText.P, divText.O, divText.c, divText.r(), divText.l);
        oj3 oj3VarB = aVar.b();
        p0(divLineHeightTextView, divText, divText2, oj3VarB);
        k0(divLineHeightTextView, divText, divText2, oj3VarB);
        Z(divLineHeightTextView, divText, divText2, oj3VarB);
        Y(divLineHeightTextView, divText, divText2, oj3VarB);
        l0(divLineHeightTextView, divText, divText2, oj3VarB);
        q0(divLineHeightTextView, divText, divText2, oj3VarB);
        i0(divLineHeightTextView, divText, divText2, oj3VarB);
        b0(divLineHeightTextView, divText, divText2, oj3VarB);
        j0(divLineHeightTextView, aVar, divText, divText2);
        W(divLineHeightTextView, aVar, divText, divText2);
        X(divLineHeightTextView, divText, divText2, oj3VarB);
        m0(divLineHeightTextView, aVar.a(), divText, divText2, oj3VarB);
        n0(divLineHeightTextView, divText, divText2, oj3VarB);
        h0(divLineHeightTextView, divText, divText2, oj3VarB);
        o0(divLineHeightTextView, divText, divText2, oj3VarB);
        v0(divLineHeightTextView, divText);
    }

    public final void W(DivLineHeightTextView divLineHeightTextView, com.yandex.div.core.view2.a aVar, DivText divText, DivText divText2) {
        DivText.Ellipsis ellipsis = divText.p;
        if ((ellipsis != null ? ellipsis.c : null) == null) {
            if ((ellipsis != null ? ellipsis.b : null) == null) {
                if ((ellipsis != null ? ellipsis.a : null) == null) {
                    c0(divLineHeightTextView, ellipsis, divText2 != null ? divText2.p : null, aVar.b());
                    return;
                }
            }
        }
        f0(divLineHeightTextView, aVar, divText);
    }

    public final void X(final DivLineHeightTextView divLineHeightTextView, final DivText divText, DivText divText2, final oj3 oj3Var) {
        if (uj3.b(divText.i, divText2 != null ? divText2.i : null)) {
            if (uj3.b(divText.j0, divText2 != null ? divText2.j0 : null)) {
                return;
            }
        }
        C(divLineHeightTextView, divText, oj3Var);
        if (uj3.f(divText.i) && uj3.d(divText.j0)) {
            return;
        }
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m230invoke(obj);
                return zfb.a;
            }

            public final void m230invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                this.this$0.C(divLineHeightTextView, divText, oj3Var);
            }
        };
        Expression expression = divText.i;
        if (expression != null) {
            divLineHeightTextView.addSubscription(expression.e(oj3Var, e74Var));
        }
        divLineHeightTextView.addSubscription(divText.j0.e(oj3Var, e74Var));
    }

    public final void Y(final DivLineHeightTextView divLineHeightTextView, final DivText divText, DivText divText2, final oj3 oj3Var) {
        if (uj3.b(divText.u, divText2 != null ? divText2.u : null)) {
            return;
        }
        Expression expression = divText.u;
        D(divLineHeightTextView, expression != null ? (String) expression.b(oj3Var) : null);
        if (uj3.f(divText.u)) {
            return;
        }
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m231invoke(obj);
                return zfb.a;
            }

            public final void m231invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                DivTextBinder divTextBinder = this.this$0;
                DivLineHeightTextView divLineHeightTextView2 = divLineHeightTextView;
                Expression expression2 = divText.u;
                divTextBinder.D(divLineHeightTextView2, expression2 != null ? (String) expression2.b(oj3Var) : null);
            }
        };
        Expression expression2 = divText.u;
        divLineHeightTextView.addSubscription(expression2 != null ? expression2.e(oj3Var, e74Var) : null);
    }

    public final void Z(final DivLineHeightTextView divLineHeightTextView, final DivText divText, DivText divText2, final oj3 oj3Var) {
        if (uj3.b(divText.v, divText2 != null ? divText2.v : null)) {
            if (uj3.b(divText.w, divText2 != null ? divText2.w : null)) {
                if (uj3.b(divText.H, divText2 != null ? divText2.H : null)) {
                    return;
                }
            }
        }
        E(divLineHeightTextView, ((Number) divText.v.b(oj3Var)).longValue(), (DivSizeUnit) divText.w.b(oj3Var), ((Number) divText.H.b(oj3Var)).doubleValue());
        if (uj3.d(divText.v) && uj3.d(divText.w) && uj3.d(divText.H)) {
            return;
        }
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m232invoke(obj);
                return zfb.a;
            }

            public final void m232invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                this.this$0.E(divLineHeightTextView, ((Number) divText.v.b(oj3Var)).longValue(), (DivSizeUnit) divText.w.b(oj3Var), ((Number) divText.H.b(oj3Var)).doubleValue());
            }
        };
        divLineHeightTextView.addSubscription(divText.v.e(oj3Var, e74Var));
        divLineHeightTextView.addSubscription(divText.w.e(oj3Var, e74Var));
        divLineHeightTextView.addSubscription(divText.H.e(oj3Var, e74Var));
    }

    public final void a0(final DivLineHeightTextView divLineHeightTextView, final Div2View div2View, final DivLinearGradient divLinearGradient, DivTextGradient divTextGradient, final oj3 oj3Var) {
        if (divTextGradient instanceof DivTextGradient.b) {
            DivTextGradient.b bVar = (DivTextGradient.b) divTextGradient;
            if (uj3.b(divLinearGradient.a, bVar.c().a) && uj3.a(divLinearGradient.c, bVar.c().c)) {
                List list = divLinearGradient.b;
                List list2 = bVar.c().b;
                if (list == null && list2 == null) {
                    return;
                }
                if (list != null && list2 != null && list.size() == list2.size()) {
                    int i = 0;
                    for (Object obj : list) {
                        int i2 = i + 1;
                        if (i < 0) {
                            y71.u();
                        }
                        if (DivDataExtensionsKt.k((DivLinearGradient.ColorPoint) obj, (DivLinearGradient.ColorPoint) list2.get(i))) {
                            i = i2;
                        }
                    }
                    return;
                }
            }
        }
        G(divLineHeightTextView, ((Number) divLinearGradient.a.b(oj3Var)).longValue(), z91.a(DivDataExtensionsKt.O(divLinearGradient, oj3Var), div2View));
        if (uj3.d(divLinearGradient.a) && uj3.e(divLinearGradient.c)) {
            List list3 = divLinearGradient.b;
            if (list3 != null) {
                List list4 = list3;
                if ((list4 instanceof Collection) && list4.isEmpty()) {
                    return;
                }
                Iterator it = list4.iterator();
                while (it.hasNext()) {
                    if (!DivDataExtensionsKt.E((DivLinearGradient.ColorPoint) it.next())) {
                    }
                }
                return;
            }
            return;
        }
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj2) {
                m233invoke(obj2);
                return zfb.a;
            }

            public final void m233invoke(Object obj2) {
                y45.j(obj2, "<anonymous parameter 0>");
                this.this$0.G(divLineHeightTextView, ((Number) divLinearGradient.a.b(oj3Var)).longValue(), z91.a(DivDataExtensionsKt.O(divLinearGradient, oj3Var), div2View));
            }
        };
        divLineHeightTextView.addSubscription(divLinearGradient.a.e(oj3Var, e74Var));
        nj3 nj3Var = divLinearGradient.c;
        divLineHeightTextView.addSubscription(nj3Var != null ? nj3Var.b(oj3Var, e74Var) : null);
        List list5 = divLinearGradient.b;
        if (list5 != null) {
            Iterator it2 = list5.iterator();
            while (it2.hasNext()) {
                sj3.d(divLineHeightTextView, (DivLinearGradient.ColorPoint) it2.next(), oj3Var, e74Var);
            }
        }
    }

    public final void b0(final DivLineHeightTextView divLineHeightTextView, final DivText divText, DivText divText2, final oj3 oj3Var) {
        if (uj3.b(divText.L, divText2 != null ? divText2.L : null)) {
            if (uj3.b(divText.M, divText2 != null ? divText2.M : null)) {
                return;
            }
        }
        Expression expression = divText.L;
        Long l = expression != null ? (Long) expression.b(oj3Var) : null;
        Expression expression2 = divText.M;
        H(divLineHeightTextView, l, expression2 != null ? (Long) expression2.b(oj3Var) : null);
        if (uj3.f(divText.L) && uj3.f(divText.M)) {
            return;
        }
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m234invoke(obj);
                return zfb.a;
            }

            public final void m234invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                DivTextBinder divTextBinder = this.this$0;
                DivLineHeightTextView divLineHeightTextView2 = divLineHeightTextView;
                Expression expression3 = divText.L;
                Long l2 = expression3 != null ? (Long) expression3.b(oj3Var) : null;
                Expression expression4 = divText.M;
                divTextBinder.H(divLineHeightTextView2, l2, expression4 != null ? (Long) expression4.b(oj3Var) : null);
            }
        };
        Expression expression3 = divText.L;
        divLineHeightTextView.addSubscription(expression3 != null ? expression3.e(oj3Var, e74Var) : null);
        Expression expression4 = divText.M;
        divLineHeightTextView.addSubscription(expression4 != null ? expression4.e(oj3Var, e74Var) : null);
    }

    public final void c0(final DivLineHeightTextView divLineHeightTextView, DivText.Ellipsis ellipsis, DivText.Ellipsis ellipsis2, oj3 oj3Var) {
        Expression expression;
        Expression expression2;
        qc2 qc2VarE = null;
        if (uj3.b(ellipsis != null ? ellipsis.d : null, ellipsis2 != null ? ellipsis2.d : null)) {
            return;
        }
        I(divLineHeightTextView, (ellipsis == null || (expression2 = ellipsis.d) == null) ? null : (String) expression2.b(oj3Var));
        if (uj3.f(ellipsis != null ? ellipsis.d : null)) {
            if (uj3.f(ellipsis != null ? ellipsis.d : null)) {
                return;
            }
        }
        if (ellipsis != null && (expression = ellipsis.d) != null) {
            qc2VarE = expression.e(oj3Var, new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((String) obj);
                    return zfb.a;
                }

                public final void invoke(String str) {
                    y45.j(str, "ellipsis");
                    this.this$0.I(divLineHeightTextView, str);
                }
            });
        }
        divLineHeightTextView.addSubscription(qc2VarE);
    }

    public final void d0(final DivLineHeightTextView divLineHeightTextView, final com.yandex.div.core.view2.a aVar, final DivText divText, DivText divText2) {
        if (uj3.b(divText.W, divText2 != null ? divText2.W : null)) {
            if (uj3.b(divText.I, divText2 != null ? divText2.I : null)) {
                if (uj3.b(divText.w, divText2 != null ? divText2.w : null)) {
                    List extensions = divText.getExtensions();
                    List extensions2 = divText2 != null ? divText2.getExtensions() : null;
                    if (extensions == null && extensions2 == null) {
                        return;
                    }
                    if (extensions != null && extensions2 != null && extensions.size() == extensions2.size()) {
                        int i = 0;
                        for (Object obj : extensions) {
                            int i2 = i + 1;
                            if (i < 0) {
                                y71.u();
                            }
                            if (y45.e(((DivExtension) obj).a, ((DivExtension) extensions2.get(i)).a)) {
                                i = i2;
                            }
                        }
                        return;
                    }
                }
            }
        }
        final oj3 oj3VarB = aVar.b();
        String str = (String) divText.W.b(oj3VarB);
        J(divLineHeightTextView, aVar, divText);
        F(divLineHeightTextView, str);
        if (uj3.d(divText.W) && uj3.f(divText.I) && uj3.f(divText.w)) {
            return;
        }
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj2) {
                m235invoke(obj2);
                return zfb.a;
            }

            public final void m235invoke(Object obj2) {
                y45.j(obj2, "<anonymous parameter 0>");
                String str2 = (String) divText.W.b(oj3VarB);
                this.J(divLineHeightTextView, aVar, divText);
                this.F(divLineHeightTextView, str2);
            }
        };
        divLineHeightTextView.addSubscription(divText.W.e(oj3VarB, e74Var));
        Expression expression = divText.I;
        divLineHeightTextView.addSubscription(expression != null ? expression.e(oj3VarB, e74Var) : null);
        divLineHeightTextView.addSubscription(divText.w.e(oj3VarB, e74Var));
    }

    public final void e0(final DivLineHeightTextView divLineHeightTextView, final DivRadialGradient divRadialGradient, DivTextGradient divTextGradient, final oj3 oj3Var) {
        List listK;
        if (divTextGradient instanceof DivTextGradient.c) {
            DivTextGradient.c cVar = (DivTextGradient.c) divTextGradient;
            if (y45.e(divRadialGradient.e, cVar.c().e) && y45.e(divRadialGradient.a, cVar.c().a) && y45.e(divRadialGradient.b, cVar.c().b) && uj3.a(divRadialGradient.d, cVar.c().d)) {
                return;
            }
        }
        final DisplayMetrics displayMetrics = divLineHeightTextView.getResources().getDisplayMetrics();
        DivRadialGradientRadius divRadialGradientRadius = divRadialGradient.e;
        y45.i(displayMetrics, "displayMetrics");
        RadialGradientDrawable.Radius radiusU0 = u0(divRadialGradientRadius, displayMetrics, oj3Var);
        RadialGradientDrawable.a aVarT0 = t0(divRadialGradient.a, displayMetrics, oj3Var);
        RadialGradientDrawable.a aVarT1 = t0(divRadialGradient.b, displayMetrics, oj3Var);
        nj3 nj3Var = divRadialGradient.d;
        if (nj3Var == null || (listK = nj3Var.a(oj3Var)) == null) {
            listK = y71.k();
        }
        K(divLineHeightTextView, radiusU0, aVarT0, aVarT1, listK);
        if (uj3.e(divRadialGradient.d)) {
            return;
        }
        nj3 nj3Var2 = divRadialGradient.d;
        divLineHeightTextView.addSubscription(nj3Var2 != null ? nj3Var2.b(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((List<Integer>) obj);
                return zfb.a;
            }

            public final void invoke(List<Integer> list) {
                y45.j(list, "colors");
                DivTextBinder divTextBinder = this.this$0;
                DivLineHeightTextView divLineHeightTextView2 = divLineHeightTextView;
                DivRadialGradientRadius divRadialGradientRadius2 = divRadialGradient.e;
                DisplayMetrics displayMetrics2 = displayMetrics;
                y45.i(displayMetrics2, "displayMetrics");
                RadialGradientDrawable.Radius radiusU1 = divTextBinder.u0(divRadialGradientRadius2, displayMetrics2, oj3Var);
                DivTextBinder divTextBinder2 = this.this$0;
                DivRadialGradientCenter divRadialGradientCenter = divRadialGradient.a;
                DisplayMetrics displayMetrics3 = displayMetrics;
                y45.i(displayMetrics3, "displayMetrics");
                RadialGradientDrawable.a aVarT2 = divTextBinder2.t0(divRadialGradientCenter, displayMetrics3, oj3Var);
                DivTextBinder divTextBinder3 = this.this$0;
                DivRadialGradientCenter divRadialGradientCenter2 = divRadialGradient.b;
                DisplayMetrics displayMetrics4 = displayMetrics;
                y45.i(displayMetrics4, "displayMetrics");
                divTextBinder.K(divLineHeightTextView2, radiusU1, aVarT2, divTextBinder3.t0(divRadialGradientCenter2, displayMetrics4, oj3Var), list);
            }
        }) : null);
    }

    public final void f0(final DivLineHeightTextView divLineHeightTextView, final com.yandex.div.core.view2.a aVar, final DivText divText) {
        DivStroke divStroke;
        Expression expression;
        DivStroke divStroke2;
        Expression expression2;
        L(divLineHeightTextView, aVar, divText);
        DivText.Ellipsis ellipsis = divText.p;
        if (ellipsis == null) {
            return;
        }
        oj3 oj3VarB = aVar.b();
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m236invoke(obj);
                return zfb.a;
            }

            public final void m236invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                this.this$0.L(divLineHeightTextView, aVar, divText);
            }
        };
        divLineHeightTextView.addSubscription(ellipsis.d.e(oj3VarB, e74Var));
        List<DivText.Range> list = ellipsis.c;
        if (list != null) {
            for (DivText.Range range : list) {
                divLineHeightTextView.addSubscription(range.q.e(oj3VarB, e74Var));
                Expression expression3 = range.f;
                divLineHeightTextView.addSubscription(expression3 != null ? expression3.e(oj3VarB, e74Var) : null);
                Expression expression4 = range.i;
                divLineHeightTextView.addSubscription(expression4 != null ? expression4.e(oj3VarB, e74Var) : null);
                divLineHeightTextView.addSubscription(range.j.e(oj3VarB, e74Var));
                Expression expression5 = range.l;
                divLineHeightTextView.addSubscription(expression5 != null ? expression5.e(oj3VarB, e74Var) : null);
                Expression expression6 = range.m;
                divLineHeightTextView.addSubscription(expression6 != null ? expression6.e(oj3VarB, e74Var) : null);
                Expression expression7 = range.n;
                divLineHeightTextView.addSubscription(expression7 != null ? expression7.e(oj3VarB, e74Var) : null);
                Expression expression8 = range.o;
                divLineHeightTextView.addSubscription(expression8 != null ? expression8.e(oj3VarB, e74Var) : null);
                Expression expression9 = range.r;
                divLineHeightTextView.addSubscription(expression9 != null ? expression9.e(oj3VarB, e74Var) : null);
                Expression expression10 = range.s;
                divLineHeightTextView.addSubscription(expression10 != null ? expression10.e(oj3VarB, e74Var) : null);
                Expression expression11 = range.u;
                divLineHeightTextView.addSubscription(expression11 != null ? expression11.e(oj3VarB, e74Var) : null);
                Expression expression12 = range.v;
                divLineHeightTextView.addSubscription(expression12 != null ? expression12.e(oj3VarB, e74Var) : null);
                DivTextRangeBackground divTextRangeBackground = range.c;
                Object objB = divTextRangeBackground != null ? divTextRangeBackground.b() : null;
                if (objB instanceof DivSolidBackground) {
                    divLineHeightTextView.addSubscription(((DivSolidBackground) objB).a.e(oj3VarB, e74Var));
                }
                DivTextRangeBorder divTextRangeBorder = range.e;
                divLineHeightTextView.addSubscription((divTextRangeBorder == null || (divStroke2 = divTextRangeBorder.b) == null || (expression2 = divStroke2.a) == null) ? null : expression2.e(oj3VarB, e74Var));
                DivTextRangeBorder divTextRangeBorder2 = range.e;
                divLineHeightTextView.addSubscription((divTextRangeBorder2 == null || (divStroke = divTextRangeBorder2.b) == null || (expression = divStroke.d) == null) ? null : expression.e(oj3VarB, e74Var));
            }
        }
        List<DivText.Image> list2 = ellipsis.b;
        if (list2 != null) {
            for (DivText.Image image : list2) {
                divLineHeightTextView.addSubscription(image.f.e(oj3VarB, e74Var));
                divLineHeightTextView.addSubscription(image.i.e(oj3VarB, e74Var));
                Expression expression13 = image.g;
                divLineHeightTextView.addSubscription(expression13 != null ? expression13.e(oj3VarB, e74Var) : null);
                divLineHeightTextView.addSubscription(image.j.b.e(oj3VarB, e74Var));
                divLineHeightTextView.addSubscription(image.j.a.e(oj3VarB, e74Var));
            }
        }
    }

    public final void g0(final DivLineHeightTextView divLineHeightTextView, final com.yandex.div.core.view2.a aVar, final DivText divText) {
        oj3 oj3VarB = aVar.b();
        M(divLineHeightTextView, aVar, divText);
        F(divLineHeightTextView, (String) divText.W.b(oj3VarB));
        divLineHeightTextView.addSubscription(divText.W.e(oj3VarB, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((String) obj);
                return zfb.a;
            }

            public final void invoke(String str) {
                y45.j(str, "text");
                this.this$0.M(divLineHeightTextView, aVar, divText);
                this.this$0.F(divLineHeightTextView, str);
            }
        }));
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m237invoke(obj);
                return zfb.a;
            }

            public final void m237invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                this.this$0.M(divLineHeightTextView, aVar, divText);
            }
        };
        divLineHeightTextView.addSubscription(divText.v.e(oj3VarB, e74Var));
        divLineHeightTextView.addSubscription(divText.w.e(oj3VarB, e74Var));
        Expression expression = divText.t;
        divLineHeightTextView.addSubscription(expression != null ? expression.e(oj3VarB, e74Var) : null);
        Expression expression2 = divText.I;
        divLineHeightTextView.addSubscription(expression2 != null ? expression2.e(oj3VarB, e74Var) : null);
        List<DivText.Range> list = divText.Q;
        if (list != null) {
            for (DivText.Range range : list) {
                divLineHeightTextView.addSubscription(range.q.e(oj3VarB, e74Var));
                Expression expression3 = range.f;
                divLineHeightTextView.addSubscription(expression3 != null ? expression3.e(oj3VarB, e74Var) : null);
                Expression expression4 = range.b;
                divLineHeightTextView.addSubscription(expression4 != null ? expression4.e(oj3VarB, e74Var) : null);
                Expression expression5 = range.i;
                divLineHeightTextView.addSubscription(expression5 != null ? expression5.e(oj3VarB, e74Var) : null);
                divLineHeightTextView.addSubscription(range.j.e(oj3VarB, e74Var));
                Expression expression6 = range.l;
                divLineHeightTextView.addSubscription(expression6 != null ? expression6.e(oj3VarB, e74Var) : null);
                Expression expression7 = range.m;
                divLineHeightTextView.addSubscription(expression7 != null ? expression7.e(oj3VarB, e74Var) : null);
                Expression expression8 = range.n;
                divLineHeightTextView.addSubscription(expression8 != null ? expression8.e(oj3VarB, e74Var) : null);
                Expression expression9 = range.o;
                divLineHeightTextView.addSubscription(expression9 != null ? expression9.e(oj3VarB, e74Var) : null);
                Expression expression10 = range.r;
                divLineHeightTextView.addSubscription(expression10 != null ? expression10.e(oj3VarB, e74Var) : null);
                Expression expression11 = range.s;
                divLineHeightTextView.addSubscription(expression11 != null ? expression11.e(oj3VarB, e74Var) : null);
                Expression expression12 = range.u;
                divLineHeightTextView.addSubscription(expression12 != null ? expression12.e(oj3VarB, e74Var) : null);
                Expression expression13 = range.v;
                divLineHeightTextView.addSubscription(expression13 != null ? expression13.e(oj3VarB, e74Var) : null);
            }
        }
        List<DivText.Image> list2 = divText.F;
        if (list2 != null) {
            for (DivText.Image image : list2) {
                divLineHeightTextView.addSubscription(image.f.e(oj3VarB, e74Var));
                divLineHeightTextView.addSubscription(image.d.e(oj3VarB, e74Var));
                divLineHeightTextView.addSubscription(image.i.e(oj3VarB, e74Var));
                divLineHeightTextView.addSubscription(image.b.e(oj3VarB, e74Var));
                Expression expression14 = image.g;
                divLineHeightTextView.addSubscription(expression14 != null ? expression14.e(oj3VarB, e74Var) : null);
                divLineHeightTextView.addSubscription(image.j.b.e(oj3VarB, e74Var));
                divLineHeightTextView.addSubscription(image.j.a.e(oj3VarB, e74Var));
            }
        }
    }

    public final void h0(final DivLineHeightTextView divLineHeightTextView, DivText divText, DivText divText2, oj3 oj3Var) {
        if (uj3.b(divText.T, divText2 != null ? divText2.T : null)) {
            return;
        }
        N(divLineHeightTextView, ((Boolean) divText.T.b(oj3Var)).booleanValue());
        if (uj3.d(divText.T)) {
            return;
        }
        divLineHeightTextView.addSubscription(divText.T.e(oj3Var, new e74() {
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
                this.this$0.N(divLineHeightTextView, z);
            }
        }));
    }

    public final void i0(final DivLineHeightTextView divLineHeightTextView, DivText divText, DivText divText2, oj3 oj3Var) {
        if (uj3.b(divText.V, divText2 != null ? divText2.V : null)) {
            return;
        }
        O(divLineHeightTextView, (DivLineStyle) divText.V.b(oj3Var));
        if (uj3.d(divText.V)) {
            return;
        }
        divLineHeightTextView.addSubscription(divText.V.e(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((DivLineStyle) obj);
                return zfb.a;
            }

            public final void invoke(DivLineStyle divLineStyle) {
                y45.j(divLineStyle, "strikethrough");
                this.this$0.O(divLineHeightTextView, divLineStyle);
            }
        }));
    }

    public final void j0(DivLineHeightTextView divLineHeightTextView, com.yandex.div.core.view2.a aVar, DivText divText, DivText divText2) {
        if (divText.Q == null && divText.F == null) {
            d0(divLineHeightTextView, aVar, divText, divText2);
        } else {
            g0(divLineHeightTextView, aVar, divText);
        }
    }

    public final void k0(final DivLineHeightTextView divLineHeightTextView, final DivText divText, DivText divText2, final oj3 oj3Var) {
        if (uj3.b(divText.X, divText2 != null ? divText2.X : null)) {
            if (uj3.b(divText.Y, divText2 != null ? divText2.Y : null)) {
                return;
            }
        }
        P(divLineHeightTextView, (DivAlignmentHorizontal) divText.X.b(oj3Var), (DivAlignmentVertical) divText.Y.b(oj3Var));
        if (uj3.d(divText.X) && uj3.d(divText.Y)) {
            return;
        }
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m238invoke(obj);
                return zfb.a;
            }

            public final void m238invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                this.this$0.P(divLineHeightTextView, (DivAlignmentHorizontal) divText.X.b(oj3Var), (DivAlignmentVertical) divText.Y.b(oj3Var));
            }
        };
        divLineHeightTextView.addSubscription(divText.X.e(oj3Var, e74Var));
        divLineHeightTextView.addSubscription(divText.Y.e(oj3Var, e74Var));
    }

    public final void l0(final DivLineHeightTextView divLineHeightTextView, final DivText divText, DivText divText2, final oj3 oj3Var) {
        if (uj3.b(divText.Z, divText2 != null ? divText2.Z : null)) {
            if (uj3.b(divText.s, divText2 != null ? divText2.s : null)) {
                return;
            }
        }
        int iIntValue = ((Number) divText.Z.b(oj3Var)).intValue();
        Expression expression = divText.s;
        Q(divLineHeightTextView, iIntValue, expression != null ? (Integer) expression.b(oj3Var) : null);
        if (uj3.d(divText.Z) && uj3.f(divText.s)) {
            return;
        }
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m239invoke(obj);
                return zfb.a;
            }

            public final void m239invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                DivTextBinder divTextBinder = this.this$0;
                DivLineHeightTextView divLineHeightTextView2 = divLineHeightTextView;
                int iIntValue2 = ((Number) divText.Z.b(oj3Var)).intValue();
                Expression expression2 = divText.s;
                divTextBinder.Q(divLineHeightTextView2, iIntValue2, expression2 != null ? (Integer) expression2.b(oj3Var) : null);
            }
        };
        divLineHeightTextView.addSubscription(divText.Z.e(oj3Var, e74Var));
        Expression expression2 = divText.s;
        divLineHeightTextView.addSubscription(expression2 != null ? expression2.e(oj3Var, e74Var) : null);
    }

    public final void m0(DivLineHeightTextView divLineHeightTextView, Div2View div2View, DivText divText, DivText divText2, oj3 oj3Var) {
        DivTextGradient divTextGradient = divText.a0;
        if (divTextGradient == null) {
            divLineHeightTextView.getPaint().setShader(null);
        } else if (divTextGradient instanceof DivTextGradient.b) {
            a0(divLineHeightTextView, div2View, ((DivTextGradient.b) divTextGradient).c(), divText2 != null ? divText2.a0 : null, oj3Var);
        } else if (divTextGradient instanceof DivTextGradient.c) {
            e0(divLineHeightTextView, ((DivTextGradient.c) divTextGradient).c(), divText2 != null ? divText2.a0 : null, oj3Var);
        }
    }

    public final void n0(final DivLineHeightTextView divLineHeightTextView, final DivText divText, DivText divText2, final oj3 oj3Var) {
        of9 of9VarS0;
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
        DivPoint divPoint5;
        DivDimension divDimension5;
        DivPoint divPoint6;
        DivDimension divDimension6;
        DivPoint divPoint7;
        DivDimension divDimension7;
        DivPoint divPoint8;
        DivDimension divDimension8;
        DivShadow divShadow;
        DivPoint divPoint9;
        DivDimension divDimension9;
        DivPoint divPoint10;
        DivDimension divDimension10;
        DivShadow divShadow2;
        DivPoint divPoint11;
        DivDimension divDimension11;
        DivPoint divPoint12;
        DivDimension divDimension12;
        DivShadow divShadow3;
        DivPoint divPoint13;
        DivDimension divDimension13;
        DivPoint divPoint14;
        DivDimension divDimension14;
        DivShadow divShadow4;
        DivPoint divPoint15;
        DivDimension divDimension15;
        DivPoint divPoint16;
        DivDimension divDimension16;
        DivShadow divShadow5;
        DivShadow divShadow6;
        DivShadow divShadow7;
        DivShadow divShadow8 = divText.b0;
        qc2 qc2VarE = null;
        if (uj3.b(divShadow8 != null ? divShadow8.a : null, (divText2 == null || (divShadow7 = divText2.b0) == null) ? null : divShadow7.a)) {
            DivShadow divShadow9 = divText.b0;
            if (uj3.b(divShadow9 != null ? divShadow9.b : null, (divText2 == null || (divShadow6 = divText2.b0) == null) ? null : divShadow6.b)) {
                DivShadow divShadow10 = divText.b0;
                if (uj3.b(divShadow10 != null ? divShadow10.c : null, (divText2 == null || (divShadow5 = divText2.b0) == null) ? null : divShadow5.c)) {
                    DivShadow divShadow11 = divText.b0;
                    if (uj3.b((divShadow11 == null || (divPoint16 = divShadow11.d) == null || (divDimension16 = divPoint16.a) == null) ? null : divDimension16.b, (divText2 == null || (divShadow4 = divText2.b0) == null || (divPoint15 = divShadow4.d) == null || (divDimension15 = divPoint15.a) == null) ? null : divDimension15.b)) {
                        DivShadow divShadow12 = divText.b0;
                        if (uj3.b((divShadow12 == null || (divPoint14 = divShadow12.d) == null || (divDimension14 = divPoint14.a) == null) ? null : divDimension14.a, (divText2 == null || (divShadow3 = divText2.b0) == null || (divPoint13 = divShadow3.d) == null || (divDimension13 = divPoint13.a) == null) ? null : divDimension13.a)) {
                            DivShadow divShadow13 = divText.b0;
                            if (uj3.b((divShadow13 == null || (divPoint12 = divShadow13.d) == null || (divDimension12 = divPoint12.b) == null) ? null : divDimension12.b, (divText2 == null || (divShadow2 = divText2.b0) == null || (divPoint11 = divShadow2.d) == null || (divDimension11 = divPoint11.b) == null) ? null : divDimension11.b)) {
                                DivShadow divShadow14 = divText.b0;
                                if (uj3.b((divShadow14 == null || (divPoint10 = divShadow14.d) == null || (divDimension10 = divPoint10.b) == null) ? null : divDimension10.a, (divText2 == null || (divShadow = divText2.b0) == null || (divPoint9 = divShadow.d) == null || (divDimension9 = divPoint9.b) == null) ? null : divDimension9.a)) {
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
        final DivShadow divShadow15 = divText.b0;
        final DisplayMetrics displayMetrics = divLineHeightTextView.getResources().getDisplayMetrics();
        if (divShadow15 != null) {
            y45.i(displayMetrics, "displayMetrics");
            of9VarS0 = s0(divShadow15, oj3Var, displayMetrics, ((Number) divText.Z.b(oj3Var)).intValue());
        } else {
            of9VarS0 = null;
        }
        R(divLineHeightTextView, of9VarS0);
        DivShadow divShadow16 = divText.b0;
        if (uj3.f(divShadow16 != null ? divShadow16.a : null)) {
            DivShadow divShadow17 = divText.b0;
            if (uj3.f(divShadow17 != null ? divShadow17.b : null)) {
                DivShadow divShadow18 = divText.b0;
                if (uj3.f(divShadow18 != null ? divShadow18.c : null)) {
                    DivShadow divShadow19 = divText.b0;
                    if (uj3.f((divShadow19 == null || (divPoint8 = divShadow19.d) == null || (divDimension8 = divPoint8.a) == null) ? null : divDimension8.b)) {
                        DivShadow divShadow20 = divText.b0;
                        if (uj3.f((divShadow20 == null || (divPoint7 = divShadow20.d) == null || (divDimension7 = divPoint7.a) == null) ? null : divDimension7.a)) {
                            DivShadow divShadow21 = divText.b0;
                            if (uj3.f((divShadow21 == null || (divPoint6 = divShadow21.d) == null || (divDimension6 = divPoint6.b) == null) ? null : divDimension6.b)) {
                                DivShadow divShadow22 = divText.b0;
                                if (uj3.f((divShadow22 == null || (divPoint5 = divShadow22.d) == null || (divDimension5 = divPoint5.b) == null) ? null : divDimension5.a)) {
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m240invoke(obj);
                return zfb.a;
            }

            public final void m240invoke(Object obj) {
                of9 of9VarS1;
                y45.j(obj, "<anonymous parameter 0>");
                DivTextBinder divTextBinder = this.this$0;
                DivLineHeightTextView divLineHeightTextView2 = divLineHeightTextView;
                DivShadow divShadow23 = divShadow15;
                if (divShadow23 != null) {
                    oj3 oj3Var2 = oj3Var;
                    DisplayMetrics displayMetrics2 = displayMetrics;
                    y45.i(displayMetrics2, "displayMetrics");
                    of9VarS1 = divTextBinder.s0(divShadow23, oj3Var2, displayMetrics2, ((Number) divText.Z.b(oj3Var)).intValue());
                } else {
                    of9VarS1 = null;
                }
                divTextBinder.R(divLineHeightTextView2, of9VarS1);
            }
        };
        divLineHeightTextView.addSubscription((divShadow15 == null || (expression7 = divShadow15.a) == null) ? null : expression7.e(oj3Var, e74Var));
        divLineHeightTextView.addSubscription((divShadow15 == null || (expression6 = divShadow15.c) == null) ? null : expression6.e(oj3Var, e74Var));
        divLineHeightTextView.addSubscription((divShadow15 == null || (expression5 = divShadow15.b) == null) ? null : expression5.e(oj3Var, e74Var));
        divLineHeightTextView.addSubscription((divShadow15 == null || (divPoint4 = divShadow15.d) == null || (divDimension4 = divPoint4.a) == null || (expression4 = divDimension4.b) == null) ? null : expression4.e(oj3Var, e74Var));
        divLineHeightTextView.addSubscription((divShadow15 == null || (divPoint3 = divShadow15.d) == null || (divDimension3 = divPoint3.a) == null || (expression3 = divDimension3.a) == null) ? null : expression3.e(oj3Var, e74Var));
        divLineHeightTextView.addSubscription((divShadow15 == null || (divPoint2 = divShadow15.d) == null || (divDimension2 = divPoint2.b) == null || (expression2 = divDimension2.b) == null) ? null : expression2.e(oj3Var, e74Var));
        if (divShadow15 != null && (divPoint = divShadow15.d) != null && (divDimension = divPoint.b) != null && (expression = divDimension.a) != null) {
            qc2VarE = expression.e(oj3Var, e74Var);
        }
        divLineHeightTextView.addSubscription(qc2VarE);
    }

    public final void o0(final DivLineHeightTextView divLineHeightTextView, DivText divText, DivText divText2, oj3 oj3Var) {
        if (uj3.b(divText.c0, divText2 != null ? divText2.c0 : null)) {
            return;
        }
        S(divLineHeightTextView, ((Boolean) divText.c0.b(oj3Var)).booleanValue());
        if (uj3.d(divText.c0)) {
            return;
        }
        divLineHeightTextView.addSubscription(divText.c0.e(oj3Var, new e74() {
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
                this.this$0.S(divLineHeightTextView, z);
            }
        }));
    }

    public final void p0(final DivLineHeightTextView divLineHeightTextView, final DivText divText, DivText divText2, final oj3 oj3Var) {
        if (uj3.b(divText.t, divText2 != null ? divText2.t : null)) {
            if (uj3.b(divText.y, divText2 != null ? divText2.y : null)) {
                return;
            }
        }
        Expression expression = divText.t;
        String str = expression != null ? (String) expression.b(oj3Var) : null;
        DivFontWeight divFontWeight = (DivFontWeight) divText.y.b(oj3Var);
        Expression expression2 = divText.z;
        T(divLineHeightTextView, str, divFontWeight, expression2 != null ? (Long) expression2.b(oj3Var) : null);
        if (uj3.f(divText.t) && uj3.d(divText.y) && uj3.f(divText.z)) {
            return;
        }
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m241invoke(obj);
                return zfb.a;
            }

            public final void m241invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                DivTextBinder divTextBinder = this.this$0;
                DivLineHeightTextView divLineHeightTextView2 = divLineHeightTextView;
                Expression expression3 = divText.t;
                String str2 = expression3 != null ? (String) expression3.b(oj3Var) : null;
                DivFontWeight divFontWeight2 = (DivFontWeight) divText.y.b(oj3Var);
                Expression expression4 = divText.z;
                divTextBinder.T(divLineHeightTextView2, str2, divFontWeight2, expression4 != null ? (Long) expression4.b(oj3Var) : null);
            }
        };
        Expression expression3 = divText.t;
        divLineHeightTextView.addSubscription(expression3 != null ? expression3.e(oj3Var, e74Var) : null);
        divLineHeightTextView.addSubscription(divText.y.e(oj3Var, e74Var));
        Expression expression4 = divText.z;
        divLineHeightTextView.addSubscription(expression4 != null ? expression4.e(oj3Var, e74Var) : null);
    }

    public final void q0(final DivLineHeightTextView divLineHeightTextView, DivText divText, DivText divText2, oj3 oj3Var) {
        if (uj3.b(divText.k0, divText2 != null ? divText2.k0 : null)) {
            return;
        }
        U(divLineHeightTextView, (DivLineStyle) divText.k0.b(oj3Var));
        if (uj3.d(divText.k0)) {
            return;
        }
        divLineHeightTextView.addSubscription(divText.k0.e(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((DivLineStyle) obj);
                return zfb.a;
            }

            public final void invoke(DivLineStyle divLineStyle) {
                y45.j(divLineStyle, TtmlNode.UNDERLINE);
                this.this$0.U(divLineHeightTextView, divLineStyle);
            }
        }));
    }

    public final int r0(TextView textView) {
        return Math.min((textView.getWidth() - textView.getPaddingRight()) - textView.getPaddingLeft(), (int) textView.getPaint().measureText(textView.getText().toString()));
    }

    public final of9 s0(DivShadow divShadow, oj3 oj3Var, DisplayMetrics displayMetrics, int i) {
        int i2 = i >>> 24;
        float fM = BaseDivViewExtensionsKt.M((Number) divShadow.b.b(oj3Var), displayMetrics);
        float fG0 = BaseDivViewExtensionsKt.G0(divShadow.d.a, displayMetrics, oj3Var);
        float fG1 = BaseDivViewExtensionsKt.G0(divShadow.d.b, displayMetrics, oj3Var);
        Paint paint = new Paint();
        paint.setColor(((Number) divShadow.c.b(oj3Var)).intValue());
        paint.setAlpha((int) (((Number) divShadow.a.b(oj3Var)).doubleValue() * ((double) i2)));
        return new of9(fG0, fG1, fM, paint.getColor());
    }

    public final RadialGradientDrawable.a t0(DivRadialGradientCenter divRadialGradientCenter, DisplayMetrics displayMetrics, oj3 oj3Var) {
        if (divRadialGradientCenter instanceof DivRadialGradientCenter.b) {
            return new RadialGradientDrawable.a.C0298a(BaseDivViewExtensionsKt.M((Number) ((DivRadialGradientCenter.b) divRadialGradientCenter).c().b.b(oj3Var), displayMetrics));
        }
        if (divRadialGradientCenter instanceof DivRadialGradientCenter.c) {
            return new RadialGradientDrawable.a.b((float) ((Number) ((DivRadialGradientCenter.c) divRadialGradientCenter).c().a.b(oj3Var)).doubleValue());
        }
        throw new NoWhenBranchMatchedException();
    }

    public final RadialGradientDrawable.Radius u0(DivRadialGradientRadius divRadialGradientRadius, DisplayMetrics displayMetrics, oj3 oj3Var) {
        RadialGradientDrawable.Radius.Relative.Type type;
        if (divRadialGradientRadius instanceof DivRadialGradientRadius.b) {
            return new RadialGradientDrawable.Radius.a(BaseDivViewExtensionsKt.M((Number) ((DivRadialGradientRadius.b) divRadialGradientRadius).c().b.b(oj3Var), displayMetrics));
        }
        if (!(divRadialGradientRadius instanceof DivRadialGradientRadius.c)) {
            throw new NoWhenBranchMatchedException();
        }
        int i = a.c[((DivRadialGradientRelativeRadius.Value) ((DivRadialGradientRadius.c) divRadialGradientRadius).c().a.b(oj3Var)).ordinal()];
        if (i == 1) {
            type = RadialGradientDrawable.Radius.Relative.Type.FARTHEST_CORNER;
        } else if (i == 2) {
            type = RadialGradientDrawable.Radius.Relative.Type.NEAREST_CORNER;
        } else if (i == 3) {
            type = RadialGradientDrawable.Radius.Relative.Type.FARTHEST_SIDE;
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            type = RadialGradientDrawable.Radius.Relative.Type.NEAREST_SIDE;
        }
        return new RadialGradientDrawable.Radius.Relative(type);
    }

    public final void v0(View view, DivText divText) {
        view.setFocusable(view.isFocusable() || divText.s != null);
    }
}
