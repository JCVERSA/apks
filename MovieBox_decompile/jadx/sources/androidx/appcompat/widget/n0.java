package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$drawable;
import androidx.appcompat.R$id;
import androidx.appcompat.R$string;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import com.google.android.material.card.MaterialCardView;

public class n0 implements t {

    Toolbar f1752a;

    private int f1753b;

    private View f1754c;

    private View f1755d;

    private Drawable f1756e;

    private Drawable f1757f;

    private Drawable f1758g;

    private boolean f1759h;

    CharSequence f1760i;

    private CharSequence f1761j;

    private CharSequence f1762k;

    Window.Callback f1763l;

    boolean f1764m;

    private ActionMenuPresenter f1765n;

    private int f1766o;

    private int f1767p;

    private Drawable f1768q;

    class a implements View.OnClickListener {

        final androidx.appcompat.view.menu.a f1769a;

        a() {
            this.f1769a = new androidx.appcompat.view.menu.a(n0.this.f1752a.getContext(), 0, R.id.home, 0, 0, n0.this.f1760i);
        }

        @Override
        public void onClick(View view) {
            n0 n0Var = n0.this;
            Window.Callback callback = n0Var.f1763l;
            if (callback == null || !n0Var.f1764m) {
                return;
            }
            callback.onMenuItemSelected(0, this.f1769a);
        }
    }

    class b extends ViewPropertyAnimatorListenerAdapter {

        private boolean f1771a = false;

        final int f1772b;

        b(int i10) {
            this.f1772b = i10;
        }

        @Override
        public void onAnimationCancel(View view) {
            this.f1771a = true;
        }

        @Override
        public void onAnimationEnd(View view) {
            if (this.f1771a) {
                return;
            }
            n0.this.f1752a.setVisibility(this.f1772b);
        }

        @Override
        public void onAnimationStart(View view) {
            n0.this.f1752a.setVisibility(0);
        }
    }

    public n0(Toolbar toolbar, boolean z10) {
        this(toolbar, z10, R$string.abc_action_bar_up_description, R$drawable.abc_ic_ab_back_material);
    }

    private void C(CharSequence charSequence) {
        this.f1760i = charSequence;
        if ((this.f1753b & 8) != 0) {
            this.f1752a.setTitle(charSequence);
            if (this.f1759h) {
                ViewCompat.setAccessibilityPaneTitle(this.f1752a.getRootView(), charSequence);
            }
        }
    }

    private void D() {
        if ((this.f1753b & 4) != 0) {
            if (TextUtils.isEmpty(this.f1762k)) {
                this.f1752a.setNavigationContentDescription(this.f1767p);
            } else {
                this.f1752a.setNavigationContentDescription(this.f1762k);
            }
        }
    }

    private void E() {
        if ((this.f1753b & 4) == 0) {
            this.f1752a.setNavigationIcon((Drawable) null);
            return;
        }
        Toolbar toolbar = this.f1752a;
        Drawable drawable = this.f1758g;
        if (drawable == null) {
            drawable = this.f1768q;
        }
        toolbar.setNavigationIcon(drawable);
    }

    private void F() {
        Drawable drawable;
        int i10 = this.f1753b;
        if ((i10 & 2) == 0) {
            drawable = null;
        } else if ((i10 & 1) == 0 || (drawable = this.f1757f) == null) {
            drawable = this.f1756e;
        }
        this.f1752a.setLogo(drawable);
    }

    private int t() {
        if (this.f1752a.getNavigationIcon() == null) {
            return 11;
        }
        this.f1768q = this.f1752a.getNavigationIcon();
        return 15;
    }

    public void A(CharSequence charSequence) {
        this.f1761j = charSequence;
        if ((this.f1753b & 8) != 0) {
            this.f1752a.setSubtitle(charSequence);
        }
    }

    public void B(CharSequence charSequence) {
        this.f1759h = true;
        C(charSequence);
    }

    @Override
    public boolean a() {
        return this.f1752a.hasExpandedActionView();
    }

    @Override
    public void b(int i10) {
        View view;
        int i11 = this.f1753b ^ i10;
        this.f1753b = i10;
        if (i11 != 0) {
            if ((i11 & 4) != 0) {
                if ((i10 & 4) != 0) {
                    D();
                }
                E();
            }
            if ((i11 & 3) != 0) {
                F();
            }
            if ((i11 & 8) != 0) {
                if ((i10 & 8) != 0) {
                    this.f1752a.setTitle(this.f1760i);
                    this.f1752a.setSubtitle(this.f1761j);
                } else {
                    this.f1752a.setTitle((CharSequence) null);
                    this.f1752a.setSubtitle((CharSequence) null);
                }
            }
            if ((i11 & 16) == 0 || (view = this.f1755d) == null) {
                return;
            }
            if ((i10 & 16) != 0) {
                this.f1752a.addView(view);
            } else {
                this.f1752a.removeView(view);
            }
        }
    }

    @Override
    public Menu c() {
        return this.f1752a.getMenu();
    }

    @Override
    public boolean canShowOverflowMenu() {
        return this.f1752a.canShowOverflowMenu();
    }

    @Override
    public void collapseActionView() {
        this.f1752a.collapseActionView();
    }

    @Override
    public int d() {
        return this.f1766o;
    }

    @Override
    public ViewPropertyAnimatorCompat e(int i10, long j10) {
        return ViewCompat.animate(this.f1752a).alpha(i10 == 0 ? 1.0f : 0.0f).setDuration(j10).setListener(new b(i10));
    }

    @Override
    public boolean f() {
        return this.f1756e != null;
    }

    @Override
    public ViewGroup g() {
        return this.f1752a;
    }

    @Override
    public Context getContext() {
        return this.f1752a.getContext();
    }

    @Override
    public CharSequence getTitle() {
        return this.f1752a.getTitle();
    }

    @Override
    public boolean hideOverflowMenu() {
        return this.f1752a.hideOverflowMenu();
    }

    @Override
    public boolean isOverflowMenuShowPending() {
        return this.f1752a.isOverflowMenuShowPending();
    }

    @Override
    public boolean isOverflowMenuShowing() {
        return this.f1752a.isOverflowMenuShowing();
    }

    @Override
    public void j(boolean z10) {
        this.f1752a.setCollapsible(z10);
    }

    @Override
    public void k() {
        this.f1752a.dismissPopupMenus();
    }

    @Override
    public void l(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f1754c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f1752a;
            if (parent == toolbar) {
                toolbar.removeView(this.f1754c);
            }
        }
        this.f1754c = scrollingTabContainerView;
        if (scrollingTabContainerView == null || this.f1766o != 2) {
            return;
        }
        this.f1752a.addView(scrollingTabContainerView, 0);
        Toolbar.f fVar = (Toolbar.f) this.f1754c.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) fVar).width = -2;
        ((ViewGroup.MarginLayoutParams) fVar).height = -2;
        fVar.f795a = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START;
        scrollingTabContainerView.setAllowCollapse(true);
    }

    @Override
    public void m(SparseArray sparseArray) {
        this.f1752a.saveHierarchyState(sparseArray);
    }

    @Override
    public void n(int i10) {
        w(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    @Override
    public void o(androidx.appcompat.view.menu.l.a aVar, androidx.appcompat.view.menu.f.a aVar2) {
        this.f1752a.setMenuCallbacks(aVar, aVar2);
    }

    @Override
    public void p(SparseArray sparseArray) {
        this.f1752a.restoreHierarchyState(sparseArray);
    }

    @Override
    public boolean q() {
        return this.f1757f != null;
    }

    @Override
    public int r() {
        return this.f1753b;
    }

    @Override
    public void setIcon(int i10) {
        setIcon(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    @Override
    public void setMenu(Menu menu, androidx.appcompat.view.menu.l.a aVar) {
        if (this.f1765n == null) {
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(this.f1752a.getContext());
            this.f1765n = actionMenuPresenter;
            actionMenuPresenter.r(R$id.action_menu_presenter);
        }
        this.f1765n.d(aVar);
        this.f1752a.setMenu((androidx.appcompat.view.menu.f) menu, this.f1765n);
    }

    @Override
    public void setMenuPrepared() {
        this.f1764m = true;
    }

    @Override
    public void setVisibility(int i10) {
        this.f1752a.setVisibility(i10);
    }

    @Override
    public void setWindowCallback(Window.Callback callback) {
        this.f1763l = callback;
    }

    @Override
    public void setWindowTitle(CharSequence charSequence) {
        if (this.f1759h) {
            return;
        }
        C(charSequence);
    }

    @Override
    public boolean showOverflowMenu() {
        return this.f1752a.showOverflowMenu();
    }

    public void u(View view) {
        View view2 = this.f1755d;
        if (view2 != null && (this.f1753b & 16) != 0) {
            this.f1752a.removeView(view2);
        }
        this.f1755d = view;
        if (view == null || (this.f1753b & 16) == 0) {
            return;
        }
        this.f1752a.addView(view);
    }

    public void v(int i10) {
        if (i10 == this.f1767p) {
            return;
        }
        this.f1767p = i10;
        if (TextUtils.isEmpty(this.f1752a.getNavigationContentDescription())) {
            x(this.f1767p);
        }
    }

    public void w(Drawable drawable) {
        this.f1757f = drawable;
        F();
    }

    public void x(int i10) {
        y(i10 == 0 ? null : getContext().getString(i10));
    }

    public void y(CharSequence charSequence) {
        this.f1762k = charSequence;
        D();
    }

    public void z(Drawable drawable) {
        this.f1758g = drawable;
        E();
    }

    public n0(Toolbar toolbar, boolean z10, int i10, int i11) {
        Drawable drawable;
        this.f1766o = 0;
        this.f1767p = 0;
        this.f1752a = toolbar;
        this.f1760i = toolbar.getTitle();
        this.f1761j = toolbar.getSubtitle();
        this.f1759h = this.f1760i != null;
        this.f1758g = toolbar.getNavigationIcon();
        j0 j0VarV = j0.v(toolbar.getContext(), null, R$styleable.ActionBar, R$attr.actionBarStyle, 0);
        this.f1768q = j0VarV.g(R$styleable.ActionBar_homeAsUpIndicator);
        if (z10) {
            CharSequence charSequenceP = j0VarV.p(R$styleable.ActionBar_title);
            if (!TextUtils.isEmpty(charSequenceP)) {
                B(charSequenceP);
            }
            CharSequence charSequenceP2 = j0VarV.p(R$styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(charSequenceP2)) {
                A(charSequenceP2);
            }
            Drawable drawableG = j0VarV.g(R$styleable.ActionBar_logo);
            if (drawableG != null) {
                w(drawableG);
            }
            Drawable drawableG2 = j0VarV.g(R$styleable.ActionBar_icon);
            if (drawableG2 != null) {
                setIcon(drawableG2);
            }
            if (this.f1758g == null && (drawable = this.f1768q) != null) {
                z(drawable);
            }
            b(j0VarV.k(R$styleable.ActionBar_displayOptions, 0));
            int iN = j0VarV.n(R$styleable.ActionBar_customNavigationLayout, 0);
            if (iN != 0) {
                u(LayoutInflater.from(this.f1752a.getContext()).inflate(iN, (ViewGroup) this.f1752a, false));
                b(this.f1753b | 16);
            }
            int iM = j0VarV.m(R$styleable.ActionBar_height, 0);
            if (iM > 0) {
                ViewGroup.LayoutParams layoutParams = this.f1752a.getLayoutParams();
                layoutParams.height = iM;
                this.f1752a.setLayoutParams(layoutParams);
            }
            int iE = j0VarV.e(R$styleable.ActionBar_contentInsetStart, -1);
            int iE2 = j0VarV.e(R$styleable.ActionBar_contentInsetEnd, -1);
            if (iE >= 0 || iE2 >= 0) {
                this.f1752a.setContentInsetsRelative(Math.max(iE, 0), Math.max(iE2, 0));
            }
            int iN2 = j0VarV.n(R$styleable.ActionBar_titleTextStyle, 0);
            if (iN2 != 0) {
                Toolbar toolbar2 = this.f1752a;
                toolbar2.setTitleTextAppearance(toolbar2.getContext(), iN2);
            }
            int iN3 = j0VarV.n(R$styleable.ActionBar_subtitleTextStyle, 0);
            if (iN3 != 0) {
                Toolbar toolbar3 = this.f1752a;
                toolbar3.setSubtitleTextAppearance(toolbar3.getContext(), iN3);
            }
            int iN4 = j0VarV.n(R$styleable.ActionBar_popupTheme, 0);
            if (iN4 != 0) {
                this.f1752a.setPopupTheme(iN4);
            }
        } else {
            this.f1753b = t();
        }
        j0VarV.x();
        v(i10);
        this.f1762k = this.f1752a.getNavigationContentDescription();
        this.f1752a.setNavigationOnClickListener(new a());
    }

    @Override
    public void setIcon(Drawable drawable) {
        this.f1756e = drawable;
        F();
    }

    @Override
    public void i() {
    }

    @Override
    public void s() {
    }

    @Override
    public void h(boolean z10) {
    }
}
