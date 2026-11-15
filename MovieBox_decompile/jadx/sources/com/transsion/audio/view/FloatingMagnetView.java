package com.transsion.audio.view;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;

public abstract class FloatingMagnetView extends FrameLayout {
    public static final int MARGIN_EDGE = 13;

    protected MoveAnimator f41817a;

    protected int f41818b;

    private int f41819c;

    private boolean f41820d;

    private float f41821e;

    float f41822f;

    float f41823g;

    protected class MoveAnimator implements Runnable {
        private float destinationX;
        private float destinationY;
        private final Handler handler = new Handler(Looper.getMainLooper());
        private long startingTime;

        protected MoveAnimator() {
        }

        private void stop() {
            this.handler.removeCallbacks(this);
        }

        @Override
        public void run() {
            if (FloatingMagnetView.this.getRootView() == null || FloatingMagnetView.this.getRootView().getParent() == null) {
                return;
            }
            float fMin = Math.min(1.0f, (System.currentTimeMillis() - this.startingTime) / 400.0f);
            FloatingMagnetView.this.g((this.destinationX - FloatingMagnetView.this.getX()) * fMin, (this.destinationY - FloatingMagnetView.this.getY()) * fMin);
            if (fMin < 1.0f) {
                this.handler.post(this);
            }
        }

        void start(float f10, float f11) {
            this.destinationX = f10;
            this.destinationY = f11;
            this.startingTime = System.currentTimeMillis();
            this.handler.post(this);
        }
    }

    protected FloatingMagnetView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void c() {
        this.f41821e = 0.0f;
    }

    private void d() {
        this.f41817a = new MoveAnimator();
        setClickable(true);
    }

    public void e(boolean z10) {
        i();
        h(this.f41820d, z10);
    }

    private void f(boolean z10) {
        if (z10) {
            this.f41821e = getY();
        }
    }

    public void g(float f10, float f11) {
        setX(getX() + f10);
        setY(getY() + f11);
    }

    private void h(boolean z10, boolean z11) {
        float f10 = z10 ? 13.0f : this.f41818b - 13;
        float y10 = getY();
        if (!z11) {
            float f11 = this.f41821e;
            if (f11 != 0.0f) {
                c();
                y10 = f11;
            }
        }
        this.f41817a.start(f10, Math.min(Math.max(0.0f, y10), this.f41819c - getHeight()));
    }

    private void i() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            this.f41818b = viewGroup.getWidth() - getWidth();
            this.f41819c = viewGroup.getHeight();
        }
    }

    abstract void attach(Context context);

    abstract void expanded();

    abstract boolean isPackUp();

    @Override
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (getParent() != null) {
            final boolean z10 = configuration.orientation == 2;
            f(z10);
            ((ViewGroup) getParent()).post(new Runnable() {
                @Override
                public final void run() {
                    this.f41826a.e(z10);
                }
            });
        }
    }

    abstract void onProgress(int i10);

    abstract void onSlideTheLeft();

    abstract void onStateChanged(int i10);

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f41822f = motionEvent.getRawX();
        } else if (action == 2) {
            float rawX = motionEvent.getRawX();
            this.f41823g = rawX;
            float f10 = this.f41822f;
            if (rawX < f10 && Math.abs(rawX - f10) > 50.0f) {
                onSlideTheLeft();
                return true;
            }
        } else if ((action == 1 || action == 3) && Math.abs(motionEvent.getRawX() - this.f41822f) < 10.0f) {
            onViewClick();
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    abstract void onViewClick();

    abstract void packUp();

    abstract void packUpAnimation();

    abstract void prepare();

    abstract void setOnOptionListener(EnFloatingView.f fVar);

    protected FloatingMagnetView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f41820d = true;
        this.f41822f = 0.0f;
        this.f41823g = 0.0f;
        d();
    }
}
