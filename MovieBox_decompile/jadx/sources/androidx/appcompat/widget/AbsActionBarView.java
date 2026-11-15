package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;

abstract class AbsActionBarView extends ViewGroup {

    protected final a f1235a;

    protected final Context f1236b;

    protected ActionMenuView f1237c;

    protected ActionMenuPresenter f1238d;

    protected int f1239e;

    protected ViewPropertyAnimatorCompat f1240f;

    private boolean f1241g;

    private boolean f1242h;

    protected class a implements ViewPropertyAnimatorListener {

        private boolean f1243a = false;

        int f1244b;

        protected a() {
        }

        public a a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, int i10) {
            AbsActionBarView.this.f1240f = viewPropertyAnimatorCompat;
            this.f1244b = i10;
            return this;
        }

        @Override
        public void onAnimationCancel(View view) {
            this.f1243a = true;
        }

        @Override
        public void onAnimationEnd(View view) {
            if (this.f1243a) {
                return;
            }
            AbsActionBarView absActionBarView = AbsActionBarView.this;
            absActionBarView.f1240f = null;
            AbsActionBarView.super.setVisibility(this.f1244b);
        }

        @Override
        public void onAnimationStart(View view) {
            AbsActionBarView.super.setVisibility(0);
            this.f1243a = false;
        }
    }

    AbsActionBarView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1235a = new a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R$attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f1236b = context;
        } else {
            this.f1236b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    protected static int d(int i10, int i11, boolean z10) {
        return z10 ? i10 - i11 : i10 + i11;
    }

    public void animateToVisibility(int i10) {
        setupAnimatorToVisibility(i10, 200L).start();
    }

    protected int c(View view, int i10, int i11, int i12) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i10, Integer.MIN_VALUE), i11);
        return Math.max(0, (i10 - view.getMeasuredWidth()) - i12);
    }

    public boolean canShowOverflowMenu() {
        return isOverflowReserved() && getVisibility() == 0;
    }

    public void dismissPopupMenus() {
        ActionMenuPresenter actionMenuPresenter = this.f1238d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.A();
        }
    }

    protected int e(View view, int i10, int i11, int i12, boolean z10) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i13 = i11 + ((i12 - measuredHeight) / 2);
        if (z10) {
            view.layout(i10 - measuredWidth, i13, i10, measuredHeight + i13);
        } else {
            view.layout(i10, i13, i10 + measuredWidth, measuredHeight + i13);
        }
        return z10 ? -measuredWidth : measuredWidth;
    }

    public int getAnimatedVisibility() {
        return this.f1240f != null ? this.f1235a.f1244b : getVisibility();
    }

    public int getContentHeight() {
        return this.f1239e;
    }

    public boolean isOverflowMenuShowPending() {
        ActionMenuPresenter actionMenuPresenter = this.f1238d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.F();
        }
        return false;
    }

    public boolean isOverflowReserved() {
        ActionMenuPresenter actionMenuPresenter = this.f1238d;
        return actionMenuPresenter != null && actionMenuPresenter.H();
    }

    @Override
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.ActionBar, R$attr.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(R$styleable.ActionBar_height, 0));
        typedArrayObtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.f1238d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.I(configuration);
        }
    }

    @Override
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f1242h = false;
        }
        if (!this.f1242h) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f1242h = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f1242h = false;
        }
        return true;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1241g = false;
        }
        if (!this.f1241g) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f1241g = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f1241g = false;
        }
        return true;
    }

    public void postShowOverflowMenu() {
        post(new Runnable() {
            @Override
            public void run() {
                AbsActionBarView.this.showOverflowMenu();
            }
        });
    }

    public abstract void setContentHeight(int i10);

    @Override
    public void setVisibility(int i10) {
        if (i10 != getVisibility()) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f1240f;
            if (viewPropertyAnimatorCompat != null) {
                viewPropertyAnimatorCompat.cancel();
            }
            super.setVisibility(i10);
        }
    }

    public ViewPropertyAnimatorCompat setupAnimatorToVisibility(int i10, long j10) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f1240f;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
        }
        if (i10 != 0) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAlpha = ViewCompat.animate(this).alpha(0.0f);
            viewPropertyAnimatorCompatAlpha.setDuration(j10);
            viewPropertyAnimatorCompatAlpha.setListener(this.f1235a.a(viewPropertyAnimatorCompatAlpha, i10));
            return viewPropertyAnimatorCompatAlpha;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAlpha2 = ViewCompat.animate(this).alpha(1.0f);
        viewPropertyAnimatorCompatAlpha2.setDuration(j10);
        viewPropertyAnimatorCompatAlpha2.setListener(this.f1235a.a(viewPropertyAnimatorCompatAlpha2, i10));
        return viewPropertyAnimatorCompatAlpha2;
    }

    public abstract boolean showOverflowMenu();
}
