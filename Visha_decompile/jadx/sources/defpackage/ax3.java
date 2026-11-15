package defpackage;

import android.R;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import com.transsion.sysbar.BarHide;
import com.transsion.sysbar.ImmersionBar;
import com.transsion.sysbar.a;

public class ax3 implements ViewTreeObserver.OnGlobalLayoutListener {
    public ImmersionBar b;
    public Window c;
    public View d;
    public View e;
    public View f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public boolean l;

    public ax3(ImmersionBar immersionBar) {
        this.g = 0;
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.b = immersionBar;
        Window window = immersionBar.getWindow();
        this.c = window;
        View decorView = window.getDecorView();
        this.d = decorView;
        FrameLayout frameLayout = (FrameLayout) decorView.findViewById(R.id.content);
        if (immersionBar.isDialogFragment()) {
            Fragment supportFragment = immersionBar.getSupportFragment();
            if (supportFragment != null) {
                this.f = supportFragment.getView();
            } else {
                android.app.Fragment fragment = immersionBar.getFragment();
                if (fragment != null) {
                    this.f = fragment.getView();
                }
            }
        } else {
            View childAt = frameLayout.getChildAt(0);
            this.f = childAt;
            if (childAt != null && (childAt instanceof DrawerLayout)) {
                this.f = ((DrawerLayout) childAt).getChildAt(0);
            }
        }
        View view = this.f;
        if (view != null) {
            this.g = view.getPaddingLeft();
            this.h = this.f.getPaddingTop();
            this.i = this.f.getPaddingRight();
            this.j = this.f.getPaddingBottom();
        }
        View view2 = this.f;
        this.e = view2 != null ? view2 : frameLayout;
    }

    public void a() {
        if (this.l) {
            this.d.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            this.l = false;
        }
    }

    public void b() {
        if (this.l) {
            if (this.f != null) {
                this.e.setPadding(this.g, this.h, this.i, this.j);
            } else {
                this.e.setPadding(this.b.getPaddingLeft(), this.b.getPaddingTop(), this.b.getPaddingRight(), this.b.getPaddingBottom());
            }
        }
    }

    public void c(int i) {
        this.c.setSoftInputMode(i);
        if (this.l || this.d.getViewTreeObserver() == null || !this.d.getViewTreeObserver().isAlive()) {
            return;
        }
        this.d.getViewTreeObserver().addOnGlobalLayoutListener(this);
        this.l = true;
    }

    public void d() {
        this.k = 0;
    }

    @Override
    public void onGlobalLayout() {
        ImmersionBar immersionBar = this.b;
        if (immersionBar == null || immersionBar.getBarParams() == null || !this.b.getBarParams().G) {
            return;
        }
        a barConfig = this.b.getBarConfig();
        int iD = barConfig.n() ? barConfig.d() : barConfig.g();
        Rect rect = new Rect();
        this.d.getWindowVisibleDisplayFrame(rect);
        int height = this.e.getHeight() - rect.bottom;
        if (height != this.k) {
            this.k = height;
            int i = 0;
            int i2 = 1;
            if (ImmersionBar.checkFitsSystemWindows(this.c.getDecorView().findViewById(R.id.content))) {
                if (height - iD > iD) {
                    i = i2;
                }
            } else if (this.f != null) {
                if (this.b.getBarParams().F) {
                    height += this.b.getActionBarHeight() + barConfig.k();
                }
                if (this.b.getBarParams().z) {
                    height += barConfig.k();
                }
                if (height > iD) {
                    i = height + this.j;
                } else {
                    i2 = 0;
                }
                this.e.setPadding(this.g, this.h, this.i, i);
                i = i2;
            } else {
                int paddingBottom = this.b.getPaddingBottom();
                int i3 = height - iD;
                if (i3 > iD) {
                    paddingBottom = i3 + iD;
                    i = 1;
                }
                this.e.setPadding(this.b.getPaddingLeft(), this.b.getPaddingTop(), this.b.getPaddingRight(), paddingBottom);
            }
            this.b.getBarParams().getClass();
            if (i == 0 && this.b.getBarParams().k != BarHide.FLAG_SHOW_BAR) {
                this.b.setBar();
            }
            if (i == 0) {
                this.b.fitsParentBarKeyboard();
            }
        }
    }
}
