package androidx.compose.ui.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.z4;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.text.platform.style.ShaderBrushSpan;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import k0.e1;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class a implements l {

    private final AndroidParagraphIntrinsics f5762a;

    private final int f5763b;

    private final boolean f5764c;

    private final long f5765d;

    private final e1 f5766e;

    private final CharSequence f5767f;

    private final List f5768g;

    public class C0046a {

        public static final int[] f5769a;

        static {
            int[] iArr = new int[ResolvedTextDirection.values().length];
            try {
                iArr[ResolvedTextDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ResolvedTextDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f5769a = iArr;
        }
    }

    public a(AndroidParagraphIntrinsics androidParagraphIntrinsics, int i10, boolean z10, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(androidParagraphIntrinsics, i10, z10, j10);
    }

    private final boolean A(Spanned spanned, Class cls) {
        return spanned.nextSpanTransition(-1, spanned.length(), cls) != spanned.length();
    }

    private final void B(m1 m1Var) {
        Canvas canvasD = androidx.compose.ui.graphics.h0.d(m1Var);
        if (k()) {
            canvasD.save();
            canvasD.clipRect(0.0f, 0.0f, getWidth(), getHeight());
        }
        this.f5766e.F(canvasD);
        if (k()) {
            canvasD.restore();
        }
    }

    private final e1 v(int i10, int i11, TextUtils.TruncateAt truncateAt, int i12, int i13, int i14, int i15, int i16) {
        return new e1(this.f5767f, getWidth(), z(), i10, truncateAt, this.f5762a.j(), 1.0f, 0.0f, androidx.compose.ui.text.platform.c.b(this.f5762a.i()), true, i12, i14, i15, i16, i13, i11, null, null, this.f5762a.h(), 196736, null);
    }

    private final ShaderBrushSpan[] y(e1 e1Var) {
        if (!(e1Var.C() instanceof Spanned)) {
            return null;
        }
        CharSequence charSequenceC = e1Var.C();
        Intrinsics.f(charSequenceC, "null cannot be cast to non-null type android.text.Spanned");
        if (!A((Spanned) charSequenceC, ShaderBrushSpan.class)) {
            return null;
        }
        CharSequence charSequenceC2 = e1Var.C();
        Intrinsics.f(charSequenceC2, "null cannot be cast to non-null type android.text.Spanned");
        return (ShaderBrushSpan[]) ((Spanned) charSequenceC2).getSpans(0, e1Var.C().length(), ShaderBrushSpan.class);
    }

    @Override
    public float a() {
        return this.f5762a.a();
    }

    @Override
    public ResolvedTextDirection b(int i10) {
        return this.f5766e.x(this.f5766e.p(i10)) == 1 ? ResolvedTextDirection.Ltr : ResolvedTextDirection.Rtl;
    }

    @Override
    public float c(int i10) {
        return this.f5766e.v(i10);
    }

    @Override
    public y.i d(int i10) {
        if (i10 >= 0 && i10 <= this.f5767f.length()) {
            float fZ = e1.z(this.f5766e, i10, false, 2, null);
            int iP = this.f5766e.p(i10);
            return new y.i(fZ, this.f5766e.v(iP), fZ, this.f5766e.k(iP));
        }
        throw new IllegalArgumentException(("offset(" + i10 + ") is out of bounds [0," + this.f5767f.length() + ']').toString());
    }

    @Override
    public float e() {
        return x(0);
    }

    @Override
    public int f(int i10) {
        return this.f5766e.u(i10);
    }

    @Override
    public int g(int i10, boolean z10) {
        return z10 ? this.f5766e.w(i10) : this.f5766e.o(i10);
    }

    @Override
    public float getHeight() {
        return this.f5766e.e();
    }

    @Override
    public float getWidth() {
        return o0.b.l(this.f5765d);
    }

    @Override
    public int h() {
        return this.f5766e.l();
    }

    @Override
    public float i(int i10) {
        return this.f5766e.t(i10);
    }

    @Override
    public void j(m1 m1Var, j1 j1Var, float f10, z4 z4Var, androidx.compose.ui.text.style.i iVar, z.h hVar, int i10) {
        int iB = z().b();
        AndroidTextPaint androidTextPaintZ = z();
        androidTextPaintZ.e(j1Var, y.n.a(getWidth(), getHeight()), f10);
        androidTextPaintZ.h(z4Var);
        androidTextPaintZ.i(iVar);
        androidTextPaintZ.g(hVar);
        androidTextPaintZ.d(i10);
        B(m1Var);
        z().d(iB);
    }

    @Override
    public boolean k() {
        return this.f5766e.c();
    }

    @Override
    public int l(float f10) {
        return this.f5766e.q((int) f10);
    }

    @Override
    public float m(int i10) {
        return this.f5766e.s(i10);
    }

    @Override
    public void n(long j10, float[] fArr, int i10) {
        this.f5766e.a(b0.j(j10), b0.i(j10), fArr, i10);
    }

    @Override
    public float o() {
        return x(h() - 1);
    }

    @Override
    public int p(int i10) {
        return this.f5766e.p(i10);
    }

    @Override
    public void q(m1 m1Var, long j10, z4 z4Var, androidx.compose.ui.text.style.i iVar, z.h hVar, int i10) {
        int iB = z().b();
        AndroidTextPaint androidTextPaintZ = z();
        androidTextPaintZ.f(j10);
        androidTextPaintZ.h(z4Var);
        androidTextPaintZ.i(iVar);
        androidTextPaintZ.g(hVar);
        androidTextPaintZ.d(i10);
        B(m1Var);
        z().d(iB);
    }

    @Override
    public ResolvedTextDirection r(int i10) {
        return this.f5766e.E(i10) ? ResolvedTextDirection.Rtl : ResolvedTextDirection.Ltr;
    }

    @Override
    public float s(int i10) {
        return this.f5766e.k(i10);
    }

    @Override
    public y.i t(int i10) {
        if (i10 >= 0 && i10 < this.f5767f.length()) {
            RectF rectFB = this.f5766e.b(i10);
            return new y.i(rectFB.left, rectFB.top, rectFB.right, rectFB.bottom);
        }
        throw new IllegalArgumentException(("offset(" + i10 + ") is out of bounds [0," + this.f5767f.length() + ')').toString());
    }

    @Override
    public List u() {
        return this.f5768g;
    }

    public float w(int i10, boolean z10) {
        return z10 ? e1.z(this.f5766e, i10, false, 2, null) : e1.B(this.f5766e, i10, false, 2, null);
    }

    public float x(int i10) {
        return this.f5766e.j(i10);
    }

    public final AndroidTextPaint z() {
        return this.f5762a.k();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private a(AndroidParagraphIntrinsics androidParagraphIntrinsics, int i10, boolean z10, long j10) {
        List listL;
        y.i iVar;
        float fW;
        float fJ;
        int iB;
        float fV;
        float fB;
        float fJ2;
        this.f5762a = androidParagraphIntrinsics;
        this.f5763b = i10;
        this.f5764c = z10;
        this.f5765d = j10;
        if (o0.b.m(j10) != 0 || o0.b.n(j10) != 0) {
            throw new IllegalArgumentException("Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead.");
        }
        if (i10 < 1) {
            throw new IllegalArgumentException("maxLines should be greater than 0");
        }
        d0 d0VarI = androidParagraphIntrinsics.i();
        this.f5767f = b.k(d0VarI, z10) ? b.i(androidParagraphIntrinsics.f()) : androidParagraphIntrinsics.f();
        int iL = b.l(d0VarI.z());
        boolean zK = androidx.compose.ui.text.style.h.k(d0VarI.z(), androidx.compose.ui.text.style.h.f6091b.c());
        int iN = b.n(d0VarI.v().c());
        int iM = b.m(androidx.compose.ui.text.style.e.e(d0VarI.r()));
        int iO = b.o(androidx.compose.ui.text.style.e.f(d0VarI.r()));
        int iP = b.p(androidx.compose.ui.text.style.e.g(d0VarI.r()));
        TextUtils.TruncateAt truncateAt = z10 ? TextUtils.TruncateAt.END : null;
        e1 e1VarV = v(iL, zK ? 1 : 0, truncateAt, i10, iN, iM, iO, iP);
        if (!z10 || e1VarV.e() <= o0.b.k(j10) || i10 <= 1) {
            this.f5766e = e1VarV;
        } else {
            int iJ = b.j(e1VarV, o0.b.k(j10));
            if (iJ >= 0 && iJ != i10) {
                e1VarV = v(iL, zK ? 1 : 0, truncateAt, RangesKt.e(iJ, 1), iN, iM, iO, iP);
            }
            this.f5766e = e1VarV;
        }
        z().e(d0VarI.g(), y.n.a(getWidth(), getHeight()), d0VarI.d());
        ShaderBrushSpan[] shaderBrushSpanArrY = y(this.f5766e);
        if (shaderBrushSpanArrY != null) {
            Iterator itA = ArrayIteratorKt.a(shaderBrushSpanArrY);
            while (itA.hasNext()) {
                ((ShaderBrushSpan) itA.next()).c(y.n.a(getWidth(), getHeight()));
            }
        }
        CharSequence charSequence = this.f5767f;
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            Object[] spans = spanned.getSpans(0, charSequence.length(), l0.j.class);
            ArrayList arrayList = new ArrayList(spans.length);
            for (Object obj : spans) {
                l0.j jVar = (l0.j) obj;
                int spanStart = spanned.getSpanStart(jVar);
                int spanEnd = spanned.getSpanEnd(jVar);
                int iP2 = this.f5766e.p(spanStart);
                Object[] objArr = iP2 >= this.f5763b;
                Object[] objArr2 = this.f5766e.m(iP2) > 0 && spanEnd > this.f5766e.n(iP2);
                Object[] objArr3 = spanEnd > this.f5766e.o(iP2);
                if (objArr2 == true || objArr3 == true || objArr == true) {
                    iVar = null;
                } else {
                    int i11 = C0046a.f5769a[r(spanStart).ordinal()];
                    if (i11 == 1) {
                        fW = w(spanStart, true);
                    } else {
                        if (i11 != 2) {
                            throw new NoWhenBranchMatchedException();
                        }
                        fW = w(spanStart, true) - jVar.d();
                    }
                    float fD = jVar.d() + fW;
                    e1 e1Var = this.f5766e;
                    switch (jVar.c()) {
                        case 0:
                            fJ = e1Var.j(iP2);
                            iB = jVar.b();
                            fV = fJ - iB;
                            iVar = new y.i(fW, fV, fD, jVar.b() + fV);
                            break;
                        case 1:
                            fV = e1Var.v(iP2);
                            iVar = new y.i(fW, fV, fD, jVar.b() + fV);
                            break;
                        case 2:
                            fJ = e1Var.k(iP2);
                            iB = jVar.b();
                            fV = fJ - iB;
                            iVar = new y.i(fW, fV, fD, jVar.b() + fV);
                            break;
                        case 3:
                            fV = ((e1Var.v(iP2) + e1Var.k(iP2)) - jVar.b()) / 2;
                            iVar = new y.i(fW, fV, fD, jVar.b() + fV);
                            break;
                        case 4:
                            fB = jVar.a().ascent;
                            fJ2 = e1Var.j(iP2);
                            fV = fB + fJ2;
                            iVar = new y.i(fW, fV, fD, jVar.b() + fV);
                            break;
                        case 5:
                            fV = (jVar.a().descent + e1Var.j(iP2)) - jVar.b();
                            iVar = new y.i(fW, fV, fD, jVar.b() + fV);
                            break;
                        case 6:
                            Paint.FontMetricsInt fontMetricsIntA = jVar.a();
                            fB = ((fontMetricsIntA.ascent + fontMetricsIntA.descent) - jVar.b()) / 2;
                            fJ2 = e1Var.j(iP2);
                            fV = fB + fJ2;
                            iVar = new y.i(fW, fV, fD, jVar.b() + fV);
                            break;
                        default:
                            throw new IllegalStateException("unexpected verticalAlignment");
                    }
                }
                arrayList.add(iVar);
            }
            listL = arrayList;
        } else {
            listL = CollectionsKt.l();
        }
        this.f5768g = listL;
    }
}
