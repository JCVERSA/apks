package com.transsion.widgetslib.widget.elasticitylistView;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListView;
import defpackage.gm5;

public class ElasticityListView extends ListView {
    public float b;
    public float c;
    public int d;
    public int e;
    public float f;
    public float g;
    public a h;
    public AbsListView.OnScrollListener i;
    public int j;
    public gm5 k;

    public class a implements AbsListView.OnScrollListener {
        public int a;

        @Override
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            ElasticityListView.this.d = i;
            ElasticityListView.this.e = i2;
            if (ElasticityListView.this.i != null) {
                ElasticityListView.this.i.onScroll(absListView, i, i2, i3);
            }
        }

        @Override
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 0 && this.a == 2) {
                ElasticityListView.this.g();
            }
            this.a = i;
            if (ElasticityListView.this.i != null) {
                ElasticityListView.this.i.onScrollStateChanged(absListView, i);
            }
        }

        public a() {
            this.a = 0;
        }
    }

    public ElasticityListView(Context context) {
        super(context);
        this.b = 0.0f;
        this.c = 1.0f;
        this.d = 0;
        this.e = 0;
        this.f = 0.0f;
        this.g = 0.0f;
        this.j = 0;
        e();
    }

    public final void e() {
        this.k = new gm5(getContext());
        a aVar = new a();
        this.h = aVar;
        super.setOnScrollListener(aVar);
    }

    public final boolean f(float f) {
        if (isReachedFirstItemEdge() && isReachedLastItemEdge()) {
            if (f > 0.0f) {
                this.b = 0.0f;
                setPivotY(0.0f);
                float measuredHeight = ((f * 0.1f) / getMeasuredHeight()) + 1.0f;
                this.c = measuredHeight;
                if (measuredHeight < 1.0f) {
                    this.c = 1.0f;
                    return false;
                }
                if (measuredHeight > 1.1f) {
                    this.c = 1.1f;
                }
                setScaleY(this.c);
                return true;
            }
            float measuredHeight2 = getMeasuredHeight();
            this.b = measuredHeight2;
            setPivotY(measuredHeight2);
            float measuredHeight3 = 1.0f - ((f * 0.1f) / getMeasuredHeight());
            this.c = measuredHeight3;
            if (measuredHeight3 < 1.0f) {
                this.c = 1.0f;
                return false;
            }
            if (measuredHeight3 > 1.1f) {
                this.c = 1.1f;
            }
            setScaleY(this.c);
            return true;
        }
        if (isReachedFirstItemEdge()) {
            this.b = 0.0f;
            setPivotY(0.0f);
            float measuredHeight4 = ((f * 0.1f) / getMeasuredHeight()) + 1.0f;
            this.c = measuredHeight4;
            if (measuredHeight4 < 1.0f) {
                this.c = 1.0f;
                return false;
            }
            if (measuredHeight4 > 1.1f) {
                this.c = 1.1f;
            }
            setScaleY(this.c);
            return true;
        }
        if (!isReachedLastItemEdge()) {
            return false;
        }
        float measuredHeight5 = getMeasuredHeight();
        this.b = measuredHeight5;
        setPivotY(measuredHeight5);
        float measuredHeight6 = 1.0f - ((f * 0.1f) / getMeasuredHeight());
        this.c = measuredHeight6;
        if (measuredHeight6 < 1.0f) {
            this.c = 1.0f;
            return false;
        }
        if (measuredHeight6 > 1.1f) {
            this.c = 1.1f;
        }
        setScaleY(this.c);
        return true;
    }

    public final void g() {
        if (isReachedFirstItemEdge()) {
            this.b = 0.0f;
            this.c = 1.02f;
        }
        if (isReachedLastItemEdge()) {
            this.b = getMeasuredHeight();
            this.c = 1.02f;
        }
        float f = this.c;
        if (f != 1.0f) {
            this.k.c(this, f, this.b);
            this.c = 1.0f;
            invalidate();
        }
    }

    public boolean isReachedFirstItemEdge() {
        View childAt;
        return getFirstVisiblePosition() == 0 && this.d == 0 && (childAt = getChildAt(0)) != null && childAt.getTop() + getPaddingTop() >= 0;
    }

    public boolean isReachedLastItemEdge() {
        View childAt;
        int firstVisiblePosition = getFirstVisiblePosition();
        int lastVisiblePosition = getLastVisiblePosition();
        int count = getCount();
        return (lastVisiblePosition == count + (-1) || this.d + this.e == count) && (childAt = getChildAt(lastVisiblePosition - firstVisiblePosition)) != null && getHeight() >= childAt.getBottom() + getPaddingBottom();
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.k.b() || !this.k.g()) {
            return;
        }
        invalidate();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x005d  */
    /* JADX WARN: Code duplicated, block: B:25:0x0065  */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            if (!this.k.b()) {
                this.k.a();
            }
            this.f = motionEvent.getY();
            this.j = pointToPosition((int) motionEvent.getX(), (int) this.f);
            this.c = 1.0f;
            this.g = 0.0f;
        } else if (action == 1) {
            if (getScaleY() != 1.0f) {
                this.k.d(this, getScaleY(), this.b);
                this.c = 1.0f;
                this.f = 0.0f;
                this.g = 0.0f;
                invalidate();
            }
        } else if (action == 2) {
            if (this.f == 0.0f) {
                this.f = motionEvent.getY();
                this.c = 1.0f;
            }
            this.g = motionEvent.getY() - this.f;
            if (getChildCount() > 0 && Math.abs(this.g) > 10.0f && f(this.g)) {
                setPressed(false);
                View childAt = getChildAt(this.j - getFirstVisiblePosition());
                if (childAt != null) {
                    childAt.setPressed(false);
                }
                onCancelPendingInputEvents();
            }
        } else if (action == 3) {
            if (getScaleY() != 1.0f) {
                this.k.d(this, getScaleY(), this.b);
                this.c = 1.0f;
                this.f = 0.0f;
                this.g = 0.0f;
                invalidate();
            }
        }
        if (Math.abs(getScaleY() - 1.0f) > 0.01f) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.i = onScrollListener;
    }

    public ElasticityListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0.0f;
        this.c = 1.0f;
        this.d = 0;
        this.e = 0;
        this.f = 0.0f;
        this.g = 0.0f;
        this.j = 0;
        e();
    }

    public ElasticityListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = 0.0f;
        this.c = 1.0f;
        this.d = 0;
        this.e = 0;
        this.f = 0.0f;
        this.g = 0.0f;
        this.j = 0;
        e();
    }

    public ElasticityListView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.b = 0.0f;
        this.c = 1.0f;
        this.d = 0;
        this.e = 0;
        this.f = 0.0f;
        this.g = 0.0f;
        this.j = 0;
        e();
    }
}
