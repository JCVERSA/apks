package com.google.android.material.internal;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;

final class StaticLayoutBuilderCompat {

    static final int f28295n = 1;

    private CharSequence f28296a;

    private final TextPaint f28297b;

    private final int f28298c;

    private int f28300e;

    private boolean f28307l;

    private int f28299d = 0;

    private Layout.Alignment f28301f = Layout.Alignment.ALIGN_NORMAL;

    private int f28302g = Integer.MAX_VALUE;

    private float f28303h = 0.0f;

    private float f28304i = 1.0f;

    private int f28305j = f28295n;

    private boolean f28306k = true;

    private TextUtils.TruncateAt f28308m = null;

    static class StaticLayoutBuilderCompatException extends Exception {
        StaticLayoutBuilderCompatException(Throwable th2) {
            super("Error thrown initializing StaticLayout " + th2.getMessage(), th2);
        }
    }

    private StaticLayoutBuilderCompat(CharSequence charSequence, TextPaint textPaint, int i10) {
        this.f28296a = charSequence;
        this.f28297b = textPaint;
        this.f28298c = i10;
        this.f28300e = charSequence.length();
    }

    public static StaticLayoutBuilderCompat b(CharSequence charSequence, TextPaint textPaint, int i10) {
        return new StaticLayoutBuilderCompat(charSequence, textPaint, i10);
    }

    public StaticLayout a() {
        if (this.f28296a == null) {
            this.f28296a = "";
        }
        int iMax = Math.max(0, this.f28298c);
        CharSequence charSequenceEllipsize = this.f28296a;
        if (this.f28302g == 1) {
            charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.f28297b, iMax, this.f28308m);
        }
        int iMin = Math.min(charSequenceEllipsize.length(), this.f28300e);
        this.f28300e = iMin;
        if (this.f28307l && this.f28302g == 1) {
            this.f28301f = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, this.f28299d, iMin, this.f28297b, iMax);
        builderObtain.setAlignment(this.f28301f);
        builderObtain.setIncludePad(this.f28306k);
        builderObtain.setTextDirection(this.f28307l ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.f28308m;
        if (truncateAt != null) {
            builderObtain.setEllipsize(truncateAt);
        }
        builderObtain.setMaxLines(this.f28302g);
        float f10 = this.f28303h;
        if (f10 != 0.0f || this.f28304i != 1.0f) {
            builderObtain.setLineSpacing(f10, this.f28304i);
        }
        if (this.f28302g > 1) {
            builderObtain.setHyphenationFrequency(this.f28305j);
        }
        return builderObtain.build();
    }

    public StaticLayoutBuilderCompat c(Layout.Alignment alignment) {
        this.f28301f = alignment;
        return this;
    }

    public StaticLayoutBuilderCompat d(TextUtils.TruncateAt truncateAt) {
        this.f28308m = truncateAt;
        return this;
    }

    public StaticLayoutBuilderCompat e(int i10) {
        this.f28305j = i10;
        return this;
    }

    public StaticLayoutBuilderCompat f(boolean z10) {
        this.f28306k = z10;
        return this;
    }

    public StaticLayoutBuilderCompat g(boolean z10) {
        this.f28307l = z10;
        return this;
    }

    public StaticLayoutBuilderCompat h(float f10, float f11) {
        this.f28303h = f10;
        this.f28304i = f11;
        return this;
    }

    public StaticLayoutBuilderCompat i(int i10) {
        this.f28302g = i10;
        return this;
    }

    public StaticLayoutBuilderCompat j(x xVar) {
        return this;
    }
}
