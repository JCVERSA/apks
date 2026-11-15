package com.yalantis.ucrop.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import defpackage.yv8;

public class GestureCropImageView extends CropImageView {
    public ScaleGestureDetector C;
    public yv8 D;
    public GestureDetector E;
    public float F;
    public float G;
    public boolean H;
    public boolean I;
    public boolean J;
    public int K;

    public class a extends GestureDetector.SimpleOnGestureListener {
        @Override
        public boolean onDoubleTap(MotionEvent motionEvent) {
            GestureCropImageView gestureCropImageView = GestureCropImageView.this;
            gestureCropImageView.o(gestureCropImageView.getDoubleTapTargetScale(), motionEvent.getX(), motionEvent.getY(), 200L);
            return super.onDoubleTap(motionEvent);
        }

        @Override
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            GestureCropImageView.this.postTranslate(-f, -f2);
            return true;
        }

        public a() {
        }
    }

    public class b extends yv8.b {
        @Override
        public boolean a(yv8 yv8Var) {
            GestureCropImageView.this.postRotate(yv8Var.c(), GestureCropImageView.this.F, GestureCropImageView.this.G);
            return true;
        }

        public b() {
        }
    }

    public class c extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        @Override
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            GestureCropImageView.this.postScale(scaleGestureDetector.getScaleFactor(), GestureCropImageView.this.F, GestureCropImageView.this.G);
            return true;
        }

        public c() {
        }
    }

    public GestureCropImageView(Context context) {
        super(context);
        this.H = true;
        this.I = true;
        this.J = true;
        this.K = 5;
    }

    public int getDoubleTapScaleSteps() {
        return this.K;
    }

    public float getDoubleTapTargetScale() {
        return getCurrentScale() * ((float) Math.pow(getMaxScale() / getMinScale(), 1.0f / this.K));
    }

    @Override
    public void init() {
        super.init();
        r();
    }

    public boolean isGestureEnabled() {
        return this.J;
    }

    public boolean isRotateEnabled() {
        return this.H;
    }

    public boolean isScaleEnabled() {
        return this.I;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if ((motionEvent.getAction() & 255) == 0) {
            cancelAllAnimations();
        }
        if (motionEvent.getPointerCount() > 1) {
            this.F = (motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f;
            this.G = (motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f;
        }
        if (this.J) {
            this.E.onTouchEvent(motionEvent);
        }
        if (this.I) {
            this.C.onTouchEvent(motionEvent);
        }
        if (this.H) {
            this.D.d(motionEvent);
        }
        if ((motionEvent.getAction() & 255) == 1) {
            setImageToWrapCropBounds();
        }
        return true;
    }

    public final void r() {
        this.E = new GestureDetector(getContext(), new a(), null, true);
        this.C = new ScaleGestureDetector(getContext(), new c());
        this.D = new yv8(new b());
    }

    public void setDoubleTapScaleSteps(int i) {
        this.K = i;
    }

    public void setGestureEnabled(boolean z) {
        this.J = z;
    }

    public void setRotateEnabled(boolean z) {
        this.H = z;
    }

    public void setScaleEnabled(boolean z) {
        this.I = z;
    }

    public GestureCropImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GestureCropImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.H = true;
        this.I = true;
        this.J = true;
        this.K = 5;
    }
}
