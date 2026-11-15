package com.transsion.video_edit;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.content.res.ResourcesCompat;
import defpackage.e39;
import defpackage.olb;

public class ThumbnailSelectorBar extends View {
    public String A;
    public String B;
    public int C;
    public int D;
    public DRAGMODE E;
    public long F;
    public b.a G;
    public a H;
    public Paint b;
    public int c;
    public int d;
    public Rect e;
    public Rect f;
    public Rect g;
    public Rect h;
    public Rect i;
    public Drawable j;
    public Drawable k;
    public Drawable l;
    public Paint m;
    public boolean n;
    public Matrix o;
    public Matrix p;
    public int pointer_offy;
    public boolean q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public int y;
    public int z;

    public enum DRAGMODE {
        LEFT,
        RIGHT,
        SEEK,
        NONE
    }

    public interface a {
        void e(boolean z, boolean z2, boolean z3, long... jArr);

        void f(long j);
    }

    public ThumbnailSelectorBar(Context context) {
        this(context, null);
    }

    private void setPointer(long j) {
        int iA = this.G.a(j) + this.i.left;
        int i = this.u;
        int i2 = iA - (i / 2);
        Rect rect = this.e;
        rect.left = i2;
        rect.right = i + i2;
    }

    public final void a(MotionEvent motionEvent) {
        if (this.q) {
            motionEvent.transform(this.p);
        }
    }

    public final void b() {
        Paint paint = new Paint();
        this.b = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.b.setColor(-1);
        this.b.setStrokeWidth(4.0f);
        this.b.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.m = paint2;
        paint2.setColor(-1277239586);
        int iA = e39.a(getContext(), 10.0f);
        this.x = iA;
        this.m.setTextSize(iA);
        this.m.setTextAlign(Paint.Align.CENTER);
        this.m.setAntiAlias(true);
        this.k = ResourcesCompat.getDrawable(getResources(), R.drawable.edit_drag_left, null);
        this.l = ResourcesCompat.getDrawable(getResources(), R.drawable.edit_drag_right, null);
        this.j = ResourcesCompat.getDrawable(getResources(), R.drawable.edit_center_seek_bar, getContext().getTheme());
        this.k.setBounds(this.f);
        this.l.setBounds(this.g);
        this.j.setBounds(this.e);
        this.pointer_offy = e39.a(getContext(), 2.0f);
        this.y = e39.d(getContext());
        this.z = e39.c(getContext());
        boolean zC = c();
        this.q = zC;
        if (zC) {
            this.o = new Matrix();
            this.p = new Matrix();
            this.o.setTranslate(this.y, 0.0f);
            this.o.preScale(-1.0f, 1.0f, 0.0f, 0.0f);
            this.o.invert(this.p);
        }
    }

    public boolean c() {
        return olb.l0();
    }

    public final void d() {
        long jB = this.G.b(this.e.centerX() - this.i.left);
        a aVar = this.H;
        if (aVar != null) {
            aVar.f(jB);
        }
    }

    public final String e(long j) {
        return b.a(Math.round(j));
    }

    public final void f(long j, b.a aVar, boolean z, boolean z2, boolean z3) {
        this.F = j;
        this.G = aVar;
        g(z, z2, z3);
    }

    public final void g(boolean z, boolean z2, boolean z3) {
        try {
            long jB = this.F + this.G.b(this.i.left);
            long jB2 = this.F + this.G.b(this.i.right + 1);
            h(jB, jB2);
            a aVar = this.H;
            if (aVar != null) {
                aVar.e(z, z2, z3, jB, jB2);
            }
            invalidate();
        } catch (Exception e) {
            Log.e("ThumbnailSelectorBar", "updateTime error" + e.getMessage());
        }
    }

    public int getLeftSpace() {
        return this.v + this.r;
    }

    public int getRightSpace() {
        return this.w + this.r;
    }

    public long[] getSelectedValue(long j, long j2) {
        Rect rect = this.i;
        return new long[]{(((long) rect.left) * j2) + j, j + (((long) rect.right) * j2)};
    }

    public long getSelectedValueDuration() {
        return this.G.b(this.i.width());
    }

    public int getValueSpace() {
        return this.h.width();
    }

    public final void h(long j, long j2) {
        this.A = e(j);
        this.B = e(j2);
    }

    @Override
    public void onDraw(Canvas canvas) {
        int iSave;
        super.onDraw(canvas);
        if (this.q) {
            iSave = canvas.save();
            canvas.translate(this.y, 0.0f);
            canvas.scale(-1.0f, 1.0f, 0.0f, 0.0f);
        } else {
            iSave = 0;
        }
        canvas.save();
        canvas.clipOutRect(this.i);
        canvas.drawColor(this.c);
        canvas.restore();
        canvas.save();
        canvas.clipRect(this.i);
        canvas.drawRect(this.i, this.b);
        canvas.restore();
        this.k.setBounds(this.f);
        this.l.setBounds(this.g);
        if (this.n) {
            this.j.setBounds(this.e);
            this.j.draw(canvas);
        }
        this.k.draw(canvas);
        this.l.draw(canvas);
        if (this.q) {
            canvas.restoreToCount(iSave);
        }
        if (this.E == DRAGMODE.LEFT) {
            Rect rect = this.i;
            int i = rect.left;
            if (this.q) {
                i = this.y - i;
            }
            canvas.drawText(this.A, i, rect.bottom + this.x, this.m);
        }
        if (this.E == DRAGMODE.RIGHT) {
            Rect rect2 = this.i;
            int i2 = rect2.right;
            if (this.q) {
                i2 = this.y - i2;
            }
            canvas.drawText(this.B, i2, rect2.bottom + this.x, this.m);
        }
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int i3 = this.s;
        int i4 = (measuredHeight - i3) / 2;
        int i5 = this.r;
        int i6 = this.v;
        int i7 = (((measuredWidth - i5) - i6) - i5) - this.w;
        Rect rect = this.h;
        rect.top = i4;
        rect.bottom = i3 + i4;
        int i8 = i6 + i5;
        rect.left = i8;
        rect.right = i8 + i7;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            if (this.q) {
                motionEvent.transform(this.o);
            }
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int i = action & 255;
            if (i == 0) {
                if (this.f.contains(x, y)) {
                    this.C = x;
                    this.D = y;
                    this.E = DRAGMODE.LEFT;
                    a(motionEvent);
                    return true;
                }
                if (this.g.contains(x, y)) {
                    this.C = x;
                    this.D = y;
                    this.E = DRAGMODE.RIGHT;
                    a(motionEvent);
                    return true;
                }
                if (!this.e.contains(x, y)) {
                    a(motionEvent);
                    return false;
                }
                this.C = x;
                this.D = y;
                d();
                this.E = DRAGMODE.SEEK;
                a(motionEvent);
                return true;
            }
            if (i == 1) {
                DRAGMODE dragmode = this.E;
                if (dragmode == DRAGMODE.LEFT) {
                    this.E = DRAGMODE.NONE;
                    g(true, true, true);
                    a(motionEvent);
                    return true;
                }
                if (dragmode == DRAGMODE.RIGHT) {
                    this.E = DRAGMODE.NONE;
                    g(true, false, true);
                    a(motionEvent);
                    return true;
                }
                if (dragmode == DRAGMODE.SEEK) {
                    d();
                    this.E = DRAGMODE.NONE;
                    a(motionEvent);
                    return true;
                }
            } else if (i == 2) {
                int i2 = x - this.C;
                if (i2 != 0 && this.E == DRAGMODE.LEFT) {
                    Rect rect = this.i;
                    int i3 = rect.left + i2;
                    rect.left = i3;
                    int i4 = rect.right;
                    if (i4 < i3) {
                        rect.left = i4;
                    } else {
                        int i5 = this.v;
                        int i6 = this.r;
                        if (i3 < i5 + i6) {
                            rect.left = i5 + i6;
                        }
                    }
                    Rect rect2 = this.f;
                    int i7 = rect.left;
                    rect2.right = i7;
                    rect2.left = i7 - this.r;
                    this.n = false;
                    g(false, true, true);
                    this.C = x;
                    this.D = y;
                    invalidate();
                    a(motionEvent);
                    return true;
                }
                if (i2 != 0 && this.E == DRAGMODE.RIGHT) {
                    Rect rect3 = this.i;
                    int i8 = rect3.right + i2;
                    rect3.right = i8;
                    int i9 = rect3.left;
                    if (i8 < i9) {
                        rect3.right = i9;
                    } else {
                        int i10 = this.h.right;
                        if (i8 > i10) {
                            rect3.right = i10;
                        }
                    }
                    Rect rect4 = this.g;
                    int i11 = rect3.right;
                    rect4.left = i11;
                    rect4.right = i11 + this.r;
                    this.n = false;
                    g(false, false, true);
                    this.C = x;
                    this.D = y;
                    invalidate();
                    a(motionEvent);
                    return true;
                }
                if (this.n && i2 != 0 && this.E == DRAGMODE.SEEK) {
                    this.e.offset(i2, 0);
                    int iCenterX = this.e.centerX();
                    Rect rect5 = this.i;
                    int i12 = rect5.right;
                    if (iCenterX > i12) {
                        this.e.offset(i12 - iCenterX, 0);
                    } else {
                        int i13 = rect5.left;
                        if (iCenterX < i13) {
                            this.e.offset(i13 - iCenterX, 0);
                        }
                    }
                    d();
                    this.C = x;
                    this.D = y;
                    invalidate();
                    a(motionEvent);
                }
            }
            a(motionEvent);
            return super.onTouchEvent(motionEvent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void seekTime(long j) {
        setPointer(j);
        this.n = true;
        invalidate();
    }

    public void setOnSeekListener(a aVar) {
        this.H = aVar;
    }

    public void setValueTime(long j, long j2, b.a aVar) {
        this.F = j;
        this.G = aVar;
        int iRound = Math.round(aVar.a(j2));
        this.i.left = getLeftSpace();
        Rect rect = this.i;
        int i = rect.left + iRound;
        rect.right = i;
        Rect rect2 = this.h;
        rect.top = rect2.top;
        rect.bottom = rect2.bottom;
        Rect rect3 = this.g;
        rect3.left = i;
        int i2 = this.r;
        rect3.right = i + i2;
        rect3.top = rect2.top;
        rect3.bottom = rect2.bottom;
        Rect rect4 = this.f;
        int i3 = this.v;
        rect4.left = i3;
        int i4 = i3 + i2;
        rect4.right = i4;
        rect4.top = rect.top;
        rect4.bottom = rect.bottom;
        Rect rect5 = this.e;
        int i5 = this.u;
        int i6 = i4 - (i5 / 2);
        rect5.left = i6;
        rect5.right = i6 + i5;
        int i7 = rect.bottom + this.pointer_offy;
        rect5.bottom = i7;
        rect5.top = i7 - this.t;
        h(0L, j2);
        invalidate();
    }

    public void updateTimeByStartChanged(long j, boolean z, boolean z2) {
        f(j, this.G, z, z2, false);
    }

    public ThumbnailSelectorBar(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ThumbnailSelectorBar(Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ThumbnailSelectorBar(Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.c = Color.argb(136, 0, 0, 0);
        this.d = Color.argb(0, 0, 0, 0);
        this.e = new Rect();
        this.f = new Rect();
        this.g = new Rect();
        this.h = new Rect();
        this.i = new Rect();
        this.n = true;
        this.q = false;
        this.A = new String(new char[6]);
        this.B = new String(new char[6]);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.EditBarSelector);
        this.v = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.EditBarSelector_android_paddingLeft, 20);
        this.w = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.EditBarSelector_android_paddingRight, 20);
        this.r = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.EditBarSelector_drag_icon_width, 18);
        this.s = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.EditBarSelector_drag_icon_height, 48);
        this.t = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.EditBarSelector_pointer_height, 62);
        this.u = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.EditBarSelector_pointer_width, 10);
        typedArrayObtainStyledAttributes.recycle();
        b();
    }
}
