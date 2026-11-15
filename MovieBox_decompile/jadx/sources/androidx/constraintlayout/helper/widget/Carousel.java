package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionHelper;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.p;
import androidx.constraintlayout.widget.R$styleable;
import java.util.ArrayList;

public class Carousel extends MotionHelper {
    public static final int TOUCH_UP_CARRY_ON = 2;
    public static final int TOUCH_UP_IMMEDIATE_STOP = 1;
    private int A;
    private float B;
    private int C;
    private int D;
    int E;
    Runnable F;

    private final ArrayList f6781n;

    private int f6782o;

    private int f6783p;

    private MotionLayout f6784q;

    private int f6785r;

    private boolean f6786s;

    private int f6787t;

    private int f6788u;

    private int f6789v;

    private int f6790w;

    private float f6791x;

    private int f6792y;

    private int f6793z;

    public interface a {
    }

    public Carousel(Context context) {
        super(context);
        this.f6781n = new ArrayList();
        this.f6782o = 0;
        this.f6783p = 0;
        this.f6785r = -1;
        this.f6786s = false;
        this.f6787t = -1;
        this.f6788u = -1;
        this.f6789v = -1;
        this.f6790w = -1;
        this.f6791x = 0.9f;
        this.f6792y = 0;
        this.f6793z = 4;
        this.A = 1;
        this.B = 2.0f;
        this.C = -1;
        this.D = 200;
        this.E = -1;
        this.F = new Runnable() {

            class RunnableC00531 implements Runnable {
                final float val$v;

                RunnableC00531(float f10) {
                    this.val$v = f10;
                }

                @Override
                public void run() {
                    Carousel.this.f6784q.touchAnimateTo(5, 1.0f, this.val$v);
                }
            }

            @Override
            public void run() {
                Carousel.this.f6784q.setProgress(0.0f);
                Carousel.this.q();
                Carousel.o(Carousel.this);
                int unused = Carousel.this.f6783p;
                throw null;
            }
        };
    }

    static a o(Carousel carousel) {
        carousel.getClass();
        return null;
    }

    private void p(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Carousel);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.Carousel_carousel_firstView) {
                    this.f6785r = typedArrayObtainStyledAttributes.getResourceId(index, this.f6785r);
                } else if (index == R$styleable.Carousel_carousel_backwardTransition) {
                    this.f6787t = typedArrayObtainStyledAttributes.getResourceId(index, this.f6787t);
                } else if (index == R$styleable.Carousel_carousel_forwardTransition) {
                    this.f6788u = typedArrayObtainStyledAttributes.getResourceId(index, this.f6788u);
                } else if (index == R$styleable.Carousel_carousel_emptyViewsBehavior) {
                    this.f6793z = typedArrayObtainStyledAttributes.getInt(index, this.f6793z);
                } else if (index == R$styleable.Carousel_carousel_previousState) {
                    this.f6789v = typedArrayObtainStyledAttributes.getResourceId(index, this.f6789v);
                } else if (index == R$styleable.Carousel_carousel_nextState) {
                    this.f6790w = typedArrayObtainStyledAttributes.getResourceId(index, this.f6790w);
                } else if (index == R$styleable.Carousel_carousel_touchUp_dampeningFactor) {
                    this.f6791x = typedArrayObtainStyledAttributes.getFloat(index, this.f6791x);
                } else if (index == R$styleable.Carousel_carousel_touchUpMode) {
                    this.A = typedArrayObtainStyledAttributes.getInt(index, this.A);
                } else if (index == R$styleable.Carousel_carousel_touchUp_velocityThreshold) {
                    this.B = typedArrayObtainStyledAttributes.getFloat(index, this.B);
                } else if (index == R$styleable.Carousel_carousel_infinite) {
                    this.f6786s = typedArrayObtainStyledAttributes.getBoolean(index, this.f6786s);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public int getCount() {
        return 0;
    }

    public int getCurrentIndex() {
        return this.f6783p;
    }

    public void jumpToIndex(int i10) {
        this.f6783p = Math.max(0, Math.min(getCount() - 1, i10));
        refresh();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getParent() instanceof MotionLayout) {
            MotionLayout motionLayout = (MotionLayout) getParent();
            for (int i10 = 0; i10 < this.f7344b; i10++) {
                int i11 = this.f7343a[i10];
                View viewById = motionLayout.getViewById(i11);
                if (this.f6785r == i11) {
                    this.f6792y = i10;
                }
                this.f6781n.add(viewById);
            }
            this.f6784q = motionLayout;
            if (this.A == 2) {
                p.b transition = motionLayout.getTransition(this.f6788u);
                if (transition != null) {
                    transition.H(5);
                }
                p.b transition2 = this.f6784q.getTransition(this.f6787t);
                if (transition2 != null) {
                    transition2.H(5);
                }
            }
            q();
        }
    }

    @Override
    public void onTransitionChange(MotionLayout motionLayout, int i10, int i11, float f10) {
        this.E = i10;
    }

    @Override
    public void onTransitionCompleted(MotionLayout motionLayout, int i10) {
        int i11 = this.f6783p;
        this.f6782o = i11;
        if (i10 == this.f6790w) {
            this.f6783p = i11 + 1;
        } else if (i10 == this.f6789v) {
            this.f6783p = i11 - 1;
        }
        if (!this.f6786s) {
            throw null;
        }
        throw null;
    }

    public void refresh() {
        if (this.f6781n.size() > 0) {
            throw null;
        }
        this.f6784q.rebuildScene();
        q();
    }

    public void transitionToIndex(int i10, int i11) {
        this.C = Math.max(0, Math.min(getCount() - 1, i10));
        int iMax = Math.max(0, i11);
        this.D = iMax;
        this.f6784q.setTransitionDuration(iMax);
        if (i10 < this.f6783p) {
            this.f6784q.transitionToState(this.f6789v, this.D);
        } else {
            this.f6784q.transitionToState(this.f6790w, this.D);
        }
    }

    public void q() {
    }

    public Carousel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6781n = new ArrayList();
        this.f6782o = 0;
        this.f6783p = 0;
        this.f6785r = -1;
        this.f6786s = false;
        this.f6787t = -1;
        this.f6788u = -1;
        this.f6789v = -1;
        this.f6790w = -1;
        this.f6791x = 0.9f;
        this.f6792y = 0;
        this.f6793z = 4;
        this.A = 1;
        this.B = 2.0f;
        this.C = -1;
        this.D = 200;
        this.E = -1;
        this.F = new Runnable() {

            class RunnableC00531 implements Runnable {
                final float val$v;

                RunnableC00531(float f10) {
                    this.val$v = f10;
                }

                @Override
                public void run() {
                    Carousel.this.f6784q.touchAnimateTo(5, 1.0f, this.val$v);
                }
            }

            @Override
            public void run() {
                Carousel.this.f6784q.setProgress(0.0f);
                Carousel.this.q();
                Carousel.o(Carousel.this);
                int unused = Carousel.this.f6783p;
                throw null;
            }
        };
        p(context, attributeSet);
    }

    public void setAdapter(a aVar) {
    }

    public Carousel(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f6781n = new ArrayList();
        this.f6782o = 0;
        this.f6783p = 0;
        this.f6785r = -1;
        this.f6786s = false;
        this.f6787t = -1;
        this.f6788u = -1;
        this.f6789v = -1;
        this.f6790w = -1;
        this.f6791x = 0.9f;
        this.f6792y = 0;
        this.f6793z = 4;
        this.A = 1;
        this.B = 2.0f;
        this.C = -1;
        this.D = 200;
        this.E = -1;
        this.F = new Runnable() {

            class RunnableC00531 implements Runnable {
                final float val$v;

                RunnableC00531(float f10) {
                    this.val$v = f10;
                }

                @Override
                public void run() {
                    Carousel.this.f6784q.touchAnimateTo(5, 1.0f, this.val$v);
                }
            }

            @Override
            public void run() {
                Carousel.this.f6784q.setProgress(0.0f);
                Carousel.this.q();
                Carousel.o(Carousel.this);
                int unused = Carousel.this.f6783p;
                throw null;
            }
        };
        p(context, attributeSet);
    }
}
