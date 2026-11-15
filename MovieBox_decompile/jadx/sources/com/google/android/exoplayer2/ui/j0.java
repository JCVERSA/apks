package com.google.android.exoplayer2.ui;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import androidx.core.view.ViewCompat;

final class j0 {
    private int A;
    private int B;
    private int C;
    private int D;
    private StaticLayout E;
    private StaticLayout F;
    private int G;
    private int H;
    private int I;
    private Rect J;

    private final float f26393a;

    private final float f26394b;

    private final float f26395c;

    private final float f26396d;

    private final float f26397e;

    private final TextPaint f26398f;

    private final Paint f26399g;

    private final Paint f26400h;

    private CharSequence f26401i;

    private Layout.Alignment f26402j;

    private Bitmap f26403k;

    private float f26404l;

    private int f26405m;

    private int f26406n;

    private float f26407o;

    private int f26408p;

    private float f26409q;

    private float f26410r;

    private int f26411s;

    private int f26412t;

    private int f26413u;

    private int f26414v;

    private int f26415w;

    private float f26416x;

    private float f26417y;

    private float f26418z;

    public j0(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{R.attr.lineSpacingExtra, R.attr.lineSpacingMultiplier}, 0, 0);
        this.f26397e = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f26396d = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        float fRound = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f26393a = fRound;
        this.f26394b = fRound;
        this.f26395c = fRound;
        TextPaint textPaint = new TextPaint();
        this.f26398f = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.f26399g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f26400h = paint2;
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
    }

    private static boolean a(CharSequence charSequence, CharSequence charSequence2) {
        return charSequence == charSequence2 || (charSequence != null && charSequence.equals(charSequence2));
    }

    private void c(Canvas canvas) {
        canvas.drawBitmap(this.f26403k, (Rect) null, this.J, this.f26400h);
    }

    private void d(Canvas canvas, boolean z10) {
        if (z10) {
            e(canvas);
            return;
        }
        com.google.android.exoplayer2.util.a.e(this.J);
        com.google.android.exoplayer2.util.a.e(this.f26403k);
        c(canvas);
    }

    private void e(Canvas canvas) {
        StaticLayout staticLayout = this.E;
        StaticLayout staticLayout2 = this.F;
        if (staticLayout == null || staticLayout2 == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(this.G, this.H);
        if (Color.alpha(this.f26413u) > 0) {
            this.f26399g.setColor(this.f26413u);
            canvas.drawRect(-this.I, 0.0f, staticLayout.getWidth() + this.I, staticLayout.getHeight(), this.f26399g);
        }
        int i10 = this.f26415w;
        if (i10 == 1) {
            this.f26398f.setStrokeJoin(Paint.Join.ROUND);
            this.f26398f.setStrokeWidth(this.f26393a);
            this.f26398f.setColor(this.f26414v);
            this.f26398f.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout2.draw(canvas);
        } else if (i10 == 2) {
            TextPaint textPaint = this.f26398f;
            float f10 = this.f26394b;
            float f11 = this.f26395c;
            textPaint.setShadowLayer(f10, f11, f11, this.f26414v);
        } else if (i10 == 3 || i10 == 4) {
            boolean z10 = i10 == 3;
            int i11 = z10 ? -1 : this.f26414v;
            int i12 = z10 ? this.f26414v : -1;
            float f12 = this.f26394b / 2.0f;
            this.f26398f.setColor(this.f26411s);
            this.f26398f.setStyle(Paint.Style.FILL);
            float f13 = -f12;
            this.f26398f.setShadowLayer(this.f26394b, f13, f13, i11);
            staticLayout2.draw(canvas);
            this.f26398f.setShadowLayer(this.f26394b, f12, f12, i12);
        }
        this.f26398f.setColor(this.f26411s);
        this.f26398f.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas);
        this.f26398f.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas.restoreToCount(iSave);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0056  */
    /* JADX WARN: Code duplicated, block: B:16:0x0059 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x005b  */
    private void f() {
        float f10;
        int i10;
        float f11;
        Bitmap bitmap = this.f26403k;
        int i11 = this.C;
        int i12 = this.A;
        int i13 = this.D;
        int i14 = this.B;
        float f12 = i11 - i12;
        float f13 = i12 + (this.f26407o * f12);
        float f14 = i13 - i14;
        float f15 = i14 + (this.f26404l * f14);
        int iRound = Math.round(f12 * this.f26409q);
        float f16 = this.f26410r;
        int iRound2 = f16 != -3.4028235E38f ? Math.round(f14 * f16) : Math.round(iRound * (bitmap.getHeight() / bitmap.getWidth()));
        int i15 = this.f26408p;
        if (i15 != 2) {
            if (i15 == 1) {
                f10 = iRound / 2;
            }
            int iRound3 = Math.round(f13);
            i10 = this.f26406n;
            if (i10 == 2) {
                if (i10 == 1) {
                    f11 = iRound2 / 2;
                }
                int iRound4 = Math.round(f15);
                this.J = new Rect(iRound3, iRound4, iRound + iRound3, iRound2 + iRound4);
            }
            f11 = iRound2;
            f15 -= f11;
            int iRound5 = Math.round(f15);
            this.J = new Rect(iRound3, iRound5, iRound + iRound3, iRound2 + iRound5);
        }
        f10 = iRound;
        f13 -= f10;
        int iRound6 = Math.round(f13);
        i10 = this.f26406n;
        if (i10 == 2) {
            if (i10 == 1) {
                f11 = iRound2 / 2;
            }
            int iRound7 = Math.round(f15);
            this.J = new Rect(iRound6, iRound7, iRound + iRound6, iRound2 + iRound7);
        }
        f11 = iRound2;
        f15 -= f11;
        int iRound8 = Math.round(f15);
        this.J = new Rect(iRound6, iRound8, iRound + iRound6, iRound2 + iRound8);
    }

    private void g() {
        int i10;
        int i11;
        int iMax;
        int iMin;
        int iRound;
        int i12;
        CharSequence charSequence = this.f26401i;
        SpannableStringBuilder spannableStringBuilder = charSequence instanceof SpannableStringBuilder ? (SpannableStringBuilder) charSequence : new SpannableStringBuilder(this.f26401i);
        int i13 = this.C - this.A;
        int i14 = this.D - this.B;
        this.f26398f.setTextSize(this.f26416x);
        int i15 = (int) ((this.f26416x * 0.125f) + 0.5f);
        int i16 = i15 * 2;
        int i17 = i13 - i16;
        float f10 = this.f26409q;
        if (f10 != -3.4028235E38f) {
            i17 = (int) (i17 * f10);
        }
        int i18 = i17;
        if (i18 <= 0) {
            com.google.android.exoplayer2.util.s.i("SubtitlePainter", "Skipped drawing subtitle cue (insufficient space)");
            return;
        }
        if (this.f26417y > 0.0f) {
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) this.f26417y), 0, spannableStringBuilder.length(), 16711680);
        }
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(spannableStringBuilder);
        if (this.f26415w == 1) {
            for (ForegroundColorSpan foregroundColorSpan : (ForegroundColorSpan[]) spannableStringBuilder2.getSpans(0, spannableStringBuilder2.length(), ForegroundColorSpan.class)) {
                spannableStringBuilder2.removeSpan(foregroundColorSpan);
            }
        }
        if (Color.alpha(this.f26412t) > 0) {
            int i19 = this.f26415w;
            if (i19 == 0 || i19 == 2) {
                spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f26412t), 0, spannableStringBuilder.length(), 16711680);
            } else {
                spannableStringBuilder2.setSpan(new BackgroundColorSpan(this.f26412t), 0, spannableStringBuilder2.length(), 16711680);
            }
        }
        Layout.Alignment alignment = this.f26402j;
        if (alignment == null) {
            alignment = Layout.Alignment.ALIGN_CENTER;
        }
        Layout.Alignment alignment2 = alignment;
        StaticLayout staticLayout = new StaticLayout(spannableStringBuilder, this.f26398f, i18, alignment2, this.f26396d, this.f26397e, true);
        this.E = staticLayout;
        int height = staticLayout.getHeight();
        int lineCount = this.E.getLineCount();
        int iMax2 = 0;
        for (int i20 = 0; i20 < lineCount; i20++) {
            iMax2 = Math.max((int) Math.ceil(this.E.getLineWidth(i20)), iMax2);
        }
        if (this.f26409q == -3.4028235E38f || iMax2 >= i18) {
            i18 = iMax2;
        }
        int i21 = i18 + i16;
        float f11 = this.f26407o;
        if (f11 != -3.4028235E38f) {
            int iRound2 = Math.round(i13 * f11);
            int i22 = this.A;
            int i23 = iRound2 + i22;
            int i24 = this.f26408p;
            i10 = 1;
            if (i24 != 1) {
                i11 = 2;
                if (i24 == 2) {
                    i23 -= i21;
                }
            } else {
                i11 = 2;
                i23 = ((i23 * 2) - i21) / 2;
            }
            iMax = Math.max(i23, i22);
            iMin = Math.min(i21 + iMax, this.C);
        } else {
            i10 = 1;
            i11 = 2;
            iMax = ((i13 - i21) / 2) + this.A;
            iMin = iMax + i21;
        }
        int i25 = iMin - iMax;
        if (i25 <= 0) {
            com.google.android.exoplayer2.util.s.i("SubtitlePainter", "Skipped drawing subtitle cue (invalid horizontal positioning)");
            return;
        }
        float f12 = this.f26404l;
        if (f12 != -3.4028235E38f) {
            if (this.f26405m == 0) {
                iRound = Math.round(i14 * f12) + this.B;
                int i26 = this.f26406n;
                if (i26 == i11) {
                    iRound -= height;
                } else if (i26 == i10) {
                    iRound = ((iRound * 2) - height) / i11;
                }
            } else {
                int lineBottom = this.E.getLineBottom(0) - this.E.getLineTop(0);
                float f13 = this.f26404l;
                if (f13 >= 0.0f) {
                    iRound = Math.round(f13 * lineBottom) + this.B;
                } else {
                    iRound = Math.round((f13 + 1.0f) * lineBottom) + this.D;
                    iRound -= height;
                }
            }
            int i27 = iRound + height;
            int i28 = this.D;
            if (i27 <= i28) {
                int i29 = this.B;
                if (iRound < i29) {
                    i12 = i29;
                }
                this.E = new StaticLayout(spannableStringBuilder, this.f26398f, i25, alignment2, this.f26396d, this.f26397e, true);
                this.F = new StaticLayout(spannableStringBuilder2, this.f26398f, i25, alignment2, this.f26396d, this.f26397e, true);
                this.G = iMax;
                this.H = i12;
                this.I = i15;
            }
            iRound = i28 - height;
        } else {
            iRound = (this.D - height) - ((int) (i14 * this.f26418z));
        }
        i12 = iRound;
        this.E = new StaticLayout(spannableStringBuilder, this.f26398f, i25, alignment2, this.f26396d, this.f26397e, true);
        this.F = new StaticLayout(spannableStringBuilder2, this.f26398f, i25, alignment2, this.f26396d, this.f26397e, true);
        this.G = iMax;
        this.H = i12;
        this.I = i15;
    }

    public void b(da.b bVar, c cVar, float f10, float f11, float f12, Canvas canvas, int i10, int i11, int i12, int i13) {
        int i14;
        boolean z10 = bVar.f58927d == null;
        if (!z10) {
            i14 = ViewCompat.MEASURED_STATE_MASK;
        } else if (TextUtils.isEmpty(bVar.f58924a)) {
            return;
        } else {
            i14 = bVar.f58935l ? bVar.f58936m : cVar.f26340c;
        }
        if (a(this.f26401i, bVar.f58924a) && com.google.android.exoplayer2.util.p0.c(this.f26402j, bVar.f58925b) && this.f26403k == bVar.f58927d && this.f26404l == bVar.f58928e && this.f26405m == bVar.f58929f && com.google.android.exoplayer2.util.p0.c(Integer.valueOf(this.f26406n), Integer.valueOf(bVar.f58930g)) && this.f26407o == bVar.f58931h && com.google.android.exoplayer2.util.p0.c(Integer.valueOf(this.f26408p), Integer.valueOf(bVar.f58932i)) && this.f26409q == bVar.f58933j && this.f26410r == bVar.f58934k && this.f26411s == cVar.f26338a && this.f26412t == cVar.f26339b && this.f26413u == i14 && this.f26415w == cVar.f26341d && this.f26414v == cVar.f26342e && com.google.android.exoplayer2.util.p0.c(this.f26398f.getTypeface(), cVar.f26343f) && this.f26416x == f10 && this.f26417y == f11 && this.f26418z == f12 && this.A == i10 && this.B == i11 && this.C == i12 && this.D == i13) {
            d(canvas, z10);
            return;
        }
        this.f26401i = bVar.f58924a;
        this.f26402j = bVar.f58925b;
        this.f26403k = bVar.f58927d;
        this.f26404l = bVar.f58928e;
        this.f26405m = bVar.f58929f;
        this.f26406n = bVar.f58930g;
        this.f26407o = bVar.f58931h;
        this.f26408p = bVar.f58932i;
        this.f26409q = bVar.f58933j;
        this.f26410r = bVar.f58934k;
        this.f26411s = cVar.f26338a;
        this.f26412t = cVar.f26339b;
        this.f26413u = i14;
        this.f26415w = cVar.f26341d;
        this.f26414v = cVar.f26342e;
        this.f26398f.setTypeface(cVar.f26343f);
        this.f26416x = f10;
        this.f26417y = f11;
        this.f26418z = f12;
        this.A = i10;
        this.B = i11;
        this.C = i12;
        this.D = i13;
        if (z10) {
            com.google.android.exoplayer2.util.a.e(this.f26401i);
            g();
        } else {
            com.google.android.exoplayer2.util.a.e(this.f26403k);
            f();
        }
        d(canvas, z10);
    }
}
