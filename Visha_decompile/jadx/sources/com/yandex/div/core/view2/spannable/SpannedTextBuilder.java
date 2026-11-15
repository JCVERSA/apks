package com.yandex.div.core.view2.spannable;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.text.style.StrikethroughSpan;
import android.text.style.UnderlineSpan;
import android.util.DisplayMetrics;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.yandex.div.core.util.text.DivBackgroundSpan;
import com.yandex.div.core.util.text.DivTextRangesBackgroundHelper;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.divs.DivActionBinder;
import com.yandex.div.core.view2.divs.widgets.DivLineHeightTextView;
import com.yandex.div.core.view2.spannable.SpannedTextBuilder;
import com.yandex.div.internal.spannable.NoStrikethroughSpan;
import com.yandex.div.internal.spannable.NoUnderlineSpan;
import com.yandex.div.internal.spannable.TextColorSpan;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivBlendMode;
import com.yandex.div2.DivFixedSize;
import com.yandex.div2.DivFontWeight;
import com.yandex.div2.DivLineStyle;
import com.yandex.div2.DivShadow;
import com.yandex.div2.DivSizeUnit;
import com.yandex.div2.DivText;
import com.yandex.div2.DivTextAlignmentVertical;
import com.yandex.div2.DivTextRangeBackground;
import com.yandex.div2.DivTextRangeBorder;
import defpackage.a34;
import defpackage.ae5;
import defpackage.aha;
import defpackage.c81;
import defpackage.cu2;
import defpackage.dl5;
import defpackage.dq0;
import defpackage.e74;
import defpackage.eg2;
import defpackage.el5;
import defpackage.fd0;
import defpackage.hi;
import defpackage.i81;
import defpackage.idb;
import defpackage.jn5;
import defpackage.km2;
import defpackage.lk5;
import defpackage.of9;
import defpackage.oj3;
import defpackage.oj8;
import defpackage.ok2;
import defpackage.p08;
import defpackage.pf9;
import defpackage.tob;
import defpackage.v24;
import defpackage.wk2;
import defpackage.wn8;
import defpackage.xe9;
import defpackage.xi;
import defpackage.xq8;
import defpackage.y45;
import defpackage.y71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class SpannedTextBuilder {
    public static final a e = new a(null);
    public final cu2 a;
    public final wk2 b;
    public final Paint c;
    public final boolean d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final class b extends ok2 {
        public final com.yandex.div.core.view2.a b;
        public final DivText.Image c;
        public final com.yandex.div.core.view2.spannable.a d;
        public final Spanned e;
        public final e74 f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(com.yandex.div.core.view2.a aVar, DivText.Image image, com.yandex.div.core.view2.spannable.a aVar2, Spanned spanned, e74 e74Var) {
            super(aVar.a());
            y45.j(aVar, "bindingContext");
            y45.j(image, "image");
            y45.j(aVar2, "imageSpan");
            y45.j(spanned, "spannedText");
            this.b = aVar;
            this.c = image;
            this.d = aVar2;
            this.e = spanned;
            this.f = e74Var;
        }

        @Override
        public void b(dq0 dq0Var) {
            y45.j(dq0Var, "cachedBitmap");
            super.b(dq0Var);
            Resources resources = this.b.a().getResources();
            oj3 oj3VarB = this.b.b();
            Expression expression = this.c.g;
            Integer num = expression != null ? (Integer) expression.b(oj3VarB) : null;
            PorterDuff.Mode modeE0 = BaseDivViewExtensionsKt.E0((DivBlendMode) this.c.h.b(oj3VarB));
            BitmapDrawable bitmapDrawable = new BitmapDrawable(resources, dq0Var.a());
            if (num != null) {
                bitmapDrawable.setColorFilter(new PorterDuffColorFilter(num.intValue(), modeE0));
            }
            this.d.f(bitmapDrawable);
            e74 e74Var = this.f;
            if (e74Var != null) {
                e74Var.invoke(this.e);
            }
        }
    }

    public class c {
        public static final int[] a;
        public static final int[] b;
        public static final int[] c;

        static {
            int[] iArr = new int[DivText.Image.IndexingDirection.values().length];
            try {
                iArr[DivText.Image.IndexingDirection.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivText.Image.IndexingDirection.REVERSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
            int[] iArr2 = new int[DivLineStyle.values().length];
            try {
                iArr2[DivLineStyle.SINGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[DivLineStyle.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            b = iArr2;
            int[] iArr3 = new int[DivText.Image.Accessibility.Type.values().length];
            try {
                iArr3[DivText.Image.Accessibility.Type.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr3[DivText.Image.Accessibility.Type.BUTTON.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr3[DivText.Image.Accessibility.Type.IMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr3[DivText.Image.Accessibility.Type.TEXT.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr3[DivText.Image.Accessibility.Type.AUTO.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            c = iArr3;
        }
    }

    public SpannedTextBuilder(cu2 cu2Var, wk2 wk2Var) {
        y45.j(cu2Var, "typefaceResolver");
        y45.j(wk2Var, "imageLoader");
        this.a = cu2Var;
        this.b = wk2Var;
        this.c = new Paint();
    }

    public static void e(SpannedTextBuilder spannedTextBuilder, com.yandex.div.core.view2.a aVar, TextView textView, Spannable spannable, int i, int i2, List list, boolean z, int i3, Object obj) {
        spannedTextBuilder.d(aVar, textView, spannable, i, i2, list, (i3 & 64) != 0 ? true : z);
    }

    public static final void h(Div2View div2View, com.yandex.div.core.view2.a aVar, TextView textView, List list) {
        y45.j(div2View, "$divView");
        y45.j(aVar, "$bindingContext");
        y45.j(textView, "$textView");
        y45.j(list, "$actions");
        DivActionBinder divActionBinderN = div2View.getDiv2Component().n();
        y45.i(divActionBinderN, "divView.div2Component.actionBinder");
        divActionBinderN.L(aVar, textView, list);
    }

    public static final Layout j(TextView textView) {
        y45.j(textView, "$textView");
        return textView.getLayout();
    }

    public final void d(com.yandex.div.core.view2.a aVar, TextView textView, Spannable spannable, int i, int i2, List list, boolean z) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        spannable.setSpan(new p08(aVar, list), i, i2, 33);
        if (z) {
            ViewCompat.enableAccessibleClickableSpanSupport(textView);
        }
    }

    public final void f(com.yandex.div.core.view2.a aVar, TextView textView, Spannable spannable, int i, int i2, DivTextRangeBorder divTextRangeBorder, DivTextRangeBackground divTextRangeBackground) {
        if (divTextRangeBorder == null && divTextRangeBackground == null) {
            return;
        }
        oj3 oj3VarB = aVar.b();
        DivBackgroundSpan divBackgroundSpan = new DivBackgroundSpan(divTextRangeBorder, divTextRangeBackground);
        if (textView instanceof DivLineHeightTextView) {
            DivLineHeightTextView divLineHeightTextView = (DivLineHeightTextView) textView;
            if (km2.a(divLineHeightTextView, spannable, divBackgroundSpan, i, i2, oj3VarB)) {
                return;
            }
            spannable.setSpan(divBackgroundSpan, i, i2, 33);
            DivTextRangesBackgroundHelper textRoundedBgHelper = divLineHeightTextView.getTextRoundedBgHelper();
            if (textRoundedBgHelper != null) {
                textRoundedBgHelper.a(divBackgroundSpan);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x006d  */
    public final com.yandex.div.core.view2.spannable.a g(final com.yandex.div.core.view2.a aVar, final TextView textView, Spannable spannable, aha ahaVar, DivText.Image image) {
        com.yandex.div.core.view2.spannable.a.C0293a c0293a;
        String strC;
        DisplayMetrics displayMetrics = textView.getResources().getDisplayMetrics();
        final Div2View div2ViewA = aVar.a();
        oj3 oj3VarB = aVar.b();
        int iS = s(ahaVar.g(), image, oj3VarB);
        DivFixedSize divFixedSize = image.j;
        y45.i(displayMetrics, "displayMetrics");
        int iH0 = BaseDivViewExtensionsKt.H0(divFixedSize, displayMetrics, oj3VarB);
        int iH1 = BaseDivViewExtensionsKt.H0(image.c, displayMetrics, oj3VarB);
        Integer numE = ahaVar.e();
        int iIntValue = numE != null ? numE.intValue() : 0;
        TextVerticalAlignment textVerticalAlignmentM0 = BaseDivViewExtensionsKt.M0((DivTextAlignmentVertical) image.b.b(oj3VarB));
        DivText.Image.Accessibility accessibility = image.a;
        if (accessibility != null) {
            int i = c.c[accessibility.b.ordinal()];
            if (i == 1) {
                strC = null;
            } else if (i == 2) {
                strC = xq8.b(Button.class).c();
            } else if (i == 3) {
                strC = xq8.b(ImageView.class).c();
            } else if (i == 4) {
                strC = xq8.b(TextView.class).c();
            } else if (i != 5) {
                strC = null;
            } else {
                strC = xq8.b(ImageView.class).c();
            }
            Expression expression = accessibility.a;
            String str = expression != null ? (String) expression.b(oj3VarB) : null;
            final List listR = r(aVar, spannable, iS);
            c0293a = new com.yandex.div.core.view2.spannable.a.C0293a(strC, str, listR != null ? new com.yandex.div.core.view2.spannable.a.b() {
                @Override
                public final void a() {
                    SpannedTextBuilder.h(div2ViewA, aVar, textView, listR);
                }
            } : null);
        } else {
            c0293a = null;
        }
        com.yandex.div.core.view2.spannable.a aVar2 = new com.yandex.div.core.view2.spannable.a(null, iH0, iH1, iIntValue, textVerticalAlignmentM0, c0293a);
        spannable.setSpan(aVar2, iS, iS + 1, 33);
        DivLineHeightTextView divLineHeightTextView = textView instanceof DivLineHeightTextView ? (DivLineHeightTextView) textView : null;
        if (divLineHeightTextView != null) {
            divLineHeightTextView.addImageSpan$div_release(aVar2);
        }
        return aVar2;
    }

    public final void i(final TextView textView, Spannable spannable, aha ahaVar, com.yandex.div.core.view2.spannable.b bVar) {
        int iN = bVar.n();
        int iF = bVar.f();
        if (iN > iF) {
            return;
        }
        DivTextAlignmentVertical divTextAlignmentVerticalD = bVar.d();
        if (divTextAlignmentVerticalD == null) {
            divTextAlignmentVerticalD = DivTextAlignmentVertical.BASELINE;
        }
        int iE = bVar.e();
        if (iE != 0) {
            Integer numM = bVar.m();
            spannable.setSpan(new fd0(iE, (numM == null && (numM = ahaVar.e()) == null) ? 0 : numM.intValue()), iN, iF, 33);
        } else if (divTextAlignmentVerticalD != DivTextAlignmentVertical.BASELINE) {
            Integer numI = bVar.i();
            spannable.setSpan(new tob(numI != null ? numI.intValue() : 0, BaseDivViewExtensionsKt.M0(divTextAlignmentVerticalD), new oj8() {
                @Override
                public final Object get() {
                    return SpannedTextBuilder.j(textView);
                }
            }), iN, iF, 33);
        }
        Integer numI2 = bVar.i();
        if (numI2 != null) {
            int iIntValue = numI2.intValue();
            Integer numM2 = bVar.m();
            spannable.setSpan(new a34(iIntValue, (numM2 == null && (numM2 = ahaVar.e()) == null) ? 0 : numM2.intValue()), iN, iF, 33);
        }
        String strH = bVar.h();
        if (strH != null) {
            spannable.setSpan(new v24(strH), iN, iF, 33);
        }
        Integer numP = bVar.p();
        if (numP != null) {
            spannable.setSpan(new TextColorSpan(numP.intValue()), iN, iF, 33);
        }
        Double dL = bVar.l();
        if (dL != null) {
            spannable.setSpan(new lk5((float) dL.doubleValue()), iN, iF, 33);
        }
        DivLineStyle divLineStyleO = bVar.o();
        if (divLineStyleO != null) {
            int i = c.b[divLineStyleO.ordinal()];
            if (i == 1) {
                spannable.setSpan(new StrikethroughSpan(), iN, iF, 33);
            } else if (i == 2) {
                spannable.setSpan(new NoStrikethroughSpan(), iN, iF, 33);
            }
        }
        DivLineStyle divLineStyleU = bVar.u();
        if (divLineStyleU != null) {
            int i2 = c.b[divLineStyleU.ordinal()];
            if (i2 == 1) {
                spannable.setSpan(new UnderlineSpan(), iN, iF, 33);
            } else if (i2 == 2) {
                spannable.setSpan(new NoUnderlineSpan(), iN, iF, 33);
            }
        }
        if (bVar.g() != null || bVar.j() != null || bVar.k() != null) {
            int iF0 = (bVar.j() == null && bVar.k() == null) ? BaseDivViewExtensionsKt.f0(ahaVar.c(), ahaVar.d()) : BaseDivViewExtensionsKt.f0(bVar.j(), bVar.k());
            cu2 cu2Var = this.a;
            String strG = bVar.g();
            if (strG == null) {
                strG = ahaVar.a();
            }
            spannable.setSpan(new idb(cu2Var.a(strG, iF0)), iN, iF, 33);
        }
        if (bVar.m() != null || bVar.r() != null) {
            int i3 = y45.e(bVar.m(), ahaVar.e()) ? 18 : 33;
            Integer numR = bVar.r();
            int iIntValue2 = numR != null ? numR.intValue() : 0;
            Integer numM3 = bVar.m();
            int iIntValue3 = numM3 != null ? numM3.intValue() : 0;
            Integer numT = bVar.t();
            int iIntValue4 = numT != null ? numT.intValue() : iN;
            Integer numS = bVar.s();
            spannable.setSpan(new dl5(iIntValue2, iIntValue3, iIntValue4, numS != null ? numS.intValue() : iF), iN, iF, i3);
        }
        of9 of9VarQ = bVar.q();
        if (of9VarQ != null) {
            spannable.setSpan(new pf9(of9VarQ), iN, iF, 33);
        }
    }

    public final Spanned k(com.yandex.div.core.view2.a aVar, TextView textView, DivText divText, DivText.Ellipsis ellipsis, e74 e74Var) {
        y45.j(aVar, "bindingContext");
        y45.j(textView, "textView");
        y45.j(divText, "divText");
        y45.j(ellipsis, "ellipsis");
        return n(aVar, textView, divText, (String) ellipsis.d.b(aVar.b()), ellipsis.c, ellipsis.b, ellipsis.a, e74Var);
    }

    public final Spanned l(com.yandex.div.core.view2.a aVar, TextView textView, DivText divText) {
        y45.j(aVar, "bindingContext");
        y45.j(textView, "textView");
        y45.j(divText, "divText");
        return n(aVar, textView, divText, (String) divText.W.b(aVar.b()), null, null, null, null);
    }

    public final Spanned m(com.yandex.div.core.view2.a aVar, TextView textView, DivText divText, e74 e74Var) {
        y45.j(aVar, "bindingContext");
        y45.j(textView, "textView");
        y45.j(divText, "divText");
        return n(aVar, textView, divText, (String) divText.W.b(aVar.b()), divText.Q, divText.F, divText.d, e74Var);
    }

    public final Spanned n(com.yandex.div.core.view2.a aVar, TextView textView, DivText divText, String str, List list, List list2, List list3, e74 e74Var) {
        SpannableStringBuilder spannableStringBuilder;
        int i;
        int iG;
        int i2;
        Context context = textView.getContext();
        Div2View div2ViewA = aVar.a();
        oj3 oj3VarB = aVar.b();
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(str.length() == 0 ? "\u200b" : str);
        y45.i(context, "context");
        aha ahaVarQ = q(context, aVar, divText, str);
        int iG2 = ahaVarQ.g();
        List listU = u(context, aVar, ahaVarQ, list);
        List listT = t(ahaVarQ, list2, oj3VarB);
        boolean z = false;
        if (this.d) {
            spannableStringBuilder2.setSpan(new el5(), 0, spannableStringBuilder2.length(), 33);
        }
        DivLineHeightTextView divLineHeightTextView = textView instanceof DivLineHeightTextView ? (DivLineHeightTextView) textView : null;
        if (divLineHeightTextView != null) {
            divLineHeightTextView.clearImageSpans$div_release();
            DivTextRangesBackgroundHelper textRoundedBgHelper = divLineHeightTextView.getTextRoundedBgHelper();
            if (textRoundedBgHelper != null) {
                textRoundedBgHelper.j();
            }
        }
        Iterator it = listU.iterator();
        while (it.hasNext()) {
            i(textView, spannableStringBuilder2, ahaVarQ, (com.yandex.div.core.view2.spannable.b) it.next());
        }
        if (list != null) {
            List<DivText.Range> list4 = list;
            if (!(list4 instanceof Collection) || !list4.isEmpty()) {
                for (DivText.Range range : list4) {
                    if (range.a != null || range.c != null || range.e != null) {
                        if (list == null) {
                            break;
                        }
                        Iterator it2 = list.iterator();
                        while (it2.hasNext()) {
                            DivText.Range range2 = (DivText.Range) it2.next();
                            long jLongValue = ((Number) range2.q.b(oj3VarB)).longValue();
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
                            int iG3 = wn8.g(i, iG2);
                            Expression expression = range2.f;
                            if (expression != null) {
                                long jLongValue2 = ((Number) expression.b(oj3VarB)).longValue();
                                long j2 = jLongValue2 >> 31;
                                if (j2 == 0 || j2 == -1) {
                                    i2 = (int) jLongValue2;
                                } else {
                                    ae5 ae5Var2 = ae5.a;
                                    if (xi.o()) {
                                        xi.i("Unable convert '" + jLongValue2 + "' to Int");
                                    }
                                    i2 = jLongValue2 <= 0 ? Integer.MIN_VALUE : Integer.MAX_VALUE;
                                }
                                iG = wn8.g(i2, iG2);
                            } else {
                                iG = iG2;
                            }
                            List list5 = listT;
                            int i3 = iG;
                            SpannableStringBuilder spannableStringBuilder3 = spannableStringBuilder2;
                            e(this, aVar, textView, spannableStringBuilder2, iG3, i3, range2.a, false, 64, null);
                            f(aVar, textView, spannableStringBuilder3, iG3, i3, range2.e, range2.c);
                            listT = list5;
                            spannableStringBuilder2 = spannableStringBuilder3;
                            oj3VarB = oj3VarB;
                            z = false;
                            ahaVarQ = ahaVarQ;
                            iG2 = iG2;
                        }
                        break;
                    }
                }
            }
        }
        boolean z2 = z;
        List list6 = listT;
        aha ahaVar = ahaVarQ;
        SpannableStringBuilder spannableStringBuilder4 = spannableStringBuilder2;
        oj3 oj3Var = oj3VarB;
        d(aVar, textView, spannableStringBuilder4, 0, spannableStringBuilder4.length(), list3, false);
        int size = list6.size() - 1;
        if (size >= 0) {
            while (true) {
                int i4 = size - 1;
                List list7 = list6;
                DivText.Image image = (DivText.Image) list7.get(size);
                int iS = s(ahaVar.g(), image, oj3Var);
                int iS2 = size > 0 ? s(ahaVar.g(), (DivText.Image) list7.get(size - 1), oj3Var) : Integer.MIN_VALUE;
                SpannableStringBuilder spannableStringBuilder5 = spannableStringBuilder4;
                spannableStringBuilder5.insert(iS, (CharSequence) "#");
                list6 = list7;
                spannableStringBuilder = spannableStringBuilder5;
                com.yandex.div.core.view2.spannable.a aVarG = g(aVar, textView, spannableStringBuilder5, ahaVar, image);
                boolean z3 = iS2 + 1 == iS ? true : z2;
                boolean z4 = (iS <= 0 || kotlin.text.a.c(spannableStringBuilder.charAt(iS + (-1)))) ? z2 : true;
                if (!z3 && z4) {
                    spannableStringBuilder.insert(iS, (CharSequence) "\u2060");
                }
                jn5 jn5VarLoadImage = this.b.loadImage(((Uri) image.i.b(oj3Var)).toString(), new b(aVar, image, aVarG, spannableStringBuilder, e74Var));
                y45.i(jn5VarLoadImage, "imageLoader.loadImage(\n …xtConsumer)\n            )");
                div2ViewA.addLoadReference(jn5VarLoadImage, textView);
                if (i4 < 0) {
                    break;
                }
                size = i4;
                spannableStringBuilder4 = spannableStringBuilder;
            }
        } else {
            spannableStringBuilder = spannableStringBuilder4;
        }
        if (e74Var != null) {
            e74Var.invoke(spannableStringBuilder);
        }
        return spannableStringBuilder;
    }

    public final of9 o(Context context, com.yandex.div.core.view2.a aVar, DivShadow divShadow, int i) {
        if (divShadow == null) {
            return null;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        oj3 oj3VarB = aVar.b();
        Number number = (Number) divShadow.b.b(oj3VarB);
        y45.i(displayMetrics, "displayMetrics");
        float fM = BaseDivViewExtensionsKt.M(number, displayMetrics);
        float fG0 = BaseDivViewExtensionsKt.G0(divShadow.d.a, displayMetrics, oj3VarB);
        float fG1 = BaseDivViewExtensionsKt.G0(divShadow.d.b, displayMetrics, oj3VarB);
        Paint paint = this.c;
        paint.setColor(((Number) divShadow.c.b(oj3VarB)).intValue());
        paint.setAlpha((int) (((Number) divShadow.a.b(oj3VarB)).doubleValue() * ((double) (i >>> 24))));
        return new of9(fG0, fG1, fM, paint.getColor());
    }

    public final com.yandex.div.core.view2.spannable.b p(Context context, com.yandex.div.core.view2.a aVar, aha ahaVar, DivText.Range range, int i, int i2) {
        Integer numValueOf;
        Integer numValueOf2;
        Double dValueOf;
        Integer numValueOf3;
        int i3;
        int i4;
        int i5;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        oj3 oj3VarB = aVar.b();
        int iB = ahaVar.b();
        Expression expression = range.i;
        if (expression != null) {
            long jLongValue = ((Number) expression.b(oj3VarB)).longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                i5 = (int) jLongValue;
            } else {
                ae5 ae5Var = ae5.a;
                if (xi.o()) {
                    xi.i("Unable convert '" + jLongValue + "' to Int");
                }
                i5 = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            numValueOf = Integer.valueOf(i5);
        } else {
            numValueOf = null;
        }
        DivSizeUnit divSizeUnit = (DivSizeUnit) range.j.b(oj3VarB);
        Expression expression2 = range.b;
        DivTextAlignmentVertical divTextAlignmentVertical = expression2 != null ? (DivTextAlignmentVertical) expression2.b(oj3VarB) : null;
        Number number = (Number) range.d.b(oj3VarB);
        y45.i(displayMetrics, "displayMetrics");
        int iR0 = BaseDivViewExtensionsKt.R0(number, displayMetrics, divSizeUnit);
        Expression expression3 = range.g;
        String str = expression3 != null ? (String) expression3.b(oj3VarB) : null;
        Expression expression4 = range.h;
        String str2 = expression4 != null ? (String) expression4.b(oj3VarB) : null;
        Integer numValueOf4 = numValueOf != null ? Integer.valueOf(BaseDivViewExtensionsKt.R0(numValueOf, displayMetrics, divSizeUnit)) : null;
        Expression expression5 = range.l;
        DivFontWeight divFontWeight = expression5 != null ? (DivFontWeight) expression5.b(oj3VarB) : null;
        Expression expression6 = range.m;
        if (expression6 != null) {
            long jLongValue2 = ((Number) expression6.b(oj3VarB)).longValue();
            long j2 = jLongValue2 >> 31;
            if (j2 == 0 || j2 == -1) {
                i4 = (int) jLongValue2;
            } else {
                ae5 ae5Var2 = ae5.a;
                if (xi.o()) {
                    xi.i("Unable convert '" + jLongValue2 + "' to Int");
                }
                i4 = jLongValue2 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            numValueOf2 = Integer.valueOf(i4);
        } else {
            numValueOf2 = null;
        }
        Expression expression7 = range.n;
        if (expression7 != null) {
            double dDoubleValue = ((Number) expression7.b(oj3VarB)).doubleValue();
            if (numValueOf != null) {
                iB = numValueOf.intValue();
            }
            dValueOf = Double.valueOf(dDoubleValue / ((double) iB));
        } else {
            dValueOf = null;
        }
        Expression expression8 = range.o;
        Integer numValueOf5 = expression8 != null ? Integer.valueOf(BaseDivViewExtensionsKt.Q0(Long.valueOf(((Number) expression8.b(oj3VarB)).longValue()), displayMetrics, divSizeUnit)) : null;
        Expression expression9 = range.r;
        DivLineStyle divLineStyle = expression9 != null ? (DivLineStyle) expression9.b(oj3VarB) : null;
        Expression expression10 = range.s;
        Integer num = expression10 != null ? (Integer) expression10.b(oj3VarB) : null;
        of9 of9VarO = o(context, aVar, range.t, ahaVar.f());
        Expression expression11 = range.u;
        if (expression11 != null) {
            long jLongValue3 = ((Number) expression11.b(oj3VarB)).longValue();
            long j3 = jLongValue3 >> 31;
            if (j3 == 0 || j3 == -1) {
                i3 = (int) jLongValue3;
            } else {
                ae5 ae5Var3 = ae5.a;
                if (xi.o()) {
                    xi.i("Unable convert '" + jLongValue3 + "' to Int");
                }
                i3 = jLongValue3 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            numValueOf3 = Integer.valueOf(BaseDivViewExtensionsKt.R0(Integer.valueOf(i3), displayMetrics, divSizeUnit));
        } else {
            numValueOf3 = null;
        }
        Integer numValueOf6 = range.u != null ? Integer.valueOf(i) : null;
        Integer numValueOf7 = range.u != null ? Integer.valueOf(i2) : null;
        Expression expression12 = range.v;
        return new com.yandex.div.core.view2.spannable.b(i, i2, divTextAlignmentVertical, iR0, str, str2, numValueOf4, divSizeUnit, divFontWeight, numValueOf2, dValueOf, numValueOf5, divLineStyle, num, of9VarO, numValueOf3, numValueOf6, numValueOf7, expression12 != null ? (DivLineStyle) expression12.b(oj3VarB) : null);
    }

    public final aha q(Context context, com.yandex.div.core.view2.a aVar, DivText divText, String str) {
        int i;
        Integer numValueOf;
        Integer numValueOf2;
        int i2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        oj3 oj3VarB = aVar.b();
        long jLongValue = ((Number) divText.v.b(oj3VarB)).longValue();
        long j = jLongValue >> 31;
        int i3 = Integer.MIN_VALUE;
        if (j == 0 || j == -1) {
            i = (int) jLongValue;
        } else {
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i("Unable convert '" + jLongValue + "' to Int");
            }
            i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        }
        int i4 = i;
        DivSizeUnit divSizeUnit = (DivSizeUnit) divText.w.b(oj3VarB);
        Integer numValueOf3 = Integer.valueOf(i4);
        y45.i(displayMetrics, "displayMetrics");
        int iR0 = BaseDivViewExtensionsKt.R0(numValueOf3, displayMetrics, divSizeUnit);
        DivFontWeight divFontWeight = (DivFontWeight) divText.y.b(oj3VarB);
        Expression expression = divText.z;
        if (expression != null) {
            long jLongValue2 = ((Number) expression.b(oj3VarB)).longValue();
            long j2 = jLongValue2 >> 31;
            if (j2 == 0 || j2 == -1) {
                i2 = (int) jLongValue2;
            } else {
                ae5 ae5Var2 = ae5.a;
                if (xi.o()) {
                    xi.i("Unable convert '" + jLongValue2 + "' to Int");
                }
                i2 = jLongValue2 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            numValueOf = Integer.valueOf(i2);
        } else {
            numValueOf = null;
        }
        Expression expression2 = divText.t;
        String str2 = expression2 != null ? (String) expression2.b(oj3VarB) : null;
        Expression expression3 = divText.I;
        if (expression3 != null) {
            long jLongValue3 = ((Number) expression3.b(oj3VarB)).longValue();
            long j3 = jLongValue3 >> 31;
            if (j3 == 0 || j3 == -1) {
                i3 = (int) jLongValue3;
            } else {
                ae5 ae5Var3 = ae5.a;
                if (xi.o()) {
                    xi.i("Unable convert '" + jLongValue3 + "' to Int");
                }
                if (jLongValue3 > 0) {
                    i3 = Integer.MAX_VALUE;
                }
            }
            numValueOf2 = Integer.valueOf(BaseDivViewExtensionsKt.R0(Integer.valueOf(i3), displayMetrics, divSizeUnit));
        } else {
            numValueOf2 = null;
        }
        return new aha(str, iR0, i4, divSizeUnit, str2, divFontWeight, numValueOf, numValueOf2, ((Number) divText.Z.b(oj3VarB)).intValue());
    }

    public final List r(com.yandex.div.core.view2.a aVar, Spannable spannable, int i) {
        p08[] p08VarArr = (p08[]) spannable.getSpans(i, i + 1, p08.class);
        if (p08VarArr.length > 1) {
            eg2.f(aVar.a(), new Throwable("Two or more clickable ranges intersect."));
        }
        p08 p08Var = (p08) hi.Y(p08VarArr);
        if (p08Var != null) {
            return p08Var.b();
        }
        return null;
    }

    public final int s(int i, DivText.Image image, oj3 oj3Var) {
        long jLongValue = ((Number) image.f.b(oj3Var)).longValue();
        int i2 = c.a[((DivText.Image.IndexingDirection) image.d.b(oj3Var)).ordinal()];
        if (i2 == 1) {
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                return (int) jLongValue;
            }
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i("Unable convert '" + jLongValue + "' to Int");
            }
            if (jLongValue <= 0) {
                return Integer.MIN_VALUE;
            }
        } else {
            if (i2 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            long j2 = ((long) i) - jLongValue;
            long j3 = j2 >> 31;
            if (j3 == 0 || j3 == -1) {
                return (int) j2;
            }
            ae5 ae5Var2 = ae5.a;
            if (xi.o()) {
                xi.i("Unable convert '" + j2 + "' to Int");
            }
            if (j2 <= 0) {
                return Integer.MIN_VALUE;
            }
        }
        return Integer.MAX_VALUE;
    }

    public final List t(final aha ahaVar, List list, final oj3 oj3Var) {
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((Number) ((DivText.Image) obj).f.b(oj3Var)).longValue() <= ahaVar.g()) {
                    arrayList.add(obj);
                }
            }
            List listT0 = i81.T0(arrayList, new Comparator() {
                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public final int compare(T t, T t2) {
                    return kotlin.comparisons.a.d(Integer.valueOf(this.this$0.s(ahaVar.g(), (DivText.Image) t, oj3Var)), Integer.valueOf(this.this$0.s(ahaVar.g(), (DivText.Image) t2, oj3Var)));
                }
            });
            if (listT0 != null) {
                return listT0;
            }
        }
        return y71.k();
    }

    public final List u(Context context, com.yandex.div.core.view2.a aVar, aha ahaVar, List list) {
        int i;
        int i2;
        int iG;
        int i3;
        List list2;
        if (ahaVar.e() == null && ((list2 = list) == null || list2.isEmpty())) {
            return y71.k();
        }
        oj3 oj3VarB = aVar.b();
        int iG2 = ahaVar.g();
        int size = list != null ? list.size() : 0;
        TreeSet treeSetE = xe9.e(new Integer[0]);
        ArrayList arrayList = new ArrayList(size + 1);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                DivText.Range range = (DivText.Range) it.next();
                long jLongValue = ((Number) range.q.b(oj3VarB)).longValue();
                long j = jLongValue >> 31;
                if (j == 0 || j == -1) {
                    i2 = (int) jLongValue;
                } else {
                    ae5 ae5Var = ae5.a;
                    if (xi.o()) {
                        xi.i("Unable convert '" + jLongValue + "' to Int");
                    }
                    i2 = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                }
                int iG3 = wn8.g(i2, iG2);
                Expression expression = range.f;
                if (expression != null) {
                    long jLongValue2 = ((Number) expression.b(oj3VarB)).longValue();
                    long j2 = jLongValue2 >> 31;
                    if (j2 == 0 || j2 == -1) {
                        i3 = (int) jLongValue2;
                    } else {
                        ae5 ae5Var2 = ae5.a;
                        if (xi.o()) {
                            xi.i("Unable convert '" + jLongValue2 + "' to Int");
                        }
                        i3 = jLongValue2 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                    }
                    iG = wn8.g(i3, iG2);
                } else {
                    iG = iG2;
                }
                if (iG3 < iG) {
                    com.yandex.div.core.view2.spannable.b bVarP = p(context, aVar, ahaVar, range, iG3, iG);
                    if (!bVarP.v()) {
                        treeSetE.add(Integer.valueOf(iG3));
                        treeSetE.add(Integer.valueOf(iG));
                        arrayList.add(bVarP);
                    }
                }
            }
        }
        c81.A(arrayList);
        Integer numE = ahaVar.e();
        if (numE != null) {
            int iIntValue = numE.intValue();
            i = 0;
            treeSetE.add(0);
            treeSetE.add(Integer.valueOf(iG2));
            arrayList.add(0, com.yandex.div.core.view2.spannable.b.u.b(0, iG2, iIntValue));
        } else {
            i = 0;
        }
        if (arrayList.isEmpty()) {
            return y71.k();
        }
        List listB1 = i81.b1(treeSetE);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int iIntValue2 = ((Number) i81.o0(listB1)).intValue();
        if (listB1.size() == 1) {
            com.yandex.div.core.view2.spannable.b bVarA = com.yandex.div.core.view2.spannable.b.u.a(iIntValue2, iIntValue2);
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                bVarA = bVarA.w((com.yandex.div.core.view2.spannable.b) it2.next(), iIntValue2, iIntValue2);
            }
            arrayList2.add(bVarA);
            return arrayList2;
        }
        int size2 = listB1.size();
        int i4 = 1;
        while (i4 < size2) {
            int iIntValue3 = ((Number) listB1.get(i4)).intValue();
            int size3 = arrayList.size();
            for (int i5 = i; i5 < size3; i5++) {
                Object obj = arrayList.get(i5);
                y45.i(obj, "overlappingSpans[j]");
                com.yandex.div.core.view2.spannable.b bVar = (com.yandex.div.core.view2.spannable.b) obj;
                if (iIntValue3 < bVar.n()) {
                    break;
                }
                if (iIntValue3 > bVar.n() && iIntValue3 <= bVar.f()) {
                    arrayList3.add(bVar);
                }
            }
            if (!arrayList3.isEmpty()) {
                com.yandex.div.core.view2.spannable.b bVarA2 = com.yandex.div.core.view2.spannable.b.u.a(iIntValue2, iIntValue3);
                Iterator it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    bVarA2 = bVarA2.w((com.yandex.div.core.view2.spannable.b) it3.next(), iIntValue2, iIntValue3);
                }
                arrayList2.add(bVarA2);
            }
            arrayList3.clear();
            i4++;
            iIntValue2 = iIntValue3;
        }
        return arrayList2;
    }
}
