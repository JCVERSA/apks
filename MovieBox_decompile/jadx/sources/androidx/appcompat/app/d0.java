package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ScrollingTabContainerView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.ViewPropertyAnimatorUpdateListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public class d0 extends androidx.appcompat.app.a implements ActionBarOverlayLayout.b {
    private static final Interpolator E = new AccelerateInterpolator();
    private static final Interpolator F = new DecelerateInterpolator();
    boolean A;

    Context f817a;

    private Context f818b;

    private Activity f819c;

    ActionBarOverlayLayout f820d;

    ActionBarContainer f821e;

    androidx.appcompat.widget.t f822f;

    ActionBarContextView f823g;

    View f824h;

    ScrollingTabContainerView f825i;

    private boolean f828l;

    d f829m;

    androidx.appcompat.view.b f830n;

    androidx.appcompat.view.b.a f831o;

    private boolean f832p;

    private boolean f834r;

    boolean f837u;

    boolean f838v;

    private boolean f839w;

    androidx.appcompat.view.h f841y;

    private boolean f842z;

    private ArrayList f826j = new ArrayList();

    private int f827k = -1;

    private ArrayList f833q = new ArrayList();

    private int f835s = 0;

    boolean f836t = true;

    private boolean f840x = true;
    final ViewPropertyAnimatorListener B = new a();
    final ViewPropertyAnimatorListener C = new b();
    final ViewPropertyAnimatorUpdateListener D = new c();

    class a extends ViewPropertyAnimatorListenerAdapter {
        a() {
        }

        @Override
        public void onAnimationEnd(View view) {
            View view2;
            d0 d0Var = d0.this;
            if (d0Var.f836t && (view2 = d0Var.f824h) != null) {
                view2.setTranslationY(0.0f);
                d0.this.f821e.setTranslationY(0.0f);
            }
            d0.this.f821e.setVisibility(8);
            d0.this.f821e.setTransitioning(false);
            d0 d0Var2 = d0.this;
            d0Var2.f841y = null;
            d0Var2.y();
            ActionBarOverlayLayout actionBarOverlayLayout = d0.this.f820d;
            if (actionBarOverlayLayout != null) {
                ViewCompat.requestApplyInsets(actionBarOverlayLayout);
            }
        }
    }

    class b extends ViewPropertyAnimatorListenerAdapter {
        b() {
        }

        @Override
        public void onAnimationEnd(View view) {
            d0 d0Var = d0.this;
            d0Var.f841y = null;
            d0Var.f821e.requestLayout();
        }
    }

    class c implements ViewPropertyAnimatorUpdateListener {
        c() {
        }

        @Override
        public void onAnimationUpdate(View view) {
            ((View) d0.this.f821e.getParent()).invalidate();
        }
    }

    public class d extends androidx.appcompat.view.b implements androidx.appcompat.view.menu.f.a {

        private final Context f846c;

        private final androidx.appcompat.view.menu.f f847d;

        private androidx.appcompat.view.b.a f848e;

        private WeakReference f849f;

        public d(Context context, androidx.appcompat.view.b.a aVar) {
            this.f846c = context;
            this.f848e = aVar;
            androidx.appcompat.view.menu.f fVarX = new androidx.appcompat.view.menu.f(context).X(1);
            this.f847d = fVarX;
            fVarX.W(this);
        }

        @Override
        public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
            androidx.appcompat.view.b.a aVar = this.f848e;
            if (aVar != null) {
                return aVar.c(this, menuItem);
            }
            return false;
        }

        @Override
        public void b(androidx.appcompat.view.menu.f fVar) {
            if (this.f848e == null) {
                return;
            }
            k();
            d0.this.f823g.showOverflowMenu();
        }

        @Override
        public void c() {
            d0 d0Var = d0.this;
            if (d0Var.f829m != this) {
                return;
            }
            if (d0.x(d0Var.f837u, d0Var.f838v, false)) {
                this.f848e.a(this);
            } else {
                d0 d0Var2 = d0.this;
                d0Var2.f830n = this;
                d0Var2.f831o = this.f848e;
            }
            this.f848e = null;
            d0.this.w(false);
            d0.this.f823g.closeMode();
            d0 d0Var3 = d0.this;
            d0Var3.f820d.setHideOnContentScrollEnabled(d0Var3.A);
            d0.this.f829m = null;
        }

        @Override
        public View d() {
            WeakReference weakReference = this.f849f;
            if (weakReference != null) {
                return (View) weakReference.get();
            }
            return null;
        }

        @Override
        public Menu e() {
            return this.f847d;
        }

        @Override
        public MenuInflater f() {
            return new androidx.appcompat.view.g(this.f846c);
        }

        @Override
        public CharSequence g() {
            return d0.this.f823g.getSubtitle();
        }

        @Override
        public CharSequence i() {
            return d0.this.f823g.getTitle();
        }

        @Override
        public void k() {
            if (d0.this.f829m != this) {
                return;
            }
            this.f847d.i0();
            try {
                this.f848e.d(this, this.f847d);
            } finally {
                this.f847d.h0();
            }
        }

        @Override
        public boolean l() {
            return d0.this.f823g.isTitleOptional();
        }

        @Override
        public void m(View view) {
            d0.this.f823g.setCustomView(view);
            this.f849f = new WeakReference(view);
        }

        @Override
        public void n(int i10) {
            o(d0.this.f817a.getResources().getString(i10));
        }

        @Override
        public void o(CharSequence charSequence) {
            d0.this.f823g.setSubtitle(charSequence);
        }

        @Override
        public void q(int i10) {
            r(d0.this.f817a.getResources().getString(i10));
        }

        @Override
        public void r(CharSequence charSequence) {
            d0.this.f823g.setTitle(charSequence);
        }

        @Override
        public void s(boolean z10) {
            super.s(z10);
            d0.this.f823g.setTitleOptional(z10);
        }

        public boolean t() {
            this.f847d.i0();
            try {
                return this.f848e.b(this, this.f847d);
            } finally {
                this.f847d.h0();
            }
        }
    }

    public d0(Activity activity, boolean z10) {
        this.f819c = activity;
        View decorView = activity.getWindow().getDecorView();
        E(decorView);
        if (z10) {
            return;
        }
        this.f824h = decorView.findViewById(R.id.content);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private androidx.appcompat.widget.t B(View view) {
        if (view instanceof androidx.appcompat.widget.t) {
            return (androidx.appcompat.widget.t) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Can't make a decor toolbar out of ");
        sb2.append(view != 0 ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb2.toString());
    }

    private void D() {
        if (this.f839w) {
            this.f839w = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f820d;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            N(false);
        }
    }

    private void E(View view) {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(R$id.decor_content_parent);
        this.f820d = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f822f = B(view.findViewById(R$id.action_bar));
        this.f823g = (ActionBarContextView) view.findViewById(R$id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(R$id.action_bar_container);
        this.f821e = actionBarContainer;
        androidx.appcompat.widget.t tVar = this.f822f;
        if (tVar == null || this.f823g == null || actionBarContainer == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f817a = tVar.getContext();
        boolean z10 = (this.f822f.r() & 4) != 0;
        if (z10) {
            this.f828l = true;
        }
        androidx.appcompat.view.a aVarB = androidx.appcompat.view.a.b(this.f817a);
        K(aVarB.a() || z10);
        I(aVarB.g());
        TypedArray typedArrayObtainStyledAttributes = this.f817a.obtainStyledAttributes(null, R$styleable.ActionBar, R$attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.ActionBar_hideOnContentScroll, false)) {
            J(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            H(dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void I(boolean z10) {
        this.f834r = z10;
        if (z10) {
            this.f821e.setTabContainer(null);
            this.f822f.l(this.f825i);
        } else {
            this.f822f.l(null);
            this.f821e.setTabContainer(this.f825i);
        }
        boolean z11 = C() == 2;
        ScrollingTabContainerView scrollingTabContainerView = this.f825i;
        if (scrollingTabContainerView != null) {
            if (z11) {
                scrollingTabContainerView.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f820d;
                if (actionBarOverlayLayout != null) {
                    ViewCompat.requestApplyInsets(actionBarOverlayLayout);
                }
            } else {
                scrollingTabContainerView.setVisibility(8);
            }
        }
        this.f822f.j(!this.f834r && z11);
        this.f820d.setHasNonEmbeddedTabs(!this.f834r && z11);
    }

    private boolean L() {
        return this.f821e.isLaidOut();
    }

    private void M() {
        if (this.f839w) {
            return;
        }
        this.f839w = true;
        ActionBarOverlayLayout actionBarOverlayLayout = this.f820d;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setShowingForActionMode(true);
        }
        N(false);
    }

    private void N(boolean z10) {
        if (x(this.f837u, this.f838v, this.f839w)) {
            if (this.f840x) {
                return;
            }
            this.f840x = true;
            A(z10);
            return;
        }
        if (this.f840x) {
            this.f840x = false;
            z(z10);
        }
    }

    static boolean x(boolean z10, boolean z11, boolean z12) {
        if (z12) {
            return true;
        }
        return (z10 || z11) ? false : true;
    }

    public void A(boolean z10) {
        View view;
        View view2;
        androidx.appcompat.view.h hVar = this.f841y;
        if (hVar != null) {
            hVar.a();
        }
        this.f821e.setVisibility(0);
        if (this.f835s == 0 && (this.f842z || z10)) {
            this.f821e.setTranslationY(0.0f);
            float f10 = -this.f821e.getHeight();
            if (z10) {
                int[] iArr = {0, 0};
                this.f821e.getLocationInWindow(iArr);
                f10 -= iArr[1];
            }
            this.f821e.setTranslationY(f10);
            androidx.appcompat.view.h hVar2 = new androidx.appcompat.view.h();
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatTranslationY = ViewCompat.animate(this.f821e).translationY(0.0f);
            viewPropertyAnimatorCompatTranslationY.setUpdateListener(this.D);
            hVar2.c(viewPropertyAnimatorCompatTranslationY);
            if (this.f836t && (view2 = this.f824h) != null) {
                view2.setTranslationY(f10);
                hVar2.c(ViewCompat.animate(this.f824h).translationY(0.0f));
            }
            hVar2.f(F);
            hVar2.e(250L);
            hVar2.g(this.C);
            this.f841y = hVar2;
            hVar2.h();
        } else {
            this.f821e.setAlpha(1.0f);
            this.f821e.setTranslationY(0.0f);
            if (this.f836t && (view = this.f824h) != null) {
                view.setTranslationY(0.0f);
            }
            this.C.onAnimationEnd(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f820d;
        if (actionBarOverlayLayout != null) {
            ViewCompat.requestApplyInsets(actionBarOverlayLayout);
        }
    }

    public int C() {
        return this.f822f.d();
    }

    public void F(boolean z10) {
        G(z10 ? 4 : 0, 4);
    }

    public void G(int i10, int i11) {
        int iR = this.f822f.r();
        if ((i11 & 4) != 0) {
            this.f828l = true;
        }
        this.f822f.b((i10 & i11) | ((~i11) & iR));
    }

    public void H(float f10) {
        ViewCompat.setElevation(this.f821e, f10);
    }

    public void J(boolean z10) {
        if (z10 && !this.f820d.isInOverlayMode()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.A = z10;
        this.f820d.setHideOnContentScrollEnabled(z10);
    }

    public void K(boolean z10) {
        this.f822f.h(z10);
    }

    @Override
    public void a() {
        if (this.f838v) {
            this.f838v = false;
            N(true);
        }
    }

    @Override
    public void b(int i10) {
        this.f835s = i10;
    }

    @Override
    public void d(boolean z10) {
        this.f836t = z10;
    }

    @Override
    public void e() {
        if (this.f838v) {
            return;
        }
        this.f838v = true;
        N(true);
    }

    @Override
    public void f() {
        androidx.appcompat.view.h hVar = this.f841y;
        if (hVar != null) {
            hVar.a();
            this.f841y = null;
        }
    }

    @Override
    public boolean h() {
        androidx.appcompat.widget.t tVar = this.f822f;
        if (tVar == null || !tVar.a()) {
            return false;
        }
        this.f822f.collapseActionView();
        return true;
    }

    @Override
    public void i(boolean z10) {
        if (z10 == this.f832p) {
            return;
        }
        this.f832p = z10;
        if (this.f833q.size() <= 0) {
            return;
        }
        android.support.v4.media.session.c.a(this.f833q.get(0));
        throw null;
    }

    @Override
    public int j() {
        return this.f822f.r();
    }

    @Override
    public Context k() {
        if (this.f818b == null) {
            TypedValue typedValue = new TypedValue();
            this.f817a.getTheme().resolveAttribute(R$attr.actionBarWidgetTheme, typedValue, true);
            int i10 = typedValue.resourceId;
            if (i10 != 0) {
                this.f818b = new ContextThemeWrapper(this.f817a, i10);
            } else {
                this.f818b = this.f817a;
            }
        }
        return this.f818b;
    }

    @Override
    public void l() {
        if (this.f837u) {
            return;
        }
        this.f837u = true;
        N(false);
    }

    @Override
    public void n(Configuration configuration) {
        I(androidx.appcompat.view.a.b(this.f817a).g());
    }

    @Override
    public boolean p(int i10, KeyEvent keyEvent) {
        Menu menuE;
        d dVar = this.f829m;
        if (dVar == null || (menuE = dVar.e()) == null) {
            return false;
        }
        menuE.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuE.performShortcut(i10, keyEvent, 0);
    }

    @Override
    public void s(boolean z10) {
        if (this.f828l) {
            return;
        }
        F(z10);
    }

    @Override
    public void t(boolean z10) {
        androidx.appcompat.view.h hVar;
        this.f842z = z10;
        if (z10 || (hVar = this.f841y) == null) {
            return;
        }
        hVar.a();
    }

    @Override
    public void u(CharSequence charSequence) {
        this.f822f.setWindowTitle(charSequence);
    }

    @Override
    public androidx.appcompat.view.b v(androidx.appcompat.view.b.a aVar) {
        d dVar = this.f829m;
        if (dVar != null) {
            dVar.c();
        }
        this.f820d.setHideOnContentScrollEnabled(false);
        this.f823g.killMode();
        d dVar2 = new d(this.f823g.getContext(), aVar);
        if (!dVar2.t()) {
            return null;
        }
        this.f829m = dVar2;
        dVar2.k();
        this.f823g.initForMode(dVar2);
        w(true);
        return dVar2;
    }

    public void w(boolean z10) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatE;
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatE2;
        if (z10) {
            M();
        } else {
            D();
        }
        if (!L()) {
            if (z10) {
                this.f822f.setVisibility(4);
                this.f823g.setVisibility(0);
                return;
            } else {
                this.f822f.setVisibility(0);
                this.f823g.setVisibility(8);
                return;
            }
        }
        if (z10) {
            viewPropertyAnimatorCompatE2 = this.f822f.e(4, 100L);
            viewPropertyAnimatorCompatE = this.f823g.setupAnimatorToVisibility(0, 200L);
        } else {
            viewPropertyAnimatorCompatE = this.f822f.e(0, 200L);
            viewPropertyAnimatorCompatE2 = this.f823g.setupAnimatorToVisibility(8, 100L);
        }
        androidx.appcompat.view.h hVar = new androidx.appcompat.view.h();
        hVar.d(viewPropertyAnimatorCompatE2, viewPropertyAnimatorCompatE);
        hVar.h();
    }

    void y() {
        androidx.appcompat.view.b.a aVar = this.f831o;
        if (aVar != null) {
            aVar.a(this.f830n);
            this.f830n = null;
            this.f831o = null;
        }
    }

    public void z(boolean z10) {
        View view;
        androidx.appcompat.view.h hVar = this.f841y;
        if (hVar != null) {
            hVar.a();
        }
        if (this.f835s != 0 || (!this.f842z && !z10)) {
            this.B.onAnimationEnd(null);
            return;
        }
        this.f821e.setAlpha(1.0f);
        this.f821e.setTransitioning(true);
        androidx.appcompat.view.h hVar2 = new androidx.appcompat.view.h();
        float f10 = -this.f821e.getHeight();
        if (z10) {
            int[] iArr = {0, 0};
            this.f821e.getLocationInWindow(iArr);
            f10 -= iArr[1];
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatTranslationY = ViewCompat.animate(this.f821e).translationY(f10);
        viewPropertyAnimatorCompatTranslationY.setUpdateListener(this.D);
        hVar2.c(viewPropertyAnimatorCompatTranslationY);
        if (this.f836t && (view = this.f824h) != null) {
            hVar2.c(ViewCompat.animate(view).translationY(f10));
        }
        hVar2.f(E);
        hVar2.e(250L);
        hVar2.g(this.B);
        this.f841y = hVar2;
        hVar2.h();
    }

    public d0(Dialog dialog) {
        E(dialog.getWindow().getDecorView());
    }

    @Override
    public void c() {
    }
}
