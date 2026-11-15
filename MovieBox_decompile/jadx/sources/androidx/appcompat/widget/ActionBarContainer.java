package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.R$id;
import androidx.appcompat.R$styleable;

public class ActionBarContainer extends FrameLayout {

    private boolean f1246a;

    private View f1247b;

    private View f1248c;

    private View f1249d;

    Drawable f1250e;

    Drawable f1251f;

    Drawable f1252g;

    boolean f1253h;

    boolean f1254i;

    private int f1255j;

    private static class a {
        public static void a(ActionBarContainer actionBarContainer) {
            actionBarContainer.invalidateOutline();
        }
    }

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    private int a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    private boolean b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f1250e;
        if (drawable != null && drawable.isStateful()) {
            this.f1250e.setState(getDrawableState());
        }
        Drawable drawable2 = this.f1251f;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f1251f.setState(getDrawableState());
        }
        Drawable drawable3 = this.f1252g;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f1252g.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.f1247b;
    }

    @Override
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1250e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1251f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f1252g;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1248c = findViewById(R$id.action_bar);
        this.f1249d = findViewById(R$id.action_context_bar);
    }

    @Override
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f1246a || super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0048 A[PHI: r0
      0x0048: PHI (r0v8 boolean) = (r0v1 boolean), (r0v1 boolean), (r0v0 boolean) binds: [B:31:0x00a5, B:33:0x00a9, B:15:0x0039] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        Drawable drawable;
        super.onLayout(z10, i10, i11, i12, i13);
        View view = this.f1247b;
        boolean z11 = true;
        boolean z12 = false;
        boolean z13 = (view == null || view.getVisibility() == 8) ? false : true;
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            int measuredHeight2 = measuredHeight - view.getMeasuredHeight();
            int i14 = layoutParams.bottomMargin;
            view.layout(i10, measuredHeight2 - i14, i12, measuredHeight - i14);
        }
        if (this.f1253h) {
            Drawable drawable2 = this.f1252g;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z11 = z12;
            }
        } else {
            if (this.f1250e != null) {
                if (this.f1248c.getVisibility() == 0) {
                    this.f1250e.setBounds(this.f1248c.getLeft(), this.f1248c.getTop(), this.f1248c.getRight(), this.f1248c.getBottom());
                } else {
                    View view2 = this.f1249d;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.f1250e.setBounds(0, 0, 0, 0);
                    } else {
                        this.f1250e.setBounds(this.f1249d.getLeft(), this.f1249d.getTop(), this.f1249d.getRight(), this.f1249d.getBottom());
                    }
                }
                z12 = true;
            }
            this.f1254i = z13;
            if (!z13 || (drawable = this.f1251f) == null) {
                z11 = z12;
            } else {
                drawable.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
        }
        if (z11) {
            invalidate();
        }
    }

    @Override
    public void onMeasure(int i10, int i11) {
        int iA;
        int i12;
        if (this.f1248c == null && View.MeasureSpec.getMode(i11) == Integer.MIN_VALUE && (i12 = this.f1255j) >= 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(Math.min(i12, View.MeasureSpec.getSize(i11)), Integer.MIN_VALUE);
        }
        super.onMeasure(i10, i11);
        if (this.f1248c == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i11);
        View view = this.f1247b;
        if (view == null || view.getVisibility() == 8 || mode == 1073741824) {
            return;
        }
        if (b(this.f1248c)) {
            iA = !b(this.f1249d) ? a(this.f1249d) : 0;
        } else {
            iA = a(this.f1248c);
        }
        setMeasuredDimension(getMeasuredWidth(), Math.min(iA + a(this.f1247b), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i11) : Integer.MAX_VALUE));
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f1250e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f1250e);
        }
        this.f1250e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f1248c;
            if (view != null) {
                this.f1250e.setBounds(view.getLeft(), this.f1248c.getTop(), this.f1248c.getRight(), this.f1248c.getBottom());
            }
        }
        boolean z10 = false;
        if (!this.f1253h ? !(this.f1250e != null || this.f1251f != null) : this.f1252g == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        invalidate();
        a.a(this);
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f1252g;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f1252g);
        }
        this.f1252g = drawable;
        boolean z10 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f1253h && (drawable2 = this.f1252g) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!this.f1253h ? !(this.f1250e != null || this.f1251f != null) : this.f1252g == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        invalidate();
        a.a(this);
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f1251f;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f1251f);
        }
        this.f1251f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f1254i && (drawable2 = this.f1251f) != null) {
                drawable2.setBounds(this.f1247b.getLeft(), this.f1247b.getTop(), this.f1247b.getRight(), this.f1247b.getBottom());
            }
        }
        boolean z10 = false;
        if (!this.f1253h ? !(this.f1250e != null || this.f1251f != null) : this.f1252g == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        invalidate();
        a.a(this);
    }

    public void setTabContainer(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f1247b;
        if (view != null) {
            removeView(view);
        }
        this.f1247b = scrollingTabContainerView;
        if (scrollingTabContainerView != null) {
            addView(scrollingTabContainerView);
            ViewGroup.LayoutParams layoutParams = scrollingTabContainerView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            scrollingTabContainerView.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z10) {
        this.f1246a = z10;
        setDescendantFocusability(z10 ? 393216 : 262144);
    }

    @Override
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        boolean z10 = i10 == 0;
        Drawable drawable = this.f1250e;
        if (drawable != null) {
            drawable.setVisible(z10, false);
        }
        Drawable drawable2 = this.f1251f;
        if (drawable2 != null) {
            drawable2.setVisible(z10, false);
        }
        Drawable drawable3 = this.f1252g;
        if (drawable3 != null) {
            drawable3.setVisible(z10, false);
        }
    }

    @Override
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override
    protected boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f1250e && !this.f1253h) || (drawable == this.f1251f && this.f1254i) || ((drawable == this.f1252g && this.f1253h) || super.verifyDrawable(drawable));
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBackground(new androidx.appcompat.widget.a(this));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ActionBar);
        this.f1250e = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ActionBar_background);
        this.f1251f = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ActionBar_backgroundStacked);
        this.f1255j = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ActionBar_height, -1);
        boolean z10 = true;
        if (getId() == R$id.split_action_bar) {
            this.f1253h = true;
            this.f1252g = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ActionBar_backgroundSplit);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!this.f1253h ? this.f1250e != null || this.f1251f != null : this.f1252g != null) {
            z10 = false;
        }
        setWillNotDraw(z10);
    }

    @Override
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i10) {
        if (i10 != 0) {
            return super.startActionModeForChild(view, callback, i10);
        }
        return null;
    }
}
