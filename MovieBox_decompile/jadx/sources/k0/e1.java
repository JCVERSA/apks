package k0;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Trace;
import android.text.BoringLayout;
import android.text.Layout;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class e1 {

    private final TextPaint f63430a;

    private final boolean f63431b;

    private final boolean f63432c;

    private final g0 f63433d;

    private final boolean f63434e;

    private final Layout f63435f;

    private final int f63436g;

    private final int f63437h;

    private final int f63438i;

    private final float f63439j;

    private final float f63440k;

    private final boolean f63441l;

    private final Paint.FontMetricsInt f63442m;

    private final int f63443n;

    private final l0.h[] f63444o;

    private final Rect f63445p;

    private f0 f63446q;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [int] */
    /* JADX WARN: Type inference failed for: r10v6 */
    public e1(CharSequence charSequence, float f10, TextPaint textPaint, int i10, TextUtils.TruncateAt truncateAt, int i11, float f11, float f12, boolean z10, boolean z11, int i12, int i13, int i14, int i15, int i16, int i17, int[] iArr, int[] iArr2, g0 g0Var) {
        boolean z12;
        boolean z13;
        Layout layoutA;
        this.f63430a = textPaint;
        this.f63431b = z10;
        this.f63432c = z11;
        this.f63433d = g0Var;
        this.f63445p = new Rect();
        int length = charSequence.length();
        TextDirectionHeuristic textDirectionHeuristicK = f1.k(i11);
        Layout.Alignment alignmentA = c1.f63420a.a(i10);
        boolean z14 = (charSequence instanceof Spanned) && ((Spanned) charSequence).nextSpanTransition(-1, length, l0.a.class) < length;
        Trace.beginSection("TextLayout:initLayout");
        try {
            BoringLayout.Metrics metricsA = g0Var.a();
            double d10 = f10;
            int iCeil = (int) Math.ceil(d10);
            if (metricsA == null || g0Var.b() > f10 || z14) {
                z12 = true;
                this.f63441l = false;
                z13 = false;
                layoutA = z0.f63474a.a(charSequence, textPaint, iCeil, 0, charSequence.length(), textDirectionHeuristicK, alignmentA, i12, truncateAt, (int) Math.ceil(d10), f11, f12, i17, z10, z11, i13, i14, i15, i16, iArr, iArr2);
            } else {
                this.f63441l = true;
                z12 = true;
                layoutA = e.f63429a.a(charSequence, textPaint, iCeil, metricsA, alignmentA, z10, z11, truncateAt, iCeil);
                z13 = false;
            }
            this.f63435f = layoutA;
            Trace.endSection();
            int iMin = Math.min(layoutA.getLineCount(), i12);
            this.f63436g = iMin;
            int i18 = iMin - 1;
            this.f63434e = (iMin >= i12 && (layoutA.getEllipsisCount(i18) > 0 || layoutA.getLineEnd(i18) != charSequence.length())) ? z12 : z13;
            long jL = f1.l(this);
            l0.h[] hVarArrJ = f1.j(this);
            this.f63444o = hVarArrJ;
            long jI = hVarArrJ != null ? f1.i(hVarArrJ) : f1.f63458b;
            this.f63437h = Math.max(g1.c(jL), g1.c(jI));
            this.f63438i = Math.max(g1.b(jL), g1.b(jI));
            Paint.FontMetricsInt fontMetricsIntH = f1.h(this, textPaint, textDirectionHeuristicK, hVarArrJ);
            this.f63443n = fontMetricsIntH != null ? fontMetricsIntH.bottom - ((int) r(i18)) : z13;
            this.f63442m = fontMetricsIntH;
            this.f63439j = l0.d.b(layoutA, i18, null, 2, null);
            this.f63440k = l0.d.d(layoutA, i18, null, 2, null);
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }

    public static float B(e1 e1Var, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return e1Var.A(i10, z10);
    }

    private final float f(int i10) {
        if (i10 == this.f63436g - 1) {
            return this.f63439j + this.f63440k;
        }
        return 0.0f;
    }

    private final f0 i() {
        f0 f0Var = this.f63446q;
        if (f0Var != null) {
            Intrinsics.e(f0Var);
            return f0Var;
        }
        f0 f0Var2 = new f0(this.f63435f);
        this.f63446q = f0Var2;
        return f0Var2;
    }

    public static float z(e1 e1Var, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return e1Var.y(i10, z10);
    }

    public final float A(int i10, boolean z10) {
        return i().c(i10, false, z10) + f(p(i10));
    }

    public final CharSequence C() {
        return this.f63435f.getText();
    }

    public final boolean D() {
        if (this.f63441l) {
            e eVar = e.f63429a;
            Layout layout = this.f63435f;
            Intrinsics.f(layout, "null cannot be cast to non-null type android.text.BoringLayout");
            return eVar.b((BoringLayout) layout);
        }
        z0 z0Var = z0.f63474a;
        Layout layout2 = this.f63435f;
        Intrinsics.f(layout2, "null cannot be cast to non-null type android.text.StaticLayout");
        return z0Var.c((StaticLayout) layout2, this.f63432c);
    }

    public final boolean E(int i10) {
        return this.f63435f.isRtlCharAt(i10);
    }

    public final void F(Canvas canvas) {
        if (canvas.getClipBounds(this.f63445p)) {
            int i10 = this.f63437h;
            if (i10 != 0) {
                canvas.translate(0.0f, i10);
            }
            d1 d1Var = f1.f63457a;
            d1Var.a(canvas);
            this.f63435f.draw(d1Var);
            int i11 = this.f63437h;
            if (i11 != 0) {
                canvas.translate(0.0f, (-1) * i11);
            }
        }
    }

    public final void a(int i10, int i11, float[] fArr, int i12) {
        float fD;
        float fE;
        int length = C().length();
        if (i10 < 0) {
            throw new IllegalArgumentException("startOffset must be > 0");
        }
        if (i10 >= length) {
            throw new IllegalArgumentException("startOffset must be less than text length");
        }
        if (i11 <= i10) {
            throw new IllegalArgumentException("endOffset must be greater than startOffset");
        }
        if (i11 > length) {
            throw new IllegalArgumentException("endOffset must be smaller or equal to text length");
        }
        if (fArr.length - i12 < (i11 - i10) * 4) {
            throw new IllegalArgumentException("array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 4");
        }
        int iP = p(i10);
        int iP2 = p(i11 - 1);
        c0 c0Var = new c0(this);
        if (iP > iP2) {
            return;
        }
        while (true) {
            int iU = u(iP);
            int iO = o(iP);
            int iMin = Math.min(i11, iO);
            float fV = v(iP);
            float fK = k(iP);
            boolean z10 = x(iP) == 1;
            for (int iMax = Math.max(i10, iU); iMax < iMin; iMax++) {
                boolean zE = E(iMax);
                if (z10 && !zE) {
                    fD = c0Var.b(iMax);
                    fE = c0Var.c(iMax + 1);
                } else if (z10 && zE) {
                    fE = c0Var.d(iMax);
                    fD = c0Var.e(iMax + 1);
                } else if (z10 || !zE) {
                    fD = c0Var.d(iMax);
                    fE = c0Var.e(iMax + 1);
                } else {
                    fE = c0Var.b(iMax);
                    fD = c0Var.c(iMax + 1);
                }
                fArr[i12] = fD;
                fArr[i12 + 1] = fV;
                fArr[i12 + 2] = fE;
                fArr[i12 + 3] = fK;
                i12 += 4;
            }
            if (iP == iP2) {
                return;
            } else {
                iP++;
            }
        }
    }

    public final RectF b(int i10) {
        float fA;
        float fA2;
        float fY;
        float fY2;
        int iP = p(i10);
        float fV = v(iP);
        float fK = k(iP);
        boolean z10 = x(iP) == 1;
        boolean zIsRtlCharAt = this.f63435f.isRtlCharAt(i10);
        if (!z10 || zIsRtlCharAt) {
            if (z10 && zIsRtlCharAt) {
                fY = A(i10, false);
                fY2 = A(i10 + 1, true);
            } else if (zIsRtlCharAt) {
                fY = y(i10, false);
                fY2 = y(i10 + 1, true);
            } else {
                fA = A(i10, false);
                fA2 = A(i10 + 1, true);
            }
            float f10 = fY;
            fA = fY2;
            fA2 = f10;
        } else {
            fA = y(i10, false);
            fA2 = y(i10 + 1, true);
        }
        return new RectF(fA, fV, fA2, fK);
    }

    public final boolean c() {
        return this.f63434e;
    }

    public final boolean d() {
        return this.f63432c;
    }

    public final int e() {
        return (this.f63434e ? this.f63435f.getLineBottom(this.f63436g - 1) : this.f63435f.getHeight()) + this.f63437h + this.f63438i + this.f63443n;
    }

    public final boolean g() {
        return this.f63431b;
    }

    public final Layout h() {
        return this.f63435f;
    }

    public final float j(int i10) {
        return this.f63437h + ((i10 != this.f63436g + (-1) || this.f63442m == null) ? this.f63435f.getLineBaseline(i10) : v(i10) - this.f63442m.ascent);
    }

    public final float k(int i10) {
        if (i10 != this.f63436g - 1 || this.f63442m == null) {
            return this.f63437h + this.f63435f.getLineBottom(i10) + (i10 == this.f63436g + (-1) ? this.f63438i : 0);
        }
        return this.f63435f.getLineBottom(i10 - 1) + this.f63442m.bottom;
    }

    public final int l() {
        return this.f63436g;
    }

    public final int m(int i10) {
        return this.f63435f.getEllipsisCount(i10);
    }

    public final int n(int i10) {
        return this.f63435f.getEllipsisStart(i10);
    }

    public final int o(int i10) {
        return this.f63435f.getEllipsisStart(i10) == 0 ? this.f63435f.getLineEnd(i10) : this.f63435f.getText().length();
    }

    public final int p(int i10) {
        return this.f63435f.getLineForOffset(i10);
    }

    public final int q(int i10) {
        return this.f63435f.getLineForVertical(i10 - this.f63437h);
    }

    public final float r(int i10) {
        return k(i10) - v(i10);
    }

    public final float s(int i10) {
        return this.f63435f.getLineLeft(i10) + (i10 == this.f63436g + (-1) ? this.f63439j : 0.0f);
    }

    public final float t(int i10) {
        return this.f63435f.getLineRight(i10) + (i10 == this.f63436g + (-1) ? this.f63440k : 0.0f);
    }

    public final int u(int i10) {
        return this.f63435f.getLineStart(i10);
    }

    public final float v(int i10) {
        return this.f63435f.getLineTop(i10) + (i10 == 0 ? 0 : this.f63437h);
    }

    public final int w(int i10) {
        if (this.f63435f.getEllipsisStart(i10) == 0) {
            return i().d(i10);
        }
        return this.f63435f.getEllipsisStart(i10) + this.f63435f.getLineStart(i10);
    }

    public final int x(int i10) {
        return this.f63435f.getParagraphDirection(i10);
    }

    public final float y(int i10, boolean z10) {
        return i().c(i10, true, z10) + f(p(i10));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public e1(CharSequence charSequence, float f10, TextPaint textPaint, int i10, TextUtils.TruncateAt truncateAt, int i11, float f11, float f12, boolean z10, boolean z11, int i12, int i13, int i14, int i15, int i16, int i17, int[] iArr, int[] iArr2, g0 g0Var, int i18, DefaultConstructorMarker defaultConstructorMarker) {
        int i19 = (i18 & 8) != 0 ? 0 : i10;
        TextUtils.TruncateAt truncateAt2 = (i18 & 16) != 0 ? null : truncateAt;
        int i20 = (i18 & 32) != 0 ? 2 : i11;
        this(charSequence, f10, textPaint, i19, truncateAt2, i20, (i18 & 64) != 0 ? 1.0f : f11, (i18 & 128) != 0 ? 0.0f : f12, (i18 & 256) != 0 ? false : z10, (i18 & 512) != 0 ? true : z11, (i18 & 1024) != 0 ? Integer.MAX_VALUE : i12, (i18 & 2048) != 0 ? 0 : i13, (i18 & 4096) != 0 ? 0 : i14, (i18 & 8192) != 0 ? 0 : i15, (i18 & 16384) != 0 ? 0 : i16, (32768 & i18) != 0 ? 0 : i17, (65536 & i18) != 0 ? null : iArr, (131072 & i18) != 0 ? null : iArr2, (i18 & 262144) != 0 ? new g0(charSequence, textPaint, i20) : g0Var);
    }
}
