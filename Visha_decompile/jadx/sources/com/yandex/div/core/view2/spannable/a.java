package com.yandex.div.core.view2.spannable;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import defpackage.hd8;
import defpackage.s86;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class a extends hd8 {
    public final int b;
    public final int c;
    public final int d;
    public final TextVerticalAlignment e;
    public final C0293a f;
    public Drawable g;
    public final RectF h;

    public static final class C0293a {
        public final String a;
        public final String b;
        public final b c;

        public C0293a(String str, String str2, b bVar) {
            this.a = str;
            this.b = str2;
            this.c = bVar;
        }

        public final String a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public final b c() {
            return this.c;
        }
    }

    public interface b {
        void a();
    }

    public class c {
        public static final int[] a;

        static {
            int[] iArr = new int[TextVerticalAlignment.values().length];
            try {
                iArr[TextVerticalAlignment.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TextVerticalAlignment.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TextVerticalAlignment.BASELINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TextVerticalAlignment.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    public a(Drawable drawable, int i, int i2, int i3, TextVerticalAlignment textVerticalAlignment, C0293a c0293a) {
        y45.j(textVerticalAlignment, "alignment");
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = textVerticalAlignment;
        this.f = c0293a;
        this.g = drawable;
        this.h = new RectF();
    }

    @Override
    public int a(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        Rect bounds;
        Rect bounds2;
        y45.j(paint, "paint");
        y45.j(charSequence, "text");
        if (fontMetricsInt == null || this.d > 0) {
            return this.b;
        }
        int iC = s86.c(paint.ascent());
        int iC2 = s86.c(paint.descent());
        Drawable drawable = this.g;
        int iHeight = (drawable == null || (bounds2 = drawable.getBounds()) == null) ? this.c : bounds2.height();
        int i3 = c.a[this.e.ordinal()];
        if (i3 == 1) {
            iC2 = iC + iHeight;
        } else if (i3 == 2) {
            iC2 = ((iC + iC2) + iHeight) / 2;
        } else if (i3 == 3) {
            iC2 = 0;
        } else if (i3 != 4) {
            throw new NoWhenBranchMatchedException();
        }
        int i4 = iC2 - iHeight;
        int i5 = fontMetricsInt.top;
        int i6 = fontMetricsInt.ascent;
        int i7 = fontMetricsInt.bottom - fontMetricsInt.descent;
        fontMetricsInt.ascent = Math.min(i4, i6);
        int iMax = Math.max(iC2, fontMetricsInt.descent);
        fontMetricsInt.descent = iMax;
        fontMetricsInt.top = fontMetricsInt.ascent + (i5 - i6);
        fontMetricsInt.bottom = iMax + i7;
        Drawable drawable2 = this.g;
        return (drawable2 == null || (bounds = drawable2.getBounds()) == null) ? this.b : bounds.width();
    }

    public final C0293a c() {
        return this.f;
    }

    public final Rect d(Rect rect) {
        y45.j(rect, "rect");
        rect.set(s86.c(this.h.left), s86.c(this.h.top), s86.c(this.h.right), s86.c(this.h.bottom));
        return rect;
    }

    @Override
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        y45.j(canvas, "canvas");
        y45.j(charSequence, "text");
        y45.j(paint, "paint");
        Drawable drawable = this.g;
        if (drawable == null) {
            return;
        }
        canvas.save();
        int iHeight = drawable.getBounds().height();
        int i6 = c.a[this.e.ordinal()];
        if (i6 == 1) {
            i4 = i3 + iHeight;
        } else if (i6 == 2) {
            i4 = ((i3 + i5) + iHeight) / 2;
        } else if (i6 != 3) {
            if (i6 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            i4 = i5;
        }
        float f2 = i4 - iHeight;
        this.h.set(drawable.getBounds());
        this.h.offset(f, f2);
        canvas.translate(f, f2);
        drawable.draw(canvas);
        canvas.restore();
    }

    public final RectF e(RectF rectF) {
        y45.j(rectF, "rect");
        rectF.set(this.h);
        return rectF;
    }

    public final void f(Drawable drawable) {
        if (y45.e(this.g, drawable)) {
            return;
        }
        this.g = drawable;
        if (drawable != null) {
            drawable.setBounds(0, 0, this.b, this.c);
        }
        this.h.setEmpty();
    }
}
