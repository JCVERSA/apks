package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.text.Layout;
import android.util.DisplayMetrics;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivCloudBackground;
import com.yandex.div2.DivEdgeInsets;
import com.yandex.div2.DivSizeUnit;
import com.yandex.div2.DivTextRangeBackground;
import com.yandex.div2.DivTextRangeBorder;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class z31 extends zs2 {
    public static final a e = new a(null);
    public final Context a;
    public final oj3 b;
    public final Path c;
    public final Paint d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public z31(Context context, oj3 oj3Var) {
        y45.j(context, "context");
        y45.j(oj3Var, "expressionResolver");
        this.a = context;
        this.b = oj3Var;
        this.c = new Path();
        this.d = new Paint();
    }

    @Override
    public void a(Canvas canvas, Layout layout, int i, int i2, int i3, int i4, DivTextRangeBorder divTextRangeBorder, DivTextRangeBackground divTextRangeBackground) {
        y45.j(canvas, "canvas");
        y45.j(layout, TtmlNode.TAG_LAYOUT);
        Object objB = divTextRangeBackground != null ? divTextRangeBackground.b() : null;
        DivCloudBackground divCloudBackground = objB instanceof DivCloudBackground ? (DivCloudBackground) objB : null;
        if (divCloudBackground == null) {
            return;
        }
        l(canvas, layout, i, i2, i3, i4, divCloudBackground);
    }

    public final int[] f(Rect[] rectArr, int i, int i2) {
        int i3 = (i + i2) - 1;
        if (i2 == 1) {
            return new int[]{rectArr[i3].width(), -rectArr[i3].height()};
        }
        Rect rect = rectArr[i3];
        int i4 = rect.left;
        int i5 = rect.bottom;
        int[] iArr = new int[i2 * 2];
        int i6 = 0;
        if (i <= i3) {
            int i7 = 0;
            while (true) {
                Rect rect2 = rectArr[i3];
                int i8 = rect2.left;
                if (i8 != i4) {
                    iArr[i7 * 2] = i8 - i4;
                    i7++;
                    i4 = i8;
                }
                int i9 = rect2.top - i5;
                for (int i10 = i3 - 1; i10 >= i; i10--) {
                    Rect rect3 = rectArr[i10];
                    int i11 = rect3.bottom;
                    int i12 = rect2.top;
                    if (i11 <= i12) {
                        break;
                    }
                    if (rect3.left <= rect2.left) {
                        i9 -= i12 - i11;
                        break;
                    }
                }
                int iG = wn8.g(i9, 0);
                int i13 = (i7 * 2) + 1;
                iArr[i13] = iArr[i13] + iG;
                i5 += iG;
                if (i3 == i) {
                    break;
                }
                i3--;
            }
            i6 = i7;
        }
        iArr[i6 * 2] = rectArr[i].width();
        int[] iArrCopyOf = Arrays.copyOf(iArr, (i6 + 1) * 2);
        y45.i(iArrCopyOf, "copyOf(...)");
        return iArrCopyOf;
    }

    public final Rect[] g(Layout layout, int i, int i2, int i3, int i4, int i5, Rect rect) {
        int i6 = i2 - i;
        int i7 = i6 + 1;
        if (i7 == 0) {
            return new Rect[0];
        }
        Rect[] rectArr = new Rect[i7];
        int i8 = 0;
        while (i8 < i7) {
            int i9 = i + i8;
            rectArr[i8] = new Rect((i8 == 0 ? i3 : s86.c(layout.getLineLeft(i + i8))) - rect.left, layout.getLineTop(i9) - rect.top, (i8 == i6 ? i4 : s86.c(layout.getLineRight(i9))) + rect.right, layout.getLineBottom(i9) + rect.bottom);
            i8++;
        }
        j(rectArr);
        k(rectArr);
        int[] iArr = new int[i7];
        int[] iArr2 = new int[i7];
        for (int i10 = 0; i10 < i7; i10++) {
            Rect rect2 = rectArr[i10];
            iArr[i10] = -rect2.left;
            iArr2[i10] = rect2.right;
        }
        int i11 = i5 * 2;
        i(iArr, i11);
        i(iArr2, i11);
        for (int i12 = 0; i12 < i7; i12++) {
            Rect rect3 = rectArr[i12];
            rect3.left = -iArr[i12];
            rect3.right = iArr2[i12];
        }
        return rectArr;
    }

    public final int[] h(Rect[] rectArr, int i, int i2) {
        int i3 = i;
        int i4 = (i3 + i2) - 1;
        if (i2 == 1) {
            return new int[]{-rectArr[i3].width(), rectArr[i3].height()};
        }
        Rect rect = rectArr[i3];
        int i5 = rect.right;
        int i6 = rect.top;
        int[] iArr = new int[i2 * 2];
        int i7 = 0;
        if (i3 <= i4) {
            int i8 = 0;
            while (true) {
                Rect rect2 = rectArr[i3];
                int i9 = rect2.right;
                if (i9 != i5) {
                    iArr[i8 * 2] = i9 - i5;
                    i8++;
                    i5 = i9;
                }
                int i10 = rect2.bottom - i6;
                int i11 = i3 + 1;
                for (int i12 = i11; i12 <= i4; i12++) {
                    Rect rect3 = rectArr[i12];
                    int i13 = rect3.top;
                    int i14 = rect2.bottom;
                    if (i13 >= i14) {
                        break;
                    }
                    if (rect3.right >= rect2.right) {
                        i10 -= i14 - i13;
                        break;
                    }
                }
                int iD = wn8.d(i10, 0);
                int i15 = (i8 * 2) + 1;
                iArr[i15] = iArr[i15] + iD;
                i6 += iD;
                if (i3 == i4) {
                    break;
                }
                i3 = i11;
            }
            i7 = i8;
        }
        iArr[i7 * 2] = -rectArr[i4].width();
        int[] iArrCopyOf = Arrays.copyOf(iArr, (i7 + 1) * 2);
        y45.i(iArrCopyOf, "copyOf(...)");
        return iArrCopyOf;
    }

    public final void i(int[] iArr, int i) {
        boolean z;
        int i2 = 0;
        do {
            s15 s15VarZ = i2 % 2 == 0 ? hi.Z(iArr) : wn8.o(hi.Z(iArr));
            int iB = s15VarZ.b();
            int iC = s15VarZ.c();
            int iF = s15VarZ.f();
            if ((iF > 0 && iB <= iC) || (iF < 0 && iC <= iB)) {
                z = false;
                while (true) {
                    int i3 = iB == 0 ? 0 : iArr[iB - 1] - iArr[iB];
                    int i4 = iB == hi.b0(iArr) ? 0 : iArr[iB + 1] - iArr[iB];
                    if ((i3 <= 0 || i3 >= i) && (i4 <= 0 || i4 >= i)) {
                        if (iB != 0 && i3 < 0 && Math.abs(i3) < i) {
                            iArr[iB - 1] = iArr[iB];
                            z = true;
                        }
                        if (iB != hi.b0(iArr) && i4 < 0 && Math.abs(i4) < i) {
                            iArr[iB + 1] = iArr[iB];
                            z = true;
                        }
                    }
                    if (iB == iC) {
                        break;
                    } else {
                        iB += iF;
                    }
                }
            } else {
                z = false;
            }
            i2++;
        } while (z);
    }

    public final void j(Rect[] rectArr) {
        int i;
        int length = rectArr.length;
        int i2 = ((Rect) hi.W(rectArr)).left;
        int i3 = ((Rect) hi.W(rectArr)).top;
        int length2 = rectArr.length;
        int i4 = 0;
        while (i4 < length2) {
            Rect rect = rectArr[i4];
            int i5 = rect.bottom - i3;
            i4++;
            int i6 = i4;
            while (true) {
                if (i6 < length) {
                    Rect rect2 = rectArr[i6];
                    int i7 = rect2.top;
                    int i8 = rect.bottom;
                    if (i7 < i8) {
                        i = rect2.left;
                        if (i <= rect.left) {
                            i5 -= i8 - i7;
                            break;
                        }
                        i6++;
                    }
                }
                i = Integer.MIN_VALUE;
                break;
            }
            if (i5 <= 0) {
                rect.left = Math.max(i2, i);
                i5 = 0;
            } else {
                i2 = rect.left;
            }
            i3 += i5;
        }
    }

    public final void k(Rect[] rectArr) {
        int i;
        int length = rectArr.length;
        int i2 = ((Rect) hi.W(rectArr)).right;
        int i3 = ((Rect) hi.W(rectArr)).top;
        int length2 = rectArr.length;
        int i4 = 0;
        while (i4 < length2) {
            Rect rect = rectArr[i4];
            int i5 = rect.bottom - i3;
            i4++;
            int i6 = i4;
            while (true) {
                if (i6 < length) {
                    Rect rect2 = rectArr[i6];
                    int i7 = rect2.top;
                    int i8 = rect.bottom;
                    if (i7 < i8) {
                        i = rect2.right;
                        if (i >= rect.right) {
                            i5 -= i8 - i7;
                            break;
                        }
                        i6++;
                    }
                }
                i = Integer.MAX_VALUE;
                break;
            }
            if (i5 <= 0) {
                rect.right = Math.min(i2, i);
                i5 = 0;
            } else {
                i2 = rect.right;
            }
            i3 += i5;
        }
    }

    public final void l(Canvas canvas, Layout layout, int i, int i2, int i3, int i4, DivCloudBackground divCloudBackground) {
        DivSizeUnit divSizeUnit;
        Expression expression;
        Expression expression2;
        Expression expression3;
        Expression expression4;
        Expression expression5;
        DisplayMetrics displayMetricsN = n();
        int iIntValue = ((Number) divCloudBackground.a.b(this.b)).intValue();
        int iK = BaseDivViewExtensionsKt.K((Long) divCloudBackground.b.b(this.b), displayMetricsN);
        DivEdgeInsets divEdgeInsets = divCloudBackground.c;
        if (divEdgeInsets == null || (expression5 = divEdgeInsets.g) == null || (divSizeUnit = (DivSizeUnit) expression5.b(this.b)) == null) {
            divSizeUnit = DivSizeUnit.DP;
        }
        DivEdgeInsets divEdgeInsets2 = divCloudBackground.c;
        int iQ0 = (divEdgeInsets2 == null || (expression4 = divEdgeInsets2.c) == null) ? 0 : BaseDivViewExtensionsKt.Q0(Long.valueOf(((Number) expression4.b(this.b)).longValue()), displayMetricsN, divSizeUnit);
        DivEdgeInsets divEdgeInsets3 = divCloudBackground.c;
        int iQ1 = (divEdgeInsets3 == null || (expression3 = divEdgeInsets3.f) == null) ? 0 : BaseDivViewExtensionsKt.Q0(Long.valueOf(((Number) expression3.b(this.b)).longValue()), displayMetricsN, divSizeUnit);
        DivEdgeInsets divEdgeInsets4 = divCloudBackground.c;
        int iQ2 = (divEdgeInsets4 == null || (expression2 = divEdgeInsets4.d) == null) ? 0 : BaseDivViewExtensionsKt.Q0(Long.valueOf(((Number) expression2.b(this.b)).longValue()), displayMetricsN, divSizeUnit);
        DivEdgeInsets divEdgeInsets5 = divCloudBackground.c;
        Rect[] rectArrG = g(layout, i, i2, i3, i4, iK, new Rect(iQ0, iQ1, iQ2, (divEdgeInsets5 == null || (expression = divEdgeInsets5.a) == null) ? 0 : BaseDivViewExtensionsKt.Q0(Long.valueOf(((Number) expression.b(this.b)).longValue()), displayMetricsN, divSizeUnit)));
        if (rectArrG.length < 2) {
            m(canvas, rectArrG, 0, rectArrG.length, iK, iIntValue);
            return;
        }
        int length = rectArrG.length - 1;
        int i5 = 0;
        int i6 = 0;
        int i7 = 1;
        while (i5 < length) {
            int i8 = i5 + 1;
            if (rectArrG[i5].left > rectArrG[i8].right) {
                m(canvas, rectArrG, i6, i7, iK, iIntValue);
                i7 = 0;
                i6 = i8;
            }
            i7++;
            i5 = i8;
        }
        m(canvas, rectArrG, i6, i7, iK, iIntValue);
    }

    public final void m(Canvas canvas, Rect[] rectArr, int i, int i2, int i3, int i4) {
        float fMin;
        boolean z = true;
        if (i2 < 1) {
            return;
        }
        Rect rect = rectArr[i];
        Rect rect2 = rectArr[(i + i2) - 1];
        int[] iArrF = f(rectArr, i, i2);
        int[] iArrH = h(rectArr, i, i2);
        this.c.reset();
        float f = i3;
        float f2 = 2.0f;
        float fMin2 = Math.min(f, Math.min(rect.width() / 2.0f, iArrH[1] / 2.0f));
        this.c.moveTo(rect.right - fMin2, rect.top);
        this.c.rQuadTo(fMin2 * 0.9f, fMin2 * 0.1f, fMin2, fMin2);
        boolean z2 = false;
        int i5 = 2;
        int iC = xh8.c(0, iArrH.length - 1, 2);
        float f3 = 0.0f;
        if (iC >= 0) {
            int i6 = 0;
            while (true) {
                boolean z3 = i6 >= iArrH.length - i5 ? z : z2;
                float f4 = iArrH[i6];
                float f5 = iArrH[i6 + 1];
                float f6 = z3 ? f3 : iArrH[i6 + 3];
                fMin = Math.min(f, Math.min(Math.abs(f4) / f2, f5 / f2));
                this.c.rLineTo(f3, (f5 - fMin2) - fMin);
                this.c.rQuadTo(Math.signum(f4) * fMin2 * 0.1f, fMin * 0.9f, fMin * Math.signum(f4), fMin);
                if (!z3) {
                    fMin2 = Math.min(f, Math.min(Math.abs(f4) / 2.0f, f6 / 2.0f));
                    this.c.rLineTo(f4 - ((fMin2 + fMin) * Math.signum(f4)), 0.0f);
                    this.c.rQuadTo(fMin2 * 0.9f * Math.signum(f4), fMin2 * 0.1f, Math.signum(f4) * fMin2, fMin2);
                }
                if (i6 == iC) {
                    break;
                }
                i6 += 2;
                z = true;
                f2 = 2.0f;
                z2 = false;
                i5 = 2;
                f3 = 0.0f;
            }
        } else {
            fMin = 0.0f;
        }
        boolean z4 = true;
        float fMin3 = Math.min(f, Math.min(rect2.width() / 2.0f, (-iArrF[1]) / 2.0f));
        this.c.rLineTo((-rect2.width()) + fMin + fMin3, 0.0f);
        float f7 = -0.9f;
        float f8 = -fMin3;
        this.c.rQuadTo(fMin3 * (-0.9f), fMin3 * (-0.1f), f8, f8);
        boolean z5 = false;
        int i7 = 2;
        int iC2 = xh8.c(0, iArrF.length - 1, 2);
        if (iC2 >= 0) {
            int i8 = 0;
            while (true) {
                boolean z6 = i8 >= iArrF.length - i7 ? z4 : z5;
                float f9 = iArrF[i8];
                float f10 = iArrF[i8 + 1];
                float f11 = z6 ? 0.0f : iArrF[i8 + 3];
                float fMin4 = Math.min(f, Math.min(Math.abs(f9) / 2.0f, (-f10) / 2.0f));
                this.c.rLineTo(0.0f, f10 + fMin3 + fMin4);
                this.c.rQuadTo(fMin4 * 0.1f * Math.signum(f9), fMin4 * f7, fMin4 * Math.signum(f9), -fMin4);
                if (!z6) {
                    fMin3 = Math.min(f, Math.min(Math.abs(f9) / 2.0f, (-f11) / 2.0f));
                    this.c.rLineTo(f9 - ((fMin4 + fMin3) * Math.signum(f9)), 0.0f);
                    this.c.rQuadTo(fMin3 * 0.9f * Math.signum(f9), fMin3 * (-0.1f), Math.signum(f9) * fMin3, -fMin3);
                }
                if (i8 == iC2) {
                    break;
                }
                i8 += 2;
                z4 = true;
                f7 = -0.9f;
                z5 = false;
                i7 = 2;
            }
        }
        this.c.close();
        this.d.setColor(i4);
        canvas.drawPath(this.c, this.d);
    }

    public final DisplayMetrics n() {
        DisplayMetrics displayMetrics = this.a.getResources().getDisplayMetrics();
        y45.i(displayMetrics, "context.resources.displayMetrics");
        return displayMetrics;
    }
}
