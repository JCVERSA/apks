package defpackage;

import android.graphics.Paint;
import android.text.Spanned;
import android.text.style.LineHeightSpan;

public final class dl5 implements LineHeightSpan {
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public boolean f;
    public int g = Integer.MAX_VALUE;
    public int h = Integer.MAX_VALUE;
    public int i = Integer.MAX_VALUE;
    public int j = Integer.MAX_VALUE;

    public dl5(int i, int i2, int i3, int i4) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
    }

    public final void a(int i, Paint.FontMetricsInt fontMetricsInt) {
        if (i <= 0) {
            return;
        }
        int i2 = fontMetricsInt.descent;
        int i3 = fontMetricsInt.ascent;
        int i4 = i2 - i3;
        int i5 = fontMetricsInt.top - i3;
        int i6 = fontMetricsInt.bottom - i2;
        if (i4 >= 0) {
            int i7 = i - i4;
            if (i7 < 0) {
                int iG = wn8.g(i3 - (i7 / 2), 0);
                fontMetricsInt.ascent = iG;
                fontMetricsInt.descent = wn8.d(iG + i, 0);
            } else {
                int iD = wn8.d(i2 + (i7 / 2), 0);
                fontMetricsInt.descent = iD;
                fontMetricsInt.ascent = wn8.g(iD - i, 0);
            }
            fontMetricsInt.top = fontMetricsInt.ascent + i5;
            fontMetricsInt.bottom = fontMetricsInt.descent + i6;
        }
    }

    public final void b(Paint.FontMetricsInt fontMetricsInt) {
        int i = this.b;
        if (i <= 0) {
            return;
        }
        fontMetricsInt.top -= i;
        fontMetricsInt.ascent -= i;
    }

    public final void c(Paint.FontMetricsInt fontMetricsInt) {
        fontMetricsInt.top = this.g;
        fontMetricsInt.ascent = this.h;
        fontMetricsInt.descent = this.i;
        fontMetricsInt.bottom = this.j;
    }

    @Override
    public void chooseHeight(CharSequence charSequence, int i, int i2, int i3, int i4, Paint.FontMetricsInt fontMetricsInt) {
        y45.j(fontMetricsInt, "fm");
        Spanned spanned = charSequence instanceof Spanned ? (Spanned) charSequence : null;
        if (spanned == null) {
            return;
        }
        int spanStart = spanned.getSpanStart(this);
        if (i > spanned.getSpanEnd(this) || spanStart > i2) {
            return;
        }
        if (this.f) {
            c(fontMetricsInt);
        } else {
            this.f = true;
            d(fontMetricsInt);
        }
        Object[] spans = spanned.getSpans(i, i2, dl5.class);
        int iMax = this.c;
        for (Object obj : spans) {
            iMax = Math.max(iMax, ((dl5) obj).c);
        }
        a(iMax, fontMetricsInt);
        int i5 = this.d;
        if (i5 == spanStart && i <= i5 && i5 <= i2) {
            b(fontMetricsInt);
        }
        if (j1a.X(charSequence.subSequence(i, i2).toString(), "\n", false, 2, null)) {
            this.f = false;
        }
    }

    public final void d(Paint.FontMetricsInt fontMetricsInt) {
        this.g = fontMetricsInt.top;
        this.h = fontMetricsInt.ascent;
        this.i = fontMetricsInt.descent;
        this.j = fontMetricsInt.bottom;
    }
}
