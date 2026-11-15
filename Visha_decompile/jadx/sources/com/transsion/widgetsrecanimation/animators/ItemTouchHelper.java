package com.transsion.widgetsrecanimation.animators;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.List;

public class ItemTouchHelper extends RecyclerView.ItemDecoration implements RecyclerView.OnChildAttachStateChangeListener {
    public final List b;
    public final float[] c;
    public RecyclerView.ViewHolder d;
    public float e;
    public float f;
    public float g;
    public float h;
    public int i;
    public int j;
    public List k;
    public RecyclerView l;
    public boolean m;
    public final Runnable n;
    public VelocityTracker o;
    public Rect p;
    public RecyclerView.ChildDrawingOrderCallback q;
    public View r;
    public int s;
    public Rect t;
    public long u;

    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override
        public void run() {
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            if (itemTouchHelper.d == null || !itemTouchHelper.scrollIfNecessary()) {
                return;
            }
            ItemTouchHelper itemTouchHelper2 = ItemTouchHelper.this;
            RecyclerView.ViewHolder viewHolder = itemTouchHelper2.d;
            if (viewHolder != null) {
                itemTouchHelper2.moveIfNecessary(viewHolder);
            }
            ItemTouchHelper itemTouchHelper3 = ItemTouchHelper.this;
            itemTouchHelper3.l.removeCallbacks(itemTouchHelper3.n);
            ViewCompat.postOnAnimation(ItemTouchHelper.this.l, this);
        }
    }

    class AnonymousClass4 implements Runnable {
        final c val$anim;
        final int val$swipeDir;

        public AnonymousClass4(c cVar, int i) {
            this.val$anim = cVar;
            this.val$swipeDir = i;
        }

        @Override
        public void run() {
            RecyclerView recyclerView = ItemTouchHelper.this.l;
            if (recyclerView == null || !recyclerView.isAttachedToWindow()) {
                return;
            }
            c cVar = this.val$anim;
            if (cVar.j || cVar.f.getAdapterPosition() == -1) {
                return;
            }
            RecyclerView.ItemAnimator itemAnimator = ItemTouchHelper.this.l.getItemAnimator();
            if ((itemAnimator != null && itemAnimator.isRunning(null)) || ItemTouchHelper.this.hasRunningRecoverAnim()) {
                ItemTouchHelper.this.l.post(this);
            } else {
                ItemTouchHelper.this.getClass();
                RecyclerView.ViewHolder viewHolder = this.val$anim.f;
                throw null;
            }
        }
    }

    public class a extends c {
        public final int o;
        public final RecyclerView.ViewHolder p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(RecyclerView.ViewHolder viewHolder, int i, int i2, float f, float f2, float f3, float f4, RecyclerView.LayoutManager layoutManager, int i3, RecyclerView.ViewHolder viewHolder2) {
            super(viewHolder, i, i2, f, f2, f3, f4, layoutManager);
            this.o = i3;
            this.p = viewHolder2;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            if (this.j) {
                return;
            }
            ItemTouchHelper.this.getClass();
            throw null;
        }
    }

    public static abstract class b {
        public static final Interpolator a = new a();
        public static final Interpolator b = new InterpolatorC0272b();

        public class a implements Interpolator {
            @Override
            public float getInterpolation(float f) {
                return f * f * f * f * f;
            }
        }

        public class InterpolatorC0272b implements Interpolator {
            @Override
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
            }
        }
    }

    public static class c implements Animator.AnimatorListener {
        public final float b;
        public final float c;
        public final float d;
        public final float e;
        public final RecyclerView.ViewHolder f;
        public final int g;
        public final ValueAnimator h;
        public final int i;
        public float l;
        public boolean j = false;
        public boolean k = false;
        public PathInterpolator n = new PathInterpolator(0.25f, 0.0f, 0.0f, 1.0f);
        public float m = com.transsion.widgetsrecanimation.animators.a.c.a();

        public class a implements ValueAnimator.AnimatorUpdateListener {
            public final RecyclerView.LayoutManager b;

            public a(RecyclerView.LayoutManager layoutManager) {
                this.b = layoutManager;
            }

            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                c.this.f(valueAnimator.getAnimatedFraction());
                RecyclerView.LayoutManager layoutManager = this.b;
                if ((layoutManager instanceof GridLayoutManager) || (layoutManager instanceof StaggeredGridLayoutManager)) {
                    c.this.d(valueAnimator.getAnimatedFraction());
                } else if (layoutManager instanceof LinearLayoutManager) {
                    c.this.e(valueAnimator.getAnimatedFraction());
                }
            }
        }

        public c(RecyclerView.ViewHolder viewHolder, int i, int i2, float f, float f2, float f3, float f4, RecyclerView.LayoutManager layoutManager) {
            this.g = i2;
            this.i = i;
            this.f = viewHolder;
            this.b = f;
            this.c = f2;
            this.d = f3;
            this.e = f4;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.h = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new a(layoutManager));
            valueAnimatorOfFloat.setInterpolator(this.n);
            valueAnimatorOfFloat.setTarget(viewHolder.itemView);
            valueAnimatorOfFloat.addListener(this);
            f(0.0f);
        }

        public void c() {
            this.h.cancel();
        }

        public final void d(float f) {
            View view;
            RecyclerView.ViewHolder viewHolder = this.f;
            if (viewHolder == null || (view = viewHolder.itemView) == null) {
                return;
            }
            view.setPivotX(view.getWidth() / 2);
            view.setPivotY(view.getHeight() / 2);
            float f2 = ((1.0f - f) * 0.15f) + 1.0f;
            view.setScaleX(f2);
            view.setScaleY(f2);
        }

        public final void e(float f) {
            View view;
            RecyclerView.ViewHolder viewHolder = this.f;
            if (viewHolder == null || (view = viewHolder.itemView) == null) {
                return;
            }
            view.setElevation((1.0f - f) * this.m);
        }

        public void f(float f) {
            this.l = f;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            f(1.0f);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (!this.k) {
                this.f.setIsRecyclable(true);
            }
            this.k = true;
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }

    public final void addChildDrawingOrderCallback() {
    }

    public void endRecoverAnimation(RecyclerView.ViewHolder viewHolder, boolean z) {
        for (int size = this.k.size() - 1; size >= 0; size--) {
            c cVar = (c) this.k.get(size);
            if (cVar.f == viewHolder) {
                cVar.j |= z;
                if (!cVar.k) {
                    cVar.c();
                }
                this.k.remove(size);
                return;
            }
        }
    }

    @Override
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.setEmpty();
    }

    public final void getSelectedDxDy(float[] fArr) {
        if ((this.j & 12) != 0) {
            fArr[0] = (this.g + this.e) - this.d.itemView.getLeft();
        } else {
            fArr[0] = this.d.itemView.getTranslationX();
        }
        if ((this.j & 3) == 0) {
            fArr[1] = this.d.itemView.getTranslationY();
            return;
        }
        float f = this.h;
        if (this.m) {
            throw null;
        }
        fArr[1] = (f + this.f) - this.d.itemView.getTop();
    }

    public boolean hasRunningRecoverAnim() {
        int size = this.k.size();
        for (int i = 0; i < size; i++) {
            if (!((c) this.k.get(i)).k) {
                return true;
            }
        }
        return false;
    }

    public void moveIfNecessary(RecyclerView.ViewHolder viewHolder) {
        if (!this.l.isLayoutRequested() && this.i == 2) {
            throw null;
        }
    }

    @Override
    public void onChildViewAttachedToWindow(View view) {
    }

    @Override
    public void onChildViewDetachedFromWindow(View view) {
        removeChildDrawingOrderCallbackIfNecessary(view);
        RecyclerView.ViewHolder childViewHolder = this.l.getChildViewHolder(view);
        if (childViewHolder == null) {
            return;
        }
        RecyclerView.ViewHolder viewHolder = this.d;
        if (viewHolder != null && childViewHolder == viewHolder) {
            select(null, 0);
            return;
        }
        endRecoverAnimation(childViewHolder, false);
        if (this.b.remove(childViewHolder.itemView)) {
            throw null;
        }
    }

    @Override
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        this.s = -1;
        if (this.d != null) {
            getSelectedDxDy(this.c);
            float[] fArr = this.c;
            float f = fArr[0];
            float f2 = fArr[1];
        }
        throw null;
    }

    @Override
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        if (this.d != null) {
            getSelectedDxDy(this.c);
            float[] fArr = this.c;
            float f = fArr[0];
            float f2 = fArr[1];
        }
        throw null;
    }

    public final void releaseVelocityTracker() {
        VelocityTracker velocityTracker = this.o;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.o = null;
        }
    }

    public void removeChildDrawingOrderCallbackIfNecessary(View view) {
        if (view == this.r) {
            this.r = null;
            if (this.q != null) {
                this.l.setChildDrawingOrderCallback(null);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x006f  */
    public boolean scrollIfNecessary() {
        int paddingLeft;
        int paddingTop;
        if (this.d == null) {
            this.u = Long.MIN_VALUE;
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        RecyclerView.LayoutManager layoutManager = this.l.getLayoutManager();
        if (this.t == null) {
            this.t = new Rect();
        }
        layoutManager.calculateItemDecorationsForChild(this.d.itemView, this.t);
        if (layoutManager.canScrollHorizontally()) {
            int i = (int) (this.g + this.e);
            paddingLeft = (i - this.t.left) - this.l.getPaddingLeft();
            float f = this.e;
            if ((f >= 0.0f || paddingLeft >= 0) && (f <= 0.0f || (paddingLeft = ((i + this.d.itemView.getWidth()) + this.t.right) - (this.l.getWidth() - this.l.getPaddingRight())) <= 0)) {
                paddingLeft = 0;
            }
        } else {
            paddingLeft = 0;
        }
        if (layoutManager.canScrollVertically()) {
            paddingTop = (((int) (this.h + this.f)) - this.t.top) - this.l.getPaddingTop();
            float f2 = this.f;
            if (f2 >= 0.0f || paddingTop >= 0) {
                if (f2 > 0.0f) {
                    this.l.getGlobalVisibleRect(this.p, null);
                    int i2 = this.p.top;
                    this.l.getHeight();
                    int i3 = this.p.bottom;
                    this.d.itemView.getHeight();
                    int i4 = this.t.bottom;
                    this.l.getHeight();
                    this.l.getPaddingBottom();
                    throw null;
                }
                paddingTop = 0;
            }
        } else {
            paddingTop = 0;
        }
        if (paddingLeft != 0) {
            this.d.itemView.getWidth();
            this.l.getWidth();
            throw null;
        }
        if (paddingTop != 0) {
            this.d.itemView.getHeight();
            this.l.getHeight();
            throw null;
        }
        if (paddingLeft == 0 && paddingTop == 0) {
            this.u = Long.MIN_VALUE;
            return false;
        }
        if (this.u != Long.MIN_VALUE) {
            throw null;
        }
        this.u = jCurrentTimeMillis;
        throw null;
    }

    public void select(RecyclerView.ViewHolder viewHolder, int i) {
        float fSignum;
        if (viewHolder == this.d && i == this.i) {
            return;
        }
        this.u = Long.MIN_VALUE;
        int i2 = this.i;
        endRecoverAnimation(viewHolder, true);
        this.i = i;
        int i3 = 2;
        if (i == 2) {
            if (viewHolder == null) {
                throw new IllegalArgumentException("Must pass a ViewHolder when dragging");
            }
            this.r = viewHolder.itemView;
            addChildDrawingOrderCallback();
        }
        RecyclerView.ViewHolder viewHolder2 = this.d;
        if (viewHolder2 == null) {
            if (viewHolder != null) {
                throw null;
            }
            ViewParent parent = this.l.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(this.d != null);
            }
            this.l.getLayoutManager().requestSimpleAnimationsInNextLayout();
            throw null;
        }
        if (viewHolder2.itemView.getParent() == null) {
            removeChildDrawingOrderCallbackIfNecessary(viewHolder2.itemView);
            throw null;
        }
        int iSwipeIfNecessary = i2 == 2 ? 0 : swipeIfNecessary(viewHolder2);
        releaseVelocityTracker();
        float fSignum2 = 0.0f;
        if (iSwipeIfNecessary == 1 || iSwipeIfNecessary == 2) {
            fSignum = Math.signum(this.f) * this.l.getHeight();
        } else if (iSwipeIfNecessary == 4 || iSwipeIfNecessary == 8 || iSwipeIfNecessary == 16 || iSwipeIfNecessary == 32) {
            fSignum = 0.0f;
            fSignum2 = Math.signum(this.e) * this.l.getWidth();
        } else {
            fSignum = 0.0f;
        }
        if (i2 == 2) {
            i3 = 8;
        } else if (iSwipeIfNecessary <= 0) {
            i3 = 4;
        }
        getSelectedDxDy(this.c);
        float[] fArr = this.c;
        new a(viewHolder2, i3, i2, fArr[0], fArr[1], fSignum2, fSignum, this.l.getLayoutManager(), iSwipeIfNecessary, viewHolder2);
        throw null;
    }

    public final int swipeIfNecessary(RecyclerView.ViewHolder viewHolder) {
        if (this.i == 2) {
            return 0;
        }
        throw null;
    }
}
