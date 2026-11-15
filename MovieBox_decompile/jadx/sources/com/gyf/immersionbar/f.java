package com.gyf.immersionbar;

import android.R;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;

class f implements ViewTreeObserver.OnGlobalLayoutListener {

    private ImmersionBar f32282a;

    private Window f32283b;

    private View f32284c;

    private View f32285d;

    private View f32286e;

    private int f32287f;

    private int f32288g;

    private int f32289h;

    private int f32290i;

    private int f32291j;

    private boolean f32292k;

    f(ImmersionBar immersionBar) {
        this.f32287f = 0;
        this.f32288g = 0;
        this.f32289h = 0;
        this.f32290i = 0;
        this.f32282a = immersionBar;
        Window window = immersionBar.getWindow();
        this.f32283b = window;
        View decorView = window.getDecorView();
        this.f32284c = decorView;
        FrameLayout frameLayout = (FrameLayout) decorView.findViewById(R.id.content);
        if (immersionBar.isDialogFragment()) {
            Fragment supportFragment = immersionBar.getSupportFragment();
            if (supportFragment != null) {
                this.f32286e = supportFragment.getView();
            } else {
                android.app.Fragment fragment = immersionBar.getFragment();
                if (fragment != null) {
                    this.f32286e = fragment.getView();
                }
            }
        } else {
            View childAt = frameLayout.getChildAt(0);
            this.f32286e = childAt;
            if (childAt != null && (childAt instanceof DrawerLayout)) {
                this.f32286e = ((DrawerLayout) childAt).getChildAt(0);
            }
        }
        View view = this.f32286e;
        if (view != null) {
            this.f32287f = view.getPaddingLeft();
            this.f32288g = this.f32286e.getPaddingTop();
            this.f32289h = this.f32286e.getPaddingRight();
            this.f32290i = this.f32286e.getPaddingBottom();
        }
        View view2 = this.f32286e;
        this.f32285d = view2 != null ? view2 : frameLayout;
    }

    void a() {
        if (this.f32292k) {
            this.f32284c.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            this.f32292k = false;
        }
    }

    void b() {
        if (this.f32292k) {
            if (this.f32286e != null) {
                this.f32285d.setPadding(this.f32287f, this.f32288g, this.f32289h, this.f32290i);
            } else {
                this.f32285d.setPadding(this.f32282a.getPaddingLeft(), this.f32282a.getPaddingTop(), this.f32282a.getPaddingRight(), this.f32282a.getPaddingBottom());
            }
        }
    }

    void c(int i10) {
        this.f32283b.setSoftInputMode(i10);
        if (this.f32292k) {
            return;
        }
        this.f32284c.getViewTreeObserver().addOnGlobalLayoutListener(this);
        this.f32292k = true;
    }

    void d() {
        this.f32291j = 0;
    }

    @Override
    public void onGlobalLayout() {
        ImmersionBar immersionBar = this.f32282a;
        if (immersionBar == null || immersionBar.getBarParams() == null || !this.f32282a.getBarParams().F) {
            return;
        }
        a barConfig = this.f32282a.getBarConfig();
        int iD = barConfig.n() ? barConfig.d() : barConfig.g();
        Rect rect = new Rect();
        this.f32284c.getWindowVisibleDisplayFrame(rect);
        int height = this.f32285d.getHeight() - rect.bottom;
        if (height != this.f32291j) {
            this.f32291j = height;
            int i10 = 0;
            int i11 = 1;
            if (ImmersionBar.checkFitsSystemWindows(this.f32283b.getDecorView().findViewById(R.id.content))) {
                if (height - iD > iD) {
                    i10 = i11;
                }
            } else if (this.f32286e != null) {
                if (this.f32282a.getBarParams().E) {
                    height += this.f32282a.getActionBarHeight() + barConfig.k();
                }
                if (this.f32282a.getBarParams().f32267y) {
                    height += barConfig.k();
                }
                if (height > iD) {
                    i10 = height + this.f32290i;
                } else {
                    i11 = 0;
                }
                this.f32285d.setPadding(this.f32287f, this.f32288g, this.f32289h, i10);
                i10 = i11;
            } else {
                int paddingBottom = this.f32282a.getPaddingBottom();
                int i12 = height - iD;
                if (i12 > iD) {
                    paddingBottom = i12 + iD;
                    i10 = 1;
                }
                this.f32285d.setPadding(this.f32282a.getPaddingLeft(), this.f32282a.getPaddingTop(), this.f32282a.getPaddingRight(), paddingBottom);
            }
            this.f32282a.getBarParams().getClass();
            if (i10 == 0 && this.f32282a.getBarParams().f32252j != BarHide.FLAG_SHOW_BAR) {
                this.f32282a.setBar();
            }
            if (i10 == 0) {
                this.f32282a.fitsParentBarKeyboard();
            }
        }
    }
}
