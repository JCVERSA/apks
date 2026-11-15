package l0;

import android.graphics.Paint;
import android.text.style.LineHeightSpan;

public final class h implements LineHeightSpan {

    private final float f65509a;

    private final int f65510b;

    private final int f65511c;

    private final boolean f65512d;

    private final boolean f65513e;

    private final float f65514f;

    private int f65515g = Integer.MIN_VALUE;

    private int f65516h = Integer.MIN_VALUE;

    private int f65517i = Integer.MIN_VALUE;

    private int f65518j = Integer.MIN_VALUE;

    private int f65519k;

    private int f65520l;

    public h(float f10, int i10, int i11, boolean z10, boolean z11, float f11) {
        this.f65509a = f10;
        this.f65510b = i10;
        this.f65511c = i11;
        this.f65512d = z10;
        this.f65513e = z11;
        this.f65514f = f11;
        if ((0.0f > f11 || f11 > 1.0f) && f11 != -1.0f) {
            throw new IllegalStateException("topRatio should be in [0..1] range or -1");
        }
    }

    private final void a(Paint.FontMetricsInt fontMetricsInt) {
        int iA = i.a(fontMetricsInt);
        int iCeil = (int) Math.ceil(this.f65509a);
        int i10 = iCeil - iA;
        float fAbs = this.f65514f;
        if (fAbs == -1.0f) {
            fAbs = Math.abs(fontMetricsInt.ascent) / i.a(fontMetricsInt);
        }
        int iCeil2 = (int) (i10 <= 0 ? Math.ceil(i10 * fAbs) : Math.ceil(i10 * (1.0f - fAbs)));
        int i11 = fontMetricsInt.descent;
        int i12 = iCeil2 + i11;
        this.f65517i = i12;
        int i13 = i12 - iCeil;
        this.f65516h = i13;
        if (this.f65512d) {
            i13 = fontMetricsInt.ascent;
        }
        this.f65515g = i13;
        if (this.f65513e) {
            i12 = i11;
        }
        this.f65518j = i12;
        this.f65519k = fontMetricsInt.ascent - i13;
        this.f65520l = i12 - i11;
    }

    public final h b(int i10, int i11, boolean z10) {
        return new h(this.f65509a, i10, i11, z10, this.f65513e, this.f65514f);
    }

    public final int c() {
        return this.f65519k;
    }

    @Override
    public void chooseHeight(CharSequence charSequence, int i10, int i11, int i12, int i13, Paint.FontMetricsInt fontMetricsInt) {
        if (i.a(fontMetricsInt) <= 0) {
            return;
        }
        boolean z10 = i10 == this.f65510b;
        boolean z11 = i11 == this.f65511c;
        if (z10 && z11 && this.f65512d && this.f65513e) {
            return;
        }
        if (this.f65515g == Integer.MIN_VALUE) {
            a(fontMetricsInt);
        }
        fontMetricsInt.ascent = z10 ? this.f65515g : this.f65516h;
        fontMetricsInt.descent = z11 ? this.f65518j : this.f65517i;
    }

    public final int d() {
        return this.f65520l;
    }

    public final boolean e() {
        return this.f65513e;
    }
}
