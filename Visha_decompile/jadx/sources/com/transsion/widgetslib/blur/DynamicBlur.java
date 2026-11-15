package com.transsion.widgetslib.blur;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ScrollView;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.core.widget.NestedScrollView;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import defpackage.bq5;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;

public class DynamicBlur {
    public static final String w = "DynamicBlur";
    public View d;
    public View e;
    public ViewTreeObserver.OnScrollChangedListener f;
    public ViewTreeObserver.OnGlobalLayoutListener g;
    public Canvas h;
    public Bitmap i;
    public BitmapDrawable j;
    public boolean n;
    public Bitmap o;
    public final RenderScript p;
    public final ScriptIntrinsicBlur q;
    public Allocation r;
    public Allocation s;
    public Bitmap t;
    public boolean u;
    public final Rect a = new Rect();
    public final Rect b = new Rect();
    public final Rect c = new Rect();
    public int k = 25;
    public int l = 8;
    public int m = Color.parseColor("#F7F7F7");
    public final Runnable v = new Runnable() {
        @Override
        public void run() {
            if (DynamicBlur.this.g != null) {
                bq5.c(DynamicBlur.w, "viewTreeObserver, onGlobalLayout, runnable delayed remove");
                DynamicBlur.this.n();
                DynamicBlur.this.e.getViewTreeObserver().removeOnGlobalLayoutListener(DynamicBlur.this.g);
            }
        }
    };

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override
        public void onGlobalLayout() {
            bq5.c(DynamicBlur.w, "viewTreeObserver, onGlobalLayout: " + DynamicBlur.this.e);
            DynamicBlur.this.n();
        }
    }

    public class b implements ViewTreeObserver.OnScrollChangedListener {
        public b() {
        }

        @Override
        public void onScrollChanged() {
            DynamicBlur.this.n();
        }
    }

    public interface c {
    }

    public DynamicBlur(Context context) {
        RenderScript renderScriptCreate = RenderScript.create(context);
        this.p = renderScriptCreate;
        this.q = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
    }

    public static boolean e(Bitmap bitmap, Bitmap bitmap2, boolean z) {
        ByteBuffer byteBufferAllocate = null;
        try {
            try {
                byteBufferAllocate = ByteBuffer.allocate(bitmap2.getByteCount());
                bitmap2.copyPixelsToBuffer(byteBufferAllocate);
                bitmap.eraseColor(0);
                bitmap.copyPixelsFromBuffer(ByteBuffer.wrap(byteBufferAllocate.array()));
                if (z && !bitmap2.isRecycled()) {
                    bitmap2.recycle();
                }
                byteBufferAllocate.clear();
                return true;
            } catch (Exception e) {
                bq5.h(w, "copy src form buffer fail!", e);
                if (z && !bitmap2.isRecycled()) {
                    bitmap2.recycle();
                }
                if (byteBufferAllocate == null) {
                    return false;
                }
                byteBufferAllocate.clear();
                return false;
            }
        } catch (Throwable th) {
            if (z && !bitmap2.isRecycled()) {
                bitmap2.recycle();
            }
            if (byteBufferAllocate != null) {
                byteBufferAllocate.clear();
            }
            throw th;
        }
    }

    public final void d() {
        if (this.r == null || this.s == null) {
            return;
        }
        this.q.setRadius(this.k);
        this.r.copyFrom(this.i);
        this.q.setInput(this.r);
        this.q.forEach(this.s);
        this.s.copyTo(this.t);
    }

    public final int f() {
        try {
            Method declaredMethod = View.class.getDeclaredMethod("computeVerticalScrollRange", null);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(this.e, null);
            if (objInvoke instanceof Integer) {
                return ((Integer) objInvoke).intValue();
            }
            return 0;
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            bq5.h(w, "reflect invoke computeVerticalScrollRange() fail!", e);
            return 0;
        }
    }

    public final void g(Bitmap bitmap) {
        k();
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(this.p, bitmap);
        this.r = allocationCreateFromBitmap;
        this.s = Allocation.createTyped(this.p, allocationCreateFromBitmap.getType());
        this.t = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    public final boolean h() {
        boolean zIntersect;
        this.c.set(this.a);
        int paddingBottom = this.e.getPaddingBottom();
        if (this.u) {
            zIntersect = this.c.intersect(this.b.left - this.e.getPaddingStart(), this.b.top - this.e.getPaddingTop(), this.b.right - this.e.getPaddingEnd(), this.b.bottom - paddingBottom);
        } else {
            Rect rect = this.c;
            Rect rect2 = this.b;
            zIntersect = rect.intersect(rect2.left, rect2.top, rect2.right, rect2.bottom);
        }
        bq5.c(w, "RectBlurred: " + this.b.toShortString() + ", RectBlur: " + this.a.toShortString() + ", RectIntersect: " + this.c.toShortString() + ", paddingBottom: " + paddingBottom);
        return zIntersect;
    }

    public final boolean i(View view, Rect rect) {
        int i = rect.left;
        int i2 = rect.top;
        int i3 = rect.right;
        int i4 = rect.bottom;
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i5 = iArr[0];
        int i6 = iArr[1];
        int width = view.getWidth();
        int iF = (view == this.e && this.n) ? f() : view.getHeight();
        rect.left = i5;
        rect.top = i6;
        int i7 = width + i5;
        rect.right = i7;
        int i8 = iF + i6;
        rect.bottom = i8;
        return (i == i5 && i2 == i6 && i3 == i7 && i4 == i8) ? false : true;
    }

    public final Bitmap j() {
        boolean z;
        boolean zI = i(this.d, this.a);
        boolean zI2 = i(this.e, this.b);
        if (!h()) {
            bq5.s(w, "Hasn't intersect region between two views!");
            return null;
        }
        int iWidth = this.c.width();
        int iHeight = this.c.height();
        int iCeil = (int) Math.ceil((iWidth * 1.0f) / this.l);
        int iCeil2 = (int) Math.ceil((iHeight * 1.0f) / this.l);
        if (iCeil <= 0 || iCeil2 <= 0) {
            return null;
        }
        Rect rect = this.b;
        int i = rect.left;
        Rect rect2 = this.c;
        int i2 = i - rect2.left;
        int i3 = rect.top - rect2.top;
        float f = 1.0f / this.l;
        String str = w;
        bq5.p(str, "width: " + iWidth + ", height: " + iHeight + ", dx: " + i2 + ", dy: " + i3 + ", ViewBlurredLocChange: " + zI2 + ", ViewBlurLocChange: " + zI + ", bitmapWidth: " + iCeil + ", bitmapHeight: " + iCeil2);
        if (zI || zI2) {
            l();
        }
        if (this.n) {
            if (this.o == null) {
                int iCeil3 = (int) Math.ceil((this.b.height() * 1.0f) / this.l);
                if (iCeil3 == 0) {
                    return null;
                }
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iCeil, iCeil3, Bitmap.Config.ARGB_4444);
                this.o = bitmapCreateBitmap;
                bitmapCreateBitmap.eraseColor(this.m);
                Canvas canvas = new Canvas(this.o);
                canvas.scale(f, f);
                this.e.draw(canvas);
                z = true;
            } else {
                z = false;
            }
            int scrollY = this.e.getScrollY();
            bq5.p(str, "scrollY: " + scrollY + ", blurred view height: " + this.b.height());
            int i4 = this.l;
            int i5 = (-i2) / i4;
            int i6 = (scrollY - i3) / i4;
            int i7 = iWidth / i4;
            int i8 = iHeight / i4;
            if (i5 < 0 || i6 < 0 || i7 <= 0 || i8 <= 0) {
                bq5.s(str, "pivot or dimen out source bitmap");
                return null;
            }
            if (i5 + i7 > this.o.getWidth() || i6 + i8 > this.o.getHeight()) {
                bq5.s(str, "need dst bitmap dimen over source bitmap");
                return null;
            }
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(this.o, i5, i6, i7, i8);
            Bitmap bitmap = this.i;
            if (bitmap == null) {
                this.i = bitmapCreateBitmap2;
            } else if (!e(bitmap, bitmapCreateBitmap2, true)) {
                return null;
            }
            if (z) {
                g(this.i);
            }
        } else {
            if (this.i == null) {
                this.i = Bitmap.createBitmap(iCeil, iCeil2, Bitmap.Config.ARGB_4444);
                Canvas canvas2 = new Canvas(this.i);
                this.h = canvas2;
                canvas2.scale(f, f);
                this.h.translate(i2, i3);
                g(this.i);
            }
            this.i.eraseColor(this.m);
            this.e.draw(this.h);
        }
        return this.i;
    }

    public final void k() {
        Allocation allocation = this.r;
        if (allocation != null) {
            allocation.destroy();
            this.r = null;
        }
        Allocation allocation2 = this.s;
        if (allocation2 != null) {
            allocation2.destroy();
            this.s = null;
        }
        Bitmap bitmap = this.t;
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                this.t.recycle();
            }
            this.t = null;
        }
    }

    public final void l() {
        this.j = null;
        Bitmap bitmap = this.i;
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                this.i.recycle();
                bq5.p(w, "recycleViewBlurBg, ViewBlurBitmap");
            }
            this.i = null;
        }
        Bitmap bitmap2 = this.o;
        if (bitmap2 != null) {
            if (!bitmap2.isRecycled()) {
                this.o.recycle();
                bq5.p(w, "recycleViewBlurBg, ScrollViewBitmap");
            }
            this.o = null;
        }
        k();
    }

    public void m() {
        View view = this.e;
        if (view != null && this.f != null) {
            view.getViewTreeObserver().removeOnScrollChangedListener(this.f);
            this.e.getViewTreeObserver().removeOnGlobalLayoutListener(this.g);
            this.e.removeCallbacks(this.v);
            this.g = null;
            this.f = null;
        }
        l();
    }

    public void n() {
        Bitmap bitmapJ;
        if (this.d == null || this.e == null || (bitmapJ = j()) == null || bitmapJ.isRecycled()) {
            return;
        }
        d();
        o(this.t);
    }

    public final void o(Bitmap bitmap) {
        BitmapDrawable bitmapDrawable = this.j;
        if (bitmapDrawable != null) {
            this.d.invalidateDrawable(bitmapDrawable);
            bq5.p(w, "updateBlurViewBackground, 22222");
            return;
        }
        BitmapDrawable bitmapDrawable2 = new BitmapDrawable(this.d.getResources(), bitmap);
        this.j = bitmapDrawable2;
        this.d.setBackground(bitmapDrawable2);
        bq5.p(w, "updateBlurViewBackground, 11111: " + this.j);
    }

    public void setBlurView(View view) {
        bq5.p(w, "setBlurView, viewBlur: " + view);
        if (view == null || view == this.d) {
            return;
        }
        this.d = view;
        this.a.setEmpty();
    }

    public void setBlurredView(View view) {
        if (view == null) {
            return;
        }
        m();
        this.e = view;
        this.n = (view instanceof NestedScrollView) || (view instanceof ScrollView) || (view instanceof OverBoundNestedScrollView);
        this.u = (view instanceof ViewGroup) && ((ViewGroup) view).getClipToPadding();
        bq5.p(w, "setBlurredView, blurredView: " + view + ", clipToPadding: " + this.u + ", paddingBottom: " + this.e.getPaddingBottom());
        if (this.g == null) {
            this.g = new a();
            this.e.getViewTreeObserver().addOnGlobalLayoutListener(this.g);
            this.e.removeCallbacks(this.v);
            this.e.postDelayed(this.v, 2000L);
        }
        if (this.f == null) {
            this.f = new b();
            this.e.getViewTreeObserver().addOnScrollChangedListener(this.f);
        }
    }

    public void setCallback(c cVar) {
    }

    public void setEraseColor(@ColorInt int i) {
        if (i != 0) {
            this.m = i;
        }
    }

    public void setRadius(@IntRange(from = 1, to = 25) int i) {
        if (i < 1 || i > 25) {
            return;
        }
        this.k = i;
    }

    public void setScaleFactor(@IntRange(from = 1) int i) {
        if (i >= 1) {
            this.l = i;
        }
    }
}
