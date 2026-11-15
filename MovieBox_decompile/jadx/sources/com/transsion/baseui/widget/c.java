package com.transsion.baseui.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.style.ImageSpan;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class c extends ImageSpan {

    private final TextView f42431a;

    private final int f42432b;

    private final WeakReference f42433c;

    private Animatable f42434d;

    private Rect f42435e;

    private final Handler f42436f;

    private Runnable f42437g;

    private boolean f42438h;

    private final a f42439i;

    private ViewTreeObserver f42440j;

    private final ViewTreeObserver.OnPreDrawListener f42441k;

    public static final class a implements Drawable.Callback {
        a() {
        }

        /* JADX WARN: Code duplicated, block: B:13:0x0020  */
        /* JADX WARN: Code duplicated, block: B:15:0x0026  */
        public static final void b(c cVar) {
            TextView textView;
            Unit unit;
            if (cVar.f42438h) {
                cVar.f42437g = null;
                return;
            }
            Rect rect = cVar.f42435e;
            if (rect == null) {
                textView = cVar.f42431a;
                if (textView != null) {
                    textView.invalidate();
                    Unit unit2 = Unit.f64096a;
                }
            } else {
                TextView textView2 = cVar.f42431a;
                if (textView2 != null) {
                    textView2.invalidate(rect);
                    unit = Unit.f64096a;
                } else {
                    unit = null;
                }
                if (unit == null) {
                    textView = cVar.f42431a;
                    if (textView != null) {
                        textView.invalidate();
                        Unit unit3 = Unit.f64096a;
                    }
                }
            }
            cVar.f42437g = null;
        }

        @Override
        public void invalidateDrawable(Drawable who) {
            Intrinsics.h(who, "who");
            if (c.this.f42438h) {
                return;
            }
            Runnable runnable = c.this.f42437g;
            if (runnable != null) {
                c.this.f42436f.removeCallbacks(runnable);
            }
            final c cVar = c.this;
            cVar.f42437g = new Runnable() {
                @Override
                public final void run() {
                    c.a.b(cVar);
                }
            };
            Handler handler = c.this.f42436f;
            Runnable runnable2 = c.this.f42437g;
            Intrinsics.e(runnable2);
            handler.postDelayed(runnable2, 16L);
        }

        @Override
        public void scheduleDrawable(Drawable who, Runnable what, long j10) {
            Intrinsics.h(who, "who");
            Intrinsics.h(what, "what");
        }

        @Override
        public void unscheduleDrawable(Drawable who, Runnable what) {
            Intrinsics.h(who, "who");
            Intrinsics.h(what, "what");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public c(Drawable drawable, TextView textView, int i10, int i11) {
        super(drawable, i10);
        Intrinsics.h(drawable, "drawable");
        this.f42431a = textView;
        this.f42432b = i11;
        this.f42433c = new WeakReference(drawable);
        this.f42436f = new Handler(Looper.getMainLooper());
        a aVar = new a();
        this.f42439i = aVar;
        this.f42441k = new ViewTreeObserver.OnPreDrawListener() {
            @Override
            public final boolean onPreDraw() {
                return c.i(this.f42429a);
            }
        };
        if (drawable instanceof Animatable) {
            this.f42434d = (Animatable) drawable;
            drawable.setCallback(aVar);
            l();
            j();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void h(Drawable drawable) {
        if (drawable instanceof Animatable) {
            if (!Intrinsics.c(drawable.getCallback(), this.f42439i)) {
                drawable.setCallback(this.f42439i);
            }
            Animatable animatable = (Animatable) drawable;
            if (animatable.isRunning()) {
                return;
            }
            animatable.start();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean i(c cVar) {
        TextView textView;
        Drawable drawable = (Drawable) cVar.f42433c.get();
        if (!(drawable instanceof Animatable) || ((Animatable) drawable).isRunning() || cVar.f42438h || (textView = cVar.f42431a) == null || textView.getVisibility() != 0 || !cVar.f42431a.isShown()) {
            return true;
        }
        cVar.h(drawable);
        return true;
    }

    private final void j() {
        ViewTreeObserver viewTreeObserver;
        TextView textView = this.f42431a;
        if (textView == null || (viewTreeObserver = textView.getViewTreeObserver()) == null) {
            return;
        }
        if (!viewTreeObserver.isAlive()) {
            viewTreeObserver = null;
        }
        if (viewTreeObserver != null) {
            this.f42440j = viewTreeObserver;
            viewTreeObserver.addOnPreDrawListener(this.f42441k);
        }
    }

    private final void l() {
        TextView textView;
        Object obj = (Drawable) this.f42433c.get();
        if ((obj instanceof Animatable) && (textView = this.f42431a) != null && textView.getVisibility() == 0 && this.f42431a.isShown()) {
            Animatable animatable = (Animatable) obj;
            if (animatable.isRunning()) {
                return;
            }
            animatable.start();
        }
    }

    private final void n() {
        ViewTreeObserver viewTreeObserver = this.f42440j;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                viewTreeObserver = null;
            }
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnPreDrawListener(this.f42441k);
            }
        }
        this.f42440j = null;
    }

    private final void o(float f10, int i10, int i11, int i12, Paint paint, Drawable drawable) {
        int iHeight;
        int verticalAlignment = getVerticalAlignment();
        if (verticalAlignment == 0) {
            iHeight = i12 - drawable.getBounds().bottom;
        } else if (verticalAlignment != 1) {
            Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
            int i13 = fontMetricsInt.descent;
            iHeight = ((i11 + i13) - ((i13 - fontMetricsInt.ascent) / 2)) - (drawable.getBounds().height() / 2);
        } else {
            iHeight = (i11 - drawable.getBounds().bottom) + paint.getFontMetricsInt().descent;
        }
        int i14 = (int) f10;
        this.f42435e = new Rect(i14, iHeight, drawable.getBounds().width() + i14, drawable.getBounds().height() + iHeight);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x0081  */
    /* JADX WARN: Code duplicated, block: B:30:0x008a  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void draw(Canvas canvas, CharSequence text, int i10, int i11, float f10, int i12, int i13, int i14, Paint paint) {
        int iHeight;
        Animatable animatable;
        Intrinsics.h(canvas, "canvas");
        Intrinsics.h(text, "text");
        Intrinsics.h(paint, "paint");
        Drawable drawable = (Drawable) this.f42433c.get();
        if (drawable == 0) {
            return;
        }
        if (this.f42438h) {
            o(f10, i12, i13, i14, paint, drawable);
            return;
        }
        o(f10, i12, i13, i14, paint, drawable);
        if (drawable instanceof Animatable) {
            TextView textView = this.f42431a;
            boolean z10 = textView != null && textView.getVisibility() == 0 && this.f42431a.isShown();
            if (z10 && !Intrinsics.c(drawable.getCallback(), this.f42439i)) {
                drawable.setCallback(this.f42439i);
            }
            if (z10) {
                Animatable animatable2 = (Animatable) drawable;
                if (!animatable2.isRunning()) {
                    animatable2.start();
                } else if (!z10) {
                    animatable = (Animatable) drawable;
                    if (animatable.isRunning()) {
                        animatable.stop();
                    }
                }
            } else if (!z10) {
                animatable = (Animatable) drawable;
                if (animatable.isRunning()) {
                    animatable.stop();
                }
            }
        }
        canvas.save();
        int verticalAlignment = getVerticalAlignment();
        if (verticalAlignment == 0) {
            iHeight = i14 - drawable.getBounds().bottom;
        } else if (verticalAlignment != 1) {
            Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
            int i15 = fontMetricsInt.descent;
            iHeight = ((i13 + i15) - ((i15 - fontMetricsInt.ascent) / 2)) - (drawable.getBounds().height() / 2);
        } else {
            iHeight = (i13 - drawable.getBounds().bottom) + paint.getFontMetricsInt().descent;
        }
        canvas.translate(f10, iHeight);
        drawable.draw(canvas);
        canvas.restore();
    }

    @Override
    public int getSize(Paint paint, CharSequence text, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        Intrinsics.h(paint, "paint");
        Intrinsics.h(text, "text");
        Drawable drawable = (Drawable) this.f42433c.get();
        if (drawable == null) {
            return 0;
        }
        Rect bounds = drawable.getBounds();
        Intrinsics.g(bounds, "getBounds(...)");
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt2 = paint.getFontMetricsInt();
            int verticalAlignment = getVerticalAlignment();
            if (verticalAlignment == 0 || verticalAlignment == 1) {
                fontMetricsInt.ascent = fontMetricsInt2.ascent;
                fontMetricsInt.descent = fontMetricsInt2.descent;
                fontMetricsInt.top = fontMetricsInt2.top;
                fontMetricsInt.bottom = fontMetricsInt2.bottom;
            } else {
                int iHeight = bounds.height() / 2;
                int i12 = (fontMetricsInt2.descent - fontMetricsInt2.ascent) / 4;
                int i13 = (-iHeight) - i12;
                fontMetricsInt.ascent = i13;
                fontMetricsInt.top = i13;
                int i14 = iHeight - i12;
                fontMetricsInt.bottom = i14;
                fontMetricsInt.descent = i14;
            }
        }
        return bounds.right + this.f42432b;
    }

    public final void k() {
        this.f42438h = false;
        Drawable drawable = (Drawable) this.f42433c.get();
        if (drawable != null && !Intrinsics.c(drawable.getCallback(), this.f42439i)) {
            drawable.setCallback(this.f42439i);
        }
        l();
        j();
    }

    public final void m() {
        this.f42438h = true;
        Runnable runnable = this.f42437g;
        if (runnable != null) {
            this.f42436f.removeCallbacks(runnable);
            this.f42437g = null;
        }
        n();
        Animatable animatable = this.f42434d;
        if (animatable != null) {
            animatable.stop();
        }
        Drawable drawable = (Drawable) this.f42433c.get();
        if (drawable == null || !Intrinsics.c(drawable.getCallback(), this.f42439i)) {
            return;
        }
        drawable.setCallback(null);
    }
}
