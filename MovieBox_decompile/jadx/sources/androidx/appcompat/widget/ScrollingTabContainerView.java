package androidx.appcompat.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.R$attr;

public class ScrollingTabContainerView extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    private static final Interpolator f1506l = new DecelerateInterpolator();

    Runnable f1507a;

    private b f1508b;

    LinearLayoutCompat f1509c;

    private Spinner f1510d;

    private boolean f1511e;

    int f1512f;

    int f1513g;

    private int f1514h;

    private int f1515i;

    protected ViewPropertyAnimator f1516j;

    protected final d f1517k;

    private class a extends BaseAdapter {
        a() {
        }

        @Override
        public int getCount() {
            return ScrollingTabContainerView.this.f1509c.getChildCount();
        }

        @Override
        public Object getItem(int i10) {
            return ((c) ScrollingTabContainerView.this.f1509c.getChildAt(i10)).b();
        }

        @Override
        public long getItemId(int i10) {
            return i10;
        }

        @Override
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (view == null) {
                return ScrollingTabContainerView.this.c((androidx.appcompat.app.a.b) getItem(i10), true);
            }
            ((c) view).a((androidx.appcompat.app.a.b) getItem(i10));
            return view;
        }
    }

    private class b implements View.OnClickListener {
        b() {
        }

        @Override
        public void onClick(View view) {
            ((c) view).b().e();
            int childCount = ScrollingTabContainerView.this.f1509c.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = ScrollingTabContainerView.this.f1509c.getChildAt(i10);
                childAt.setSelected(childAt == view);
            }
        }
    }

    private class c extends LinearLayout {

        private final int[] f1520a;

        private androidx.appcompat.app.a.b f1521b;

        private TextView f1522c;

        private ImageView f1523d;

        private View f1524e;

        public c(Context context, androidx.appcompat.app.a.b bVar, boolean z10) {
            super(context, null, R$attr.actionBarTabStyle);
            int[] iArr = {R.attr.background};
            this.f1520a = iArr;
            this.f1521b = bVar;
            j0 j0VarV = j0.v(context, null, iArr, R$attr.actionBarTabStyle, 0);
            if (j0VarV.s(0)) {
                setBackgroundDrawable(j0VarV.g(0));
            }
            j0VarV.x();
            if (z10) {
                setGravity(8388627);
            }
            c();
        }

        public void a(androidx.appcompat.app.a.b bVar) {
            this.f1521b = bVar;
            c();
        }

        public androidx.appcompat.app.a.b b() {
            return this.f1521b;
        }

        public void c() {
            androidx.appcompat.app.a.b bVar = this.f1521b;
            View viewB = bVar.b();
            if (viewB != null) {
                ViewParent parent = viewB.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(viewB);
                    }
                    addView(viewB);
                }
                this.f1524e = viewB;
                TextView textView = this.f1522c;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f1523d;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f1523d.setImageDrawable(null);
                    return;
                }
                return;
            }
            View view = this.f1524e;
            if (view != null) {
                removeView(view);
                this.f1524e = null;
            }
            Drawable drawableC = bVar.c();
            CharSequence charSequenceD = bVar.d();
            if (drawableC != null) {
                if (this.f1523d == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.f1523d = appCompatImageView;
                }
                this.f1523d.setImageDrawable(drawableC);
                this.f1523d.setVisibility(0);
            } else {
                ImageView imageView2 = this.f1523d;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f1523d.setImageDrawable(null);
                }
            }
            boolean zIsEmpty = TextUtils.isEmpty(charSequenceD);
            if (zIsEmpty) {
                TextView textView2 = this.f1522c;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f1522c.setText((CharSequence) null);
                }
            } else {
                if (this.f1522c == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, R$attr.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f1522c = appCompatTextView;
                }
                this.f1522c.setText(charSequenceD);
                this.f1522c.setVisibility(0);
            }
            ImageView imageView3 = this.f1523d;
            if (imageView3 != null) {
                imageView3.setContentDescription(bVar.a());
            }
            o0.a(this, zIsEmpty ? bVar.a() : null);
        }

        @Override
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override
        public void onMeasure(int i10, int i11) {
            super.onMeasure(i10, i11);
            if (ScrollingTabContainerView.this.f1512f > 0) {
                int measuredWidth = getMeasuredWidth();
                int i12 = ScrollingTabContainerView.this.f1512f;
                if (measuredWidth > i12) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), i11);
                }
            }
        }

        @Override
        public void setSelected(boolean z10) {
            boolean z11 = isSelected() != z10;
            super.setSelected(z10);
            if (z11 && z10) {
                sendAccessibilityEvent(4);
            }
        }
    }

    protected class d extends AnimatorListenerAdapter {

        private boolean f1526a = false;

        private int f1527b;

        protected d() {
        }

        public d a(ViewPropertyAnimator viewPropertyAnimator, int i10) {
            this.f1527b = i10;
            ScrollingTabContainerView.this.f1516j = viewPropertyAnimator;
            return this;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            this.f1526a = true;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (this.f1526a) {
                return;
            }
            ScrollingTabContainerView scrollingTabContainerView = ScrollingTabContainerView.this;
            scrollingTabContainerView.f1516j = null;
            scrollingTabContainerView.setVisibility(this.f1527b);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            ScrollingTabContainerView.this.setVisibility(0);
            this.f1526a = false;
        }
    }

    public ScrollingTabContainerView(@NonNull Context context) {
        super(context);
        this.f1517k = new d();
        setHorizontalScrollBarEnabled(false);
        androidx.appcompat.view.a aVarB = androidx.appcompat.view.a.b(context);
        setContentHeight(aVarB.f());
        this.f1513g = aVarB.e();
        LinearLayoutCompat linearLayoutCompatB = b();
        this.f1509c = linearLayoutCompatB;
        addView(linearLayoutCompatB, new ViewGroup.LayoutParams(-2, -1));
    }

    private Spinner a() {
        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, R$attr.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new LinearLayoutCompat.a(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    private LinearLayoutCompat b() {
        LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(getContext(), null, R$attr.actionBarTabBarStyle);
        linearLayoutCompat.setMeasureWithLargestChildEnabled(true);
        linearLayoutCompat.setGravity(17);
        linearLayoutCompat.setLayoutParams(new LinearLayoutCompat.a(-2, -1));
        return linearLayoutCompat;
    }

    private boolean d() {
        Spinner spinner = this.f1510d;
        return spinner != null && spinner.getParent() == this;
    }

    private void e() {
        if (d()) {
            return;
        }
        if (this.f1510d == null) {
            this.f1510d = a();
        }
        removeView(this.f1509c);
        addView(this.f1510d, new ViewGroup.LayoutParams(-2, -1));
        if (this.f1510d.getAdapter() == null) {
            this.f1510d.setAdapter((SpinnerAdapter) new a());
        }
        Runnable runnable = this.f1507a;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.f1507a = null;
        }
        this.f1510d.setSelection(this.f1515i);
    }

    private boolean f() {
        if (!d()) {
            return false;
        }
        removeView(this.f1510d);
        addView(this.f1509c, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f1510d.getSelectedItemPosition());
        return false;
    }

    public void addTab(androidx.appcompat.app.a.b bVar, boolean z10) {
        c cVarC = c(bVar, false);
        this.f1509c.addView(cVarC, new LinearLayoutCompat.a(0, -1, 1.0f));
        Spinner spinner = this.f1510d;
        if (spinner != null) {
            ((a) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (z10) {
            cVarC.setSelected(true);
        }
        if (this.f1511e) {
            requestLayout();
        }
    }

    public void animateToTab(int i10) {
        final View childAt = this.f1509c.getChildAt(i10);
        Runnable runnable = this.f1507a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() {
            @Override
            public void run() {
                ScrollingTabContainerView.this.smoothScrollTo(childAt.getLeft() - ((ScrollingTabContainerView.this.getWidth() - childAt.getWidth()) / 2), 0);
                ScrollingTabContainerView.this.f1507a = null;
            }
        };
        this.f1507a = runnable2;
        post(runnable2);
    }

    public void animateToVisibility(int i10) {
        ViewPropertyAnimator viewPropertyAnimator = this.f1516j;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
        if (i10 != 0) {
            ViewPropertyAnimator viewPropertyAnimatorAlpha = animate().alpha(0.0f);
            viewPropertyAnimatorAlpha.setDuration(200L);
            viewPropertyAnimatorAlpha.setInterpolator(f1506l);
            viewPropertyAnimatorAlpha.setListener(this.f1517k.a(viewPropertyAnimatorAlpha, i10));
            viewPropertyAnimatorAlpha.start();
            return;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        ViewPropertyAnimator viewPropertyAnimatorAlpha2 = animate().alpha(1.0f);
        viewPropertyAnimatorAlpha2.setDuration(200L);
        viewPropertyAnimatorAlpha2.setInterpolator(f1506l);
        viewPropertyAnimatorAlpha2.setListener(this.f1517k.a(viewPropertyAnimatorAlpha2, i10));
        viewPropertyAnimatorAlpha2.start();
    }

    c c(androidx.appcompat.app.a.b bVar, boolean z10) {
        c cVar = new c(getContext(), bVar, z10);
        if (z10) {
            cVar.setBackgroundDrawable(null);
            cVar.setLayoutParams(new AbsListView.LayoutParams(-1, this.f1514h));
        } else {
            cVar.setFocusable(true);
            if (this.f1508b == null) {
                this.f1508b = new b();
            }
            cVar.setOnClickListener(this.f1508b);
        }
        return cVar;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f1507a;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        androidx.appcompat.view.a aVarB = androidx.appcompat.view.a.b(getContext());
        setContentHeight(aVarB.f());
        this.f1513g = aVarB.e();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f1507a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override
    public void onItemSelected(AdapterView<?> adapterView, View view, int i10, long j10) {
        ((c) view).b().e();
    }

    @Override
    public void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        boolean z10 = mode == 1073741824;
        setFillViewport(z10);
        int childCount = this.f1509c.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f1512f = -1;
        } else {
            if (childCount > 2) {
                this.f1512f = (int) (View.MeasureSpec.getSize(i10) * 0.4f);
            } else {
                this.f1512f = View.MeasureSpec.getSize(i10) / 2;
            }
            this.f1512f = Math.min(this.f1512f, this.f1513g);
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1514h, 1073741824);
        if (z10 || !this.f1511e) {
            f();
        } else {
            this.f1509c.measure(0, iMakeMeasureSpec);
            if (this.f1509c.getMeasuredWidth() > View.MeasureSpec.getSize(i10)) {
                e();
            } else {
                f();
            }
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i10, iMakeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z10 || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.f1515i);
    }

    public void removeAllTabs() {
        this.f1509c.removeAllViews();
        Spinner spinner = this.f1510d;
        if (spinner != null) {
            ((a) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1511e) {
            requestLayout();
        }
    }

    public void removeTabAt(int i10) {
        this.f1509c.removeViewAt(i10);
        Spinner spinner = this.f1510d;
        if (spinner != null) {
            ((a) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1511e) {
            requestLayout();
        }
    }

    public void setAllowCollapse(boolean z10) {
        this.f1511e = z10;
    }

    public void setContentHeight(int i10) {
        this.f1514h = i10;
        requestLayout();
    }

    public void setTabSelected(int i10) {
        this.f1515i = i10;
        int childCount = this.f1509c.getChildCount();
        int i11 = 0;
        while (i11 < childCount) {
            View childAt = this.f1509c.getChildAt(i11);
            boolean z10 = i11 == i10;
            childAt.setSelected(z10);
            if (z10) {
                animateToTab(i10);
            }
            i11++;
        }
        Spinner spinner = this.f1510d;
        if (spinner == null || i10 < 0) {
            return;
        }
        spinner.setSelection(i10);
    }

    public void updateTab(int i10) {
        ((c) this.f1509c.getChildAt(i10)).c();
        Spinner spinner = this.f1510d;
        if (spinner != null) {
            ((a) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1511e) {
            requestLayout();
        }
    }

    public void addTab(androidx.appcompat.app.a.b bVar, int i10, boolean z10) {
        c cVarC = c(bVar, false);
        this.f1509c.addView(cVarC, i10, new LinearLayoutCompat.a(0, -1, 1.0f));
        Spinner spinner = this.f1510d;
        if (spinner != null) {
            ((a) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (z10) {
            cVarC.setSelected(true);
        }
        if (this.f1511e) {
            requestLayout();
        }
    }

    @Override
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
