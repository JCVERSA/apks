package com.mbridge.msdk.dycreator.baseview.cusview;

import android.content.Context;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

public class MBRotationView extends FrameLayout {

    private Camera f33738a;

    private Matrix f33739b;

    private int f33740c;

    private int f33741d;

    private int f33742e;

    private int f33743f;

    private int f33744g;

    private int f33745h;

    private int f33746i;

    private int f33747j;

    private float f33748k;

    private float f33749l;

    private boolean f33750m;

    private boolean f33751n;

    private boolean f33752o;

    Runnable f33753p;

    public MBRotationView(Context context) {
        super(context);
        this.f33742e = 40;
        this.f33743f = 20;
        this.f33744g = 0;
        this.f33745h = 0;
        this.f33747j = 0;
        this.f33748k = 0.5f;
        this.f33749l = 0.9f;
        this.f33750m = true;
        this.f33751n = false;
        this.f33752o = false;
        this.f33753p = new Runnable() {
            @Override
            public void run() {
                MBRotationView.this.b();
            }
        };
        a();
    }

    private void b(Canvas canvas) {
        int height = getHeight() / 2;
        int i10 = ((this.f33744g * this.f33740c) / 2) / this.f33742e;
        a(canvas, i10, height, 0);
        a(canvas, i10, height, 1);
        if (Math.abs(this.f33744g) > this.f33742e / 2) {
            a(canvas, i10, height, 3);
            a(canvas, i10, height, 2);
        } else {
            a(canvas, i10, height, 2);
            a(canvas, i10, height, 3);
        }
    }

    private int c(int i10) {
        int i11;
        int i12;
        int i13;
        if (i10 == 0) {
            i11 = this.f33752o ? this.f33745h - 2 : this.f33745h + 2;
        } else if (i10 != 1) {
            if (i10 != 2) {
                i11 = i10 != 3 ? 0 : this.f33745h;
            } else if (this.f33752o) {
                i12 = this.f33745h;
                i11 = i12 - 1;
            } else {
                i13 = this.f33745h;
                i11 = i13 + 1;
            }
        } else if (this.f33752o) {
            i13 = this.f33745h;
            i11 = i13 + 1;
        } else {
            i12 = this.f33745h;
            i11 = i12 - 1;
        }
        int childCount = i11 % getChildCount();
        return childCount >= 0 ? childCount : childCount + getChildCount();
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
        if (getChildCount() == 0) {
            return;
        }
        if (this.f33751n) {
            b(canvas);
        } else {
            a(canvas);
        }
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14 = i12 - i10;
        float f10 = i14;
        float f11 = this.f33748k;
        int i15 = (int) (((1.0f - f11) * f10) / 2.0f);
        int i16 = i13 - i11;
        float f12 = i16;
        float f13 = this.f33749l;
        int i17 = (int) (((1.0f - f13) * f12) / 2.0f);
        this.f33740c = (int) (f12 * f13);
        this.f33741d = (int) (f10 * f11);
        int childCount = getChildCount();
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt = getChildAt(i18);
            childAt.layout(i15, i17, i14 - i15, i16 - i17);
            childAt.setClickable(true);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            int i19 = layoutParams.width;
            int i20 = this.f33741d;
            if (i19 != i20) {
                layoutParams.width = i20;
                layoutParams.height = this.f33740c;
                childAt.setLayoutParams(layoutParams);
            }
        }
    }

    public void setAutoscroll(boolean z10) {
        if (z10) {
            postDelayed(this.f33753p, 1000 / this.f33743f);
        }
        this.f33750m = z10;
    }

    public void setHeightRatio(float f10) {
        this.f33749l = f10;
    }

    public void setRotateV(boolean z10) {
        this.f33751n = z10;
        invalidate();
    }

    public void setWidthRatio(float f10) {
        this.f33748k = f10;
    }

    private void a() {
        this.f33738a = new Camera();
        this.f33739b = new Matrix();
        setWillNotDraw(false);
    }

    private void a(Canvas canvas) {
        int width = getWidth() / 2;
        int i10 = ((this.f33744g * this.f33741d) / 2) / this.f33742e;
        b(canvas, i10, width, 0);
        b(canvas, i10, width, 1);
        if (Math.abs(this.f33744g) > this.f33742e / 2) {
            b(canvas, i10, width, 3);
            b(canvas, i10, width, 2);
        } else {
            b(canvas, i10, width, 2);
            b(canvas, i10, width, 3);
        }
    }

    private void b(int i10, int i11, int i12) {
        float f10 = (-i10) / 2.0f;
        if (i12 == 0) {
            this.f33738a.translate(0.0f, f10, 0.0f);
            float f11 = -i11;
            this.f33738a.rotateX(f11);
            this.f33738a.translate(0.0f, f10, 0.0f);
            this.f33738a.translate(0.0f, f10, 0.0f);
            this.f33738a.rotateX(f11);
            this.f33738a.translate(0.0f, f10, 0.0f);
            return;
        }
        if (i12 == 1) {
            this.f33738a.translate(0.0f, f10, 0.0f);
            this.f33738a.rotateX(i11);
            this.f33738a.translate(0.0f, f10, 0.0f);
        } else if (i12 != 2) {
            if (i12 != 3) {
                return;
            }
            this.f33738a.rotateX(0.0f);
        } else {
            this.f33738a.translate(0.0f, f10, 0.0f);
            this.f33738a.rotateX(-i11);
            this.f33738a.translate(0.0f, f10, 0.0f);
        }
    }

    public MBRotationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f33742e = 40;
        this.f33743f = 20;
        this.f33744g = 0;
        this.f33745h = 0;
        this.f33747j = 0;
        this.f33748k = 0.5f;
        this.f33749l = 0.9f;
        this.f33750m = true;
        this.f33751n = false;
        this.f33752o = false;
        this.f33753p = new Runnable() {
            @Override
            public void run() {
                MBRotationView.this.b();
            }
        };
        a();
    }

    private void a(Canvas canvas, int i10, int i11, int i12) {
        canvas.save();
        this.f33738a.save();
        this.f33739b.reset();
        float f10 = i10;
        this.f33738a.translate(0.0f, f10, 0.0f);
        this.f33738a.rotateX(this.f33744g);
        this.f33738a.translate(0.0f, f10, 0.0f);
        if (i10 == 0) {
            if (this.f33752o) {
                b(this.f33740c, this.f33742e, i12);
            } else {
                b(-this.f33740c, -this.f33742e, i12);
            }
        } else if (i10 > 0) {
            b(this.f33740c, this.f33742e, i12);
        } else if (i10 < 0) {
            b(-this.f33740c, -this.f33742e, i12);
        }
        this.f33738a.getMatrix(this.f33739b);
        this.f33738a.restore();
        this.f33739b.preTranslate((-getWidth()) / 2, -i11);
        this.f33739b.postTranslate(getWidth() / 2, i11);
        canvas.concat(this.f33739b);
        View childAt = getChildAt(c(i12));
        if (childAt != null) {
            drawChild(canvas, childAt, 0L);
        }
        canvas.restore();
    }

    public void b() {
        if (getChildCount() == 0) {
            return;
        }
        int i10 = this.f33744g - 1;
        this.f33744g = i10;
        this.f33746i = this.f33745h;
        a(i10);
        if (this.f33750m) {
            postDelayed(this.f33753p, 1000 / this.f33743f);
        }
    }

    public MBRotationView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f33742e = 40;
        this.f33743f = 20;
        this.f33744g = 0;
        this.f33745h = 0;
        this.f33747j = 0;
        this.f33748k = 0.5f;
        this.f33749l = 0.9f;
        this.f33750m = true;
        this.f33751n = false;
        this.f33752o = false;
        this.f33753p = new Runnable() {
            @Override
            public void run() {
                MBRotationView.this.b();
            }
        };
        a();
    }

    private void b(Canvas canvas, int i10, int i11, int i12) {
        canvas.save();
        this.f33738a.save();
        this.f33739b.reset();
        float f10 = i10;
        this.f33738a.translate(f10, 0.0f, 0.0f);
        this.f33738a.rotateY(this.f33744g);
        this.f33738a.translate(f10, 0.0f, 0.0f);
        if (i10 == 0) {
            if (this.f33752o) {
                a(this.f33741d, this.f33742e, i12);
            } else {
                a(-this.f33741d, -this.f33742e, i12);
            }
        } else if (i10 > 0) {
            a(this.f33741d, this.f33742e, i12);
        } else if (i10 < 0) {
            a(-this.f33741d, -this.f33742e, i12);
        }
        this.f33738a.getMatrix(this.f33739b);
        this.f33738a.restore();
        this.f33739b.preTranslate(-i11, (-getHeight()) / 2);
        this.f33739b.postTranslate(i11, getHeight() / 2);
        canvas.concat(this.f33739b);
        View childAt = getChildAt(c(i12));
        if (childAt != null) {
            drawChild(canvas, childAt, 0L);
        }
        canvas.restore();
    }

    private void a(int i10) {
        int i11 = this.f33742e;
        int i12 = this.f33746i - (i10 / i11);
        this.f33744g = i10 % i11;
        b(i12);
        invalidate();
    }

    private void a(int i10, int i11, int i12) {
        if (i12 == 0) {
            float f10 = (-i10) / 2;
            this.f33738a.translate(f10, 0.0f, 0.0f);
            float f11 = -i11;
            this.f33738a.rotateY(f11);
            this.f33738a.translate(f10, 0.0f, 0.0f);
            this.f33738a.translate(f10, 0.0f, 0.0f);
            this.f33738a.rotateY(f11);
            this.f33738a.translate(f10, 0.0f, 0.0f);
            return;
        }
        if (i12 == 1) {
            float f12 = i10 / 2;
            this.f33738a.translate(f12, 0.0f, 0.0f);
            this.f33738a.rotateY(i11);
            this.f33738a.translate(f12, 0.0f, 0.0f);
            return;
        }
        if (i12 != 2) {
            if (i12 != 3) {
                return;
            }
            this.f33738a.rotateY(0.0f);
        } else {
            float f13 = (-i10) / 2;
            this.f33738a.translate(f13, 0.0f, 0.0f);
            this.f33738a.rotateY(-i11);
            this.f33738a.translate(f13, 0.0f, 0.0f);
        }
    }

    private void b(int i10) {
        int iC;
        this.f33745h = i10;
        if (Math.abs(this.f33744g) > this.f33742e / 2) {
            iC = c(2);
        } else {
            iC = c(3);
        }
        if (this.f33747j != iC) {
            this.f33747j = iC;
        }
    }
}
