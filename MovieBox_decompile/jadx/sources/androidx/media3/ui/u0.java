package androidx.media3.ui;

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
import java.util.Objects;

final class u0 {
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

    private final float f13415a;

    private final float f13416b;

    private final float f13417c;

    private final float f13418d;

    private final float f13419e;

    private final TextPaint f13420f;

    private final Paint f13421g;

    private final Paint f13422h;

    private CharSequence f13423i;

    private Layout.Alignment f13424j;

    private Bitmap f13425k;

    private float f13426l;

    private int f13427m;

    private int f13428n;

    private float f13429o;

    private int f13430p;

    private float f13431q;

    private float f13432r;

    private int f13433s;

    private int f13434t;

    private int f13435u;

    private int f13436v;

    private int f13437w;

    private float f13438x;

    private float f13439y;

    private float f13440z;

    public u0(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{R.attr.lineSpacingExtra, R.attr.lineSpacingMultiplier}, 0, 0);
        this.f13419e = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f13418d = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        float fRound = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f13415a = fRound;
        this.f13416b = fRound;
        this.f13417c = fRound;
        TextPaint textPaint = new TextPaint();
        this.f13420f = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.f13421g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f13422h = paint2;
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
    }

    private static boolean a(CharSequence charSequence, CharSequence charSequence2) {
        return charSequence == charSequence2 || (charSequence != null && charSequence.equals(charSequence2));
    }

    private void c(Canvas canvas) {
        canvas.drawBitmap(this.f13425k, (Rect) null, this.J, this.f13422h);
    }

    private void d(Canvas canvas, boolean z10) {
        if (z10) {
            e(canvas);
            return;
        }
        androidx.media3.common.util.a.e(this.J);
        androidx.media3.common.util.a.e(this.f13425k);
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
        if (Color.alpha(this.f13435u) > 0) {
            this.f13421g.setColor(this.f13435u);
            canvas.drawRect(-this.I, 0.0f, staticLayout.getWidth() + this.I, staticLayout.getHeight(), this.f13421g);
        }
        int i10 = this.f13437w;
        if (i10 == 1) {
            this.f13420f.setStrokeJoin(Paint.Join.ROUND);
            this.f13420f.setStrokeWidth(this.f13415a);
            this.f13420f.setColor(this.f13436v);
            this.f13420f.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout2.draw(canvas);
        } else if (i10 == 2) {
            TextPaint textPaint = this.f13420f;
            float f10 = this.f13416b;
            float f11 = this.f13417c;
            textPaint.setShadowLayer(f10, f11, f11, this.f13436v);
        } else if (i10 == 3 || i10 == 4) {
            boolean z10 = i10 == 3;
            int i11 = z10 ? -1 : this.f13436v;
            int i12 = z10 ? this.f13436v : -1;
            float f12 = this.f13416b / 2.0f;
            this.f13420f.setColor(this.f13433s);
            this.f13420f.setStyle(Paint.Style.FILL);
            float f13 = -f12;
            this.f13420f.setShadowLayer(this.f13416b, f13, f13, i11);
            staticLayout2.draw(canvas);
            this.f13420f.setShadowLayer(this.f13416b, f12, f12, i12);
        }
        this.f13420f.setColor(this.f13433s);
        this.f13420f.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas);
        this.f13420f.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas.restoreToCount(iSave);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0056  */
    /* JADX WARN: Code duplicated, block: B:16:0x0059 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x005b  */
    private void f() {
        float f10;
        int i10;
        float f11;
        Bitmap bitmap = this.f13425k;
        int i11 = this.C;
        int i12 = this.A;
        int i13 = this.D;
        int i14 = this.B;
        float f12 = i11 - i12;
        float f13 = i12 + (this.f13429o * f12);
        float f14 = i13 - i14;
        float f15 = i14 + (this.f13426l * f14);
        int iRound = Math.round(f12 * this.f13431q);
        float f16 = this.f13432r;
        int iRound2 = f16 != -3.4028235E38f ? Math.round(f14 * f16) : Math.round(iRound * (bitmap.getHeight() / bitmap.getWidth()));
        int i15 = this.f13430p;
        if (i15 != 2) {
            if (i15 == 1) {
                f10 = iRound / 2;
            }
            int iRound3 = Math.round(f13);
            i10 = this.f13428n;
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
        i10 = this.f13428n;
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
        CharSequence charSequence = this.f13423i;
        SpannableStringBuilder spannableStringBuilder = charSequence instanceof SpannableStringBuilder ? (SpannableStringBuilder) charSequence : new SpannableStringBuilder(this.f13423i);
        int i13 = this.C - this.A;
        int i14 = this.D - this.B;
        this.f13420f.setTextSize(this.f13438x);
        int i15 = (int) ((this.f13438x * 0.125f) + 0.5f);
        int i16 = i15 * 2;
        int i17 = i13 - i16;
        float f10 = this.f13431q;
        if (f10 != -3.4028235E38f) {
            i17 = (int) (i17 * f10);
        }
        int i18 = i17;
        if (i18 <= 0) {
            androidx.media3.common.util.u.h("SubtitlePainter", "Skipped drawing subtitle cue (insufficient space)");
            return;
        }
        if (this.f13439y > 0.0f) {
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) this.f13439y), 0, spannableStringBuilder.length(), 16711680);
        }
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(spannableStringBuilder);
        if (this.f13437w == 1) {
            for (ForegroundColorSpan foregroundColorSpan : (ForegroundColorSpan[]) spannableStringBuilder2.getSpans(0, spannableStringBuilder2.length(), ForegroundColorSpan.class)) {
                spannableStringBuilder2.removeSpan(foregroundColorSpan);
            }
        }
        if (Color.alpha(this.f13434t) > 0) {
            int i19 = this.f13437w;
            if (i19 == 0 || i19 == 2) {
                spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f13434t), 0, spannableStringBuilder.length(), 16711680);
            } else {
                spannableStringBuilder2.setSpan(new BackgroundColorSpan(this.f13434t), 0, spannableStringBuilder2.length(), 16711680);
            }
        }
        Layout.Alignment alignment = this.f13424j;
        if (alignment == null) {
            alignment = Layout.Alignment.ALIGN_CENTER;
        }
        Layout.Alignment alignment2 = alignment;
        StaticLayout staticLayout = new StaticLayout(spannableStringBuilder, this.f13420f, i18, alignment2, this.f13418d, this.f13419e, true);
        this.E = staticLayout;
        int height = staticLayout.getHeight();
        int lineCount = this.E.getLineCount();
        int iMax2 = 0;
        for (int i20 = 0; i20 < lineCount; i20++) {
            iMax2 = Math.max((int) Math.ceil(this.E.getLineWidth(i20)), iMax2);
        }
        if (this.f13431q == -3.4028235E38f || iMax2 >= i18) {
            i18 = iMax2;
        }
        int i21 = i18 + i16;
        float f11 = this.f13429o;
        if (f11 != -3.4028235E38f) {
            int iRound2 = Math.round(i13 * f11);
            int i22 = this.A;
            int i23 = iRound2 + i22;
            int i24 = this.f13430p;
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
            androidx.media3.common.util.u.h("SubtitlePainter", "Skipped drawing subtitle cue (invalid horizontal positioning)");
            return;
        }
        float f12 = this.f13426l;
        if (f12 != -3.4028235E38f) {
            if (this.f13427m == 0) {
                iRound = Math.round(i14 * f12) + this.B;
                int i26 = this.f13428n;
                if (i26 == i11) {
                    iRound -= height;
                } else if (i26 == i10) {
                    iRound = ((iRound * 2) - height) / i11;
                }
            } else {
                int lineBottom = this.E.getLineBottom(0) - this.E.getLineTop(0);
                float f13 = this.f13426l;
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
                this.E = new StaticLayout(spannableStringBuilder, this.f13420f, i25, alignment2, this.f13418d, this.f13419e, true);
                this.F = new StaticLayout(spannableStringBuilder2, this.f13420f, i25, alignment2, this.f13418d, this.f13419e, true);
                this.G = iMax;
                this.H = i12;
                this.I = i15;
            }
            iRound = i28 - height;
        } else {
            iRound = (this.D - height) - ((int) (i14 * this.f13440z));
        }
        i12 = iRound;
        this.E = new StaticLayout(spannableStringBuilder, this.f13420f, i25, alignment2, this.f13418d, this.f13419e, true);
        this.F = new StaticLayout(spannableStringBuilder2, this.f13420f, i25, alignment2, this.f13418d, this.f13419e, true);
        this.G = iMax;
        this.H = i12;
        this.I = i15;
    }

    public void b(u1.a aVar, b bVar, float f10, float f11, float f12, Canvas canvas, int i10, int i11, int i12, int i13) {
        int i14;
        boolean z10 = aVar.f72943d == null;
        if (!z10) {
            i14 = ViewCompat.MEASURED_STATE_MASK;
        } else if (TextUtils.isEmpty(aVar.f72940a)) {
            return;
        } else {
            i14 = aVar.f72951l ? aVar.f72952m : bVar.f13322c;
        }
        if (a(this.f13423i, aVar.f72940a) && Objects.equals(this.f13424j, aVar.f72941b) && this.f13425k == aVar.f72943d && this.f13426l == aVar.f72944e && this.f13427m == aVar.f72945f && Integer.valueOf(this.f13428n).equals(Integer.valueOf(aVar.f72946g)) && this.f13429o == aVar.f72947h && Integer.valueOf(this.f13430p).equals(Integer.valueOf(aVar.f72948i)) && this.f13431q == aVar.f72949j && this.f13432r == aVar.f72950k && this.f13433s == bVar.f13320a && this.f13434t == bVar.f13321b && this.f13435u == i14 && this.f13437w == bVar.f13323d && this.f13436v == bVar.f13324e && Objects.equals(this.f13420f.getTypeface(), bVar.f13325f) && this.f13438x == f10 && this.f13439y == f11 && this.f13440z == f12 && this.A == i10 && this.B == i11 && this.C == i12 && this.D == i13) {
            d(canvas, z10);
            return;
        }
        this.f13423i = aVar.f72940a;
        this.f13424j = aVar.f72941b;
        this.f13425k = aVar.f72943d;
        this.f13426l = aVar.f72944e;
        this.f13427m = aVar.f72945f;
        this.f13428n = aVar.f72946g;
        this.f13429o = aVar.f72947h;
        this.f13430p = aVar.f72948i;
        this.f13431q = aVar.f72949j;
        this.f13432r = aVar.f72950k;
        this.f13433s = bVar.f13320a;
        this.f13434t = bVar.f13321b;
        this.f13435u = i14;
        this.f13437w = bVar.f13323d;
        this.f13436v = bVar.f13324e;
        this.f13420f.setTypeface(bVar.f13325f);
        this.f13438x = f10;
        this.f13439y = f11;
        this.f13440z = f12;
        this.A = i10;
        this.B = i11;
        this.C = i12;
        this.D = i13;
        if (z10) {
            androidx.media3.common.util.a.e(this.f13423i);
            g();
        } else {
            androidx.media3.common.util.a.e(this.f13425k);
            f();
        }
        d(canvas, z10);
    }
}
