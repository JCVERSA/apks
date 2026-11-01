package ru.zdevs.zarchiver.ui.ctrl.fab;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.ImageView;
import ru.zdevs.zarchiver.R;

public class FloatingActionMenu extends ViewGroup implements View.OnClickListener {

    public static final int f1785t = 0;

    public final AnimatorSet f1786a;

    public final AnimatorSet f1787b;

    public b1.a f1788c;

    public int f1789d;

    public int f1790e;

    public int f1791f;

    public Drawable f1792g;

    public OvershootInterpolator f1793h;

    public AnticipateInterpolator f1794i;

    public boolean f1795j;

    public ImageView f1796k;

    public boolean f1797l;

    public boolean f1798m;

    public c f1799n;

    public View.OnClickListener f1800o;

    public int f1801p;

    public int f1802q;

    public int f1803r;

    public int f1804s;

    public class a implements Runnable {

        public final boolean f1805a;

        public final b1.a f1806b;

        public final boolean f1807c;

        public a(boolean z2, b1.a aVar, boolean z3) {
            this.f1805a = z2;
            this.f1806b = aVar;
            this.f1807c = z3;
        }

        @Override
        public final void run() {
            FloatingActionMenu floatingActionMenu = FloatingActionMenu.this;
            boolean zD = floatingActionMenu.d();
            boolean z2 = this.f1805a;
            if (zD == z2) {
                return;
            }
            b1.a aVar = floatingActionMenu.f1788c;
            b1.a aVar2 = this.f1806b;
            if (aVar2 != aVar) {
                aVar2.f(z2, this.f1807c);
            }
        }
    }

    public class b implements Runnable {

        public final boolean f1809a;

        public b(boolean z2) {
            this.f1809a = z2;
        }

        @Override
        public final void run() {
            boolean z2 = this.f1809a;
            int i2 = z2 ? 2 : 0;
            FloatingActionMenu floatingActionMenu = FloatingActionMenu.this;
            floatingActionMenu.f1791f = i2;
            c cVar = floatingActionMenu.f1799n;
            if (cVar != null) {
                cVar.a(z2);
            }
        }
    }

    public interface c {
        void a(boolean z2);
    }

    public FloatingActionMenu(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1786a = new AnimatorSet();
        this.f1787b = new AnimatorSet();
        this.f1791f = 0;
        this.f1795j = true;
        this.f1801p = -1;
        Resources.Theme themeNewTheme = getResources().newTheme();
        themeNewTheme.applyStyle(R.style.AppTheme_Dark, true);
        this.f1792g = z0.c.i(getResources(), themeNewTheme, R.drawable.l_add);
        this.f1793h = new OvershootInterpolator();
        this.f1794i = new AnticipateInterpolator();
        this.f1788c = new b1.a(context, true);
        ImageView imageView = new ImageView(getContext());
        this.f1796k = imageView;
        imageView.setImageDrawable(this.f1792g);
        addView(this.f1788c, super.generateDefaultLayoutParams());
        addView(this.f1796k);
        a(1.0f);
    }

    public final void a(float f2) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f1796k, "rotation", 135.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f1796k, "rotation", 0.0f, 135.0f);
        AnimatorSet animatorSet = this.f1787b;
        AnimatorSet animatorSet2 = this.f1786a;
        if (f2 < 1.0f) {
            animatorSet2.playTogether(objectAnimatorOfFloat2, ObjectAnimator.ofFloat(this.f1788c, "alpha", f2, 1.0f));
            animatorSet.playTogether(objectAnimatorOfFloat, ObjectAnimator.ofFloat(this.f1788c, "alpha", 1.0f, f2));
        } else {
            animatorSet2.play(objectAnimatorOfFloat2);
            animatorSet.play(objectAnimatorOfFloat);
        }
        animatorSet2.setInterpolator(this.f1793h);
        animatorSet.setInterpolator(this.f1794i);
        animatorSet2.setDuration(300L);
        animatorSet.setDuration(300L);
    }

    public final void b(boolean z2) {
        if (c()) {
            return;
        }
        this.f1788c.f(false, this.f1795j && z2);
        this.f1796k.setVisibility(4);
        this.f1797l = false;
    }

    public final boolean c() {
        return this.f1788c.getVisibility() == 4;
    }

    @Override
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams;
    }

    public final boolean d() {
        return this.f1791f == 2;
    }

    @Override
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        if (this.f1801p == -1) {
            this.f1801p = marginLayoutParams.topMargin;
            this.f1802q = marginLayoutParams.bottomMargin;
            this.f1803r = marginLayoutParams.rightMargin;
            this.f1804s = marginLayoutParams.leftMargin;
        }
        marginLayoutParams.topMargin = windowInsets.getSystemWindowInsetTop() + this.f1801p;
        marginLayoutParams.bottomMargin = windowInsets.getSystemWindowInsetBottom() + this.f1802q;
        marginLayoutParams.rightMargin = windowInsets.getSystemWindowInsetRight() + this.f1803r;
        marginLayoutParams.leftMargin = windowInsets.getSystemWindowInsetLeft() + this.f1804s;
        setLayoutParams(marginLayoutParams);
        return windowInsets;
    }

    public final void e(boolean z2, boolean z3) {
        if (d() == z2) {
            return;
        }
        if (this.f1795j && z3) {
            AnimatorSet animatorSet = this.f1787b;
            animatorSet.cancel();
            AnimatorSet animatorSet2 = this.f1786a;
            animatorSet2.cancel();
            if (z2) {
                animatorSet2.start();
            } else {
                animatorSet.start();
            }
        }
        this.f1791f = z2 ? 1 : 0;
        int i2 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if ((childAt instanceof b1.a) && childAt.getVisibility() != 8) {
                b1.a aVar = (b1.a) childAt;
                if (this.f1795j) {
                    postDelayed(new a(z2, aVar, z3), i2);
                    i2 += 50;
                }
                if (aVar != this.f1788c) {
                    aVar.f(z2, false);
                }
            }
        }
        postDelayed(new b(z2), i2);
    }

    public final void f(boolean z2) {
        if (c() && c()) {
            this.f1788c.f(true, this.f1795j && z2);
            this.f1796k.setVisibility(0);
        }
    }

    @Override
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public View.OnClickListener getOnMenuButtonClick() {
        return this.f1800o;
    }

    @Override
    public final void onClick(View view) {
        setMenuState(false);
        View.OnClickListener onClickListener = this.f1800o;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    @Override
    public final void onFinishInflate() {
        super.onFinishInflate();
        bringChildToFront(this.f1788c);
        bringChildToFront(this.f1796k);
        this.f1790e = getChildCount();
    }

    @Override
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int paddingLeft = getPaddingLeft() + (this.f1789d / 2);
        int measuredHeight = ((i5 - i3) - this.f1788c.getMeasuredHeight()) - getPaddingBottom();
        int measuredWidth = paddingLeft - (this.f1788c.getMeasuredWidth() / 2);
        b1.a aVar = this.f1788c;
        aVar.layout(measuredWidth, measuredHeight, aVar.getMeasuredWidth() + measuredWidth, this.f1788c.getMeasuredHeight() + measuredHeight);
        int measuredWidth2 = paddingLeft - (this.f1796k.getMeasuredWidth() / 2);
        int measuredHeight2 = ((this.f1788c.getMeasuredHeight() / 2) + measuredHeight) - (this.f1796k.getMeasuredHeight() / 2);
        ImageView imageView = this.f1796k;
        imageView.layout(measuredWidth2, measuredHeight2, imageView.getMeasuredWidth() + measuredWidth2, this.f1796k.getMeasuredHeight() + measuredHeight2);
        int measuredHeight3 = this.f1788c.getMeasuredHeight() + measuredHeight + 5;
        for (int i6 = this.f1790e - 1; i6 >= 0; i6--) {
            View childAt = getChildAt(i6);
            if (childAt != this.f1796k) {
                b1.a aVar2 = (b1.a) childAt;
                if (aVar2.getVisibility() != 8) {
                    int measuredWidth3 = paddingLeft - (aVar2.getMeasuredWidth() / 2);
                    int measuredHeight4 = (measuredHeight3 - aVar2.getMeasuredHeight()) - 5;
                    if (aVar2 != this.f1788c) {
                        aVar2.layout(measuredWidth3, measuredHeight4, aVar2.getMeasuredWidth() + measuredWidth3, aVar2.getMeasuredHeight() + measuredHeight4);
                        if (this.f1791f == 0) {
                            aVar2.f(false, false);
                        }
                    }
                    measuredHeight3 = measuredHeight4 - 5;
                }
            }
        }
    }

    @Override
    public final void onMeasure(int i2, int i3) {
        int i4;
        int paddingRight;
        measureChildWithMargins(this.f1796k, i2, 0, i3, 0);
        int i5 = 0;
        this.f1789d = 0;
        int measuredHeight = 0;
        while (true) {
            i4 = this.f1790e;
            if (i5 >= i4) {
                break;
            }
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8 && childAt != this.f1796k) {
                measureChildWithMargins(childAt, i2, 0, i3, 0);
                this.f1789d = Math.max(this.f1789d, childAt.getMeasuredWidth());
                measuredHeight = childAt.getMeasuredHeight() + measuredHeight;
            }
            i5++;
        }
        double paddingBottom = getPaddingBottom() + getPaddingTop() + ((i4 - 1) * 5) + measuredHeight;
        Double.isNaN(paddingBottom);
        Double.isNaN(paddingBottom);
        Double.isNaN(paddingBottom);
        Double.isNaN(paddingBottom);
        int defaultSize = (int) ((0.03d * paddingBottom) + paddingBottom);
        if (getLayoutParams().width == -1) {
            paddingRight = View.getDefaultSize(getSuggestedMinimumWidth(), i2);
        } else {
            paddingRight = getPaddingRight() + getPaddingLeft() + this.f1789d;
        }
        if (getLayoutParams().height == -1) {
            defaultSize = View.getDefaultSize(getSuggestedMinimumHeight(), i3);
        }
        setMeasuredDimension(paddingRight, defaultSize);
    }

    @Override
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f1798m) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            return d();
        }
        if (action != 1) {
            return false;
        }
        setMenuState(false);
        return true;
    }

    public void setAnimated(boolean z2) {
        this.f1795j = z2;
    }

    public void setClosedOnTouchOutside(boolean z2) {
        this.f1798m = z2;
    }

    public void setMenuButtonImageResource(int i2) {
        Resources.Theme themeNewTheme = getResources().newTheme();
        themeNewTheme.applyStyle(R.style.AppTheme_Dark, true);
        Drawable drawableI = z0.c.i(getResources(), themeNewTheme, i2);
        if (this.f1792g != drawableI) {
            this.f1792g = drawableI;
            this.f1796k.setImageDrawable(drawableI);
        }
    }

    public void setMenuState(boolean z2) {
        e(z2, this.f1795j);
    }

    public void setOnMenuButtonClick(View.OnClickListener onClickListener) {
        this.f1800o = onClickListener;
    }

    public void setOnMenuButtonClickListener(View.OnClickListener onClickListener) {
        this.f1788c.setOnClickListener(onClickListener);
    }

    public void setOnMenuToggleListener(c cVar) {
        this.f1799n = cVar;
    }

    public void setTransparent(boolean z2) {
        float f2 = z2 ? 0.7f : 1.0f;
        this.f1788c.setAlpha(f2);
        a(f2);
    }

    @Override
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }
}
