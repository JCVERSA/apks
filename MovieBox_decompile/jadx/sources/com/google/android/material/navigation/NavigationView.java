package com.google.android.material.navigation;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.appcompat.view.g;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.widget.j0;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import androidx.drawerlayout.widget.DrawerLayout;
import cb.j;
import cb.n;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.g0;
import com.google.android.material.internal.r;
import com.google.android.material.internal.s;
import java.util.Objects;
import ya.i;

public class NavigationView extends ScrimInsetsFrameLayout implements ya.b {

    private static final int[] f28543w = {R.attr.state_checked};

    private static final int[] f28544x = {-16842910};

    private static final int f28545y = R$style.Widget_Design_NavigationView;

    private final r f28546h;

    private final s f28547i;

    private final int f28548j;

    private final int[] f28549k;

    private MenuInflater f28550l;

    private ViewTreeObserver.OnGlobalLayoutListener f28551m;

    private boolean f28552n;

    private boolean f28553o;

    private int f28554p;

    private final boolean f28555q;

    private final int f28556r;

    private final cb.r f28557s;

    private final i f28558t;

    private final ya.c f28559u;

    private final DrawerLayout.e f28560v;

    class a extends DrawerLayout.g {
        a() {
        }

        @Override
        public void a(View view) {
            NavigationView navigationView = NavigationView.this;
            if (view == navigationView) {
                final ya.c cVar = navigationView.f28559u;
                Objects.requireNonNull(cVar);
                view.post(new Runnable() {
                    @Override
                    public final void run() {
                        cVar.e();
                    }
                });
            }
        }

        @Override
        public void b(View view) {
            NavigationView navigationView = NavigationView.this;
            if (view == navigationView) {
                navigationView.f28559u.f();
                NavigationView.this.l();
            }
        }
    }

    class b implements androidx.appcompat.view.menu.f.a {
        b() {
        }

        @Override
        public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
            NavigationView.this.getClass();
            return false;
        }

        @Override
        public void b(androidx.appcompat.view.menu.f fVar) {
        }
    }

    class c implements ViewTreeObserver.OnGlobalLayoutListener {
        c() {
        }

        @Override
        public void onGlobalLayout() {
            NavigationView navigationView = NavigationView.this;
            navigationView.getLocationOnScreen(navigationView.f28549k);
            boolean z10 = true;
            boolean z11 = NavigationView.this.f28549k[1] == 0;
            NavigationView.this.f28547i.F(z11);
            NavigationView navigationView2 = NavigationView.this;
            navigationView2.setDrawTopInsetForeground(z11 && navigationView2.isTopInsetScrimEnabled());
            NavigationView.this.setDrawLeftInsetForeground(NavigationView.this.f28549k[0] == 0 || NavigationView.this.f28549k[0] + NavigationView.this.getWidth() == 0);
            Activity activityA = com.google.android.material.internal.c.a(NavigationView.this.getContext());
            if (activityA != null) {
                Rect rectA = g0.a(activityA);
                boolean z12 = rectA.height() - NavigationView.this.getHeight() == NavigationView.this.f28549k[1];
                boolean z13 = Color.alpha(activityA.getWindow().getNavigationBarColor()) != 0;
                NavigationView navigationView3 = NavigationView.this;
                navigationView3.setDrawBottomInsetForeground(z12 && z13 && navigationView3.isBottomInsetScrimEnabled());
                if (rectA.width() != NavigationView.this.f28549k[0] && rectA.width() - NavigationView.this.getWidth() != NavigationView.this.f28549k[0]) {
                    z10 = false;
                }
                NavigationView.this.setDrawRightInsetForeground(z10);
            }
        }
    }

    public interface d {
    }

    public NavigationView(@NonNull Context context) {
        this(context, null);
    }

    private ColorStateList g(int i10) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i10, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateListA = g.a.a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(R$attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i11 = typedValue.data;
        int defaultColor = colorStateListA.getDefaultColor();
        int[] iArr = f28544x;
        return new ColorStateList(new int[][]{iArr, f28543w, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateListA.getColorForState(iArr, defaultColor), i11, defaultColor});
    }

    private MenuInflater getMenuInflater() {
        if (this.f28550l == null) {
            this.f28550l = new g(getContext());
        }
        return this.f28550l;
    }

    private Drawable h(j0 j0Var) {
        return i(j0Var, za.c.b(getContext(), j0Var, R$styleable.NavigationView_itemShapeFillColor));
    }

    private Drawable i(j0 j0Var, ColorStateList colorStateList) {
        cb.i iVar = new cb.i(n.b(getContext(), j0Var.n(R$styleable.NavigationView_itemShapeAppearance, 0), j0Var.n(R$styleable.NavigationView_itemShapeAppearanceOverlay, 0)).m());
        iVar.d0(colorStateList);
        return new InsetDrawable((Drawable) iVar, j0Var.f(R$styleable.NavigationView_itemShapeInsetStart, 0), j0Var.f(R$styleable.NavigationView_itemShapeInsetTop, 0), j0Var.f(R$styleable.NavigationView_itemShapeInsetEnd, 0), j0Var.f(R$styleable.NavigationView_itemShapeInsetBottom, 0));
    }

    private boolean j(j0 j0Var) {
        return j0Var.s(R$styleable.NavigationView_itemShapeAppearance) || j0Var.s(R$styleable.NavigationView_itemShapeAppearanceOverlay);
    }

    public void k(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    public void l() {
        if (!this.f28555q || this.f28554p == 0) {
            return;
        }
        this.f28554p = 0;
        m(getWidth(), getHeight());
    }

    private void m(int i10, int i11) {
        if ((getParent() instanceof DrawerLayout) && (getLayoutParams() instanceof DrawerLayout.f)) {
            if ((this.f28554p > 0 || this.f28555q) && (getBackground() instanceof cb.i)) {
                boolean z10 = GravityCompat.getAbsoluteGravity(((DrawerLayout.f) getLayoutParams()).f8664a, ViewCompat.getLayoutDirection(this)) == 3;
                cb.i iVar = (cb.i) getBackground();
                n.b bVarO = iVar.G().v().o(this.f28554p);
                if (z10) {
                    bVarO.H(0.0f);
                    bVarO.w(0.0f);
                } else {
                    bVarO.M(0.0f);
                    bVarO.B(0.0f);
                }
                n nVarM = bVarO.m();
                iVar.setShapeAppearanceModel(nVarM);
                this.f28557s.g(this, nVarM);
                this.f28557s.f(this, new RectF(0.0f, 0.0f, i10, i11));
                this.f28557s.i(this, true);
            }
        }
    }

    private Pair n() {
        ViewParent parent = getParent();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if ((parent instanceof DrawerLayout) && (layoutParams instanceof DrawerLayout.f)) {
            return new Pair((DrawerLayout) parent, (DrawerLayout.f) layoutParams);
        }
        throw new IllegalStateException("NavigationView back progress requires the direct parent view to be a DrawerLayout.");
    }

    private void o() {
        this.f28551m = new c();
        getViewTreeObserver().addOnGlobalLayoutListener(this.f28551m);
    }

    @Override
    protected void a(WindowInsetsCompat windowInsetsCompat) {
        this.f28547i.m(windowInsetsCompat);
    }

    public void addHeaderView(@NonNull View view) {
        this.f28547i.l(view);
    }

    @Override
    public void cancelBackProgress() {
        n();
        this.f28558t.f();
        l();
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
        this.f28557s.e(canvas, new ra.a.InterfaceC0869a() {
            @Override
            public final void a(Canvas canvas2) {
                this.f28568a.k(canvas2);
            }
        });
    }

    i getBackHelper() {
        return this.f28558t;
    }

    @Nullable
    public MenuItem getCheckedItem() {
        return this.f28547i.n();
    }

    public int getDividerInsetEnd() {
        return this.f28547i.o();
    }

    public int getDividerInsetStart() {
        return this.f28547i.p();
    }

    public int getHeaderCount() {
        return this.f28547i.q();
    }

    public View getHeaderView(int i10) {
        return this.f28547i.r(i10);
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f28547i.s();
    }

    public int getItemHorizontalPadding() {
        return this.f28547i.t();
    }

    public int getItemIconPadding() {
        return this.f28547i.u();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f28547i.x();
    }

    public int getItemMaxLines() {
        return this.f28547i.v();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f28547i.w();
    }

    public int getItemVerticalPadding() {
        return this.f28547i.y();
    }

    @NonNull
    public Menu getMenu() {
        return this.f28546h;
    }

    public int getSubheaderInsetEnd() {
        return this.f28547i.A();
    }

    public int getSubheaderInsetStart() {
        return this.f28547i.B();
    }

    @Override
    public void handleBackInvoked() {
        Pair pairN = n();
        DrawerLayout drawerLayout = (DrawerLayout) pairN.first;
        androidx.activity.b bVarC = this.f28558t.c();
        if (bVarC == null || Build.VERSION.SDK_INT < 34) {
            drawerLayout.closeDrawer(this);
            return;
        }
        this.f28558t.h(bVarC, ((DrawerLayout.f) pairN.second).f8664a, com.google.android.material.navigation.b.b(drawerLayout, this), com.google.android.material.navigation.b.c(drawerLayout));
    }

    public View inflateHeaderView(int i10) {
        return this.f28547i.D(i10);
    }

    public void inflateMenu(int i10) {
        this.f28547i.a0(true);
        getMenuInflater().inflate(i10, this.f28546h);
        this.f28547i.a0(false);
        this.f28547i.h(false);
    }

    public boolean isBottomInsetScrimEnabled() {
        return this.f28553o;
    }

    public boolean isTopInsetScrimEnabled() {
        return this.f28552n;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        j.e(this);
        ViewParent parent = getParent();
        if ((parent instanceof DrawerLayout) && this.f28559u.b()) {
            DrawerLayout drawerLayout = (DrawerLayout) parent;
            drawerLayout.removeDrawerListener(this.f28560v);
            drawerLayout.addDrawerListener(this.f28560v);
            if (drawerLayout.isDrawerOpen(this)) {
                this.f28559u.e();
            }
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.f28551m);
        ViewParent parent = getParent();
        if (parent instanceof DrawerLayout) {
            ((DrawerLayout) parent).removeDrawerListener(this.f28560v);
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        if (mode == Integer.MIN_VALUE) {
            i10 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i10), this.f28548j), 1073741824);
        } else if (mode == 0) {
            i10 = View.MeasureSpec.makeMeasureSpec(this.f28548j, 1073741824);
        }
        super.onMeasure(i10, i11);
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f28546h.T(savedState.menuState);
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.menuState = bundle;
        this.f28546h.V(bundle);
        return savedState;
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        m(i10, i11);
    }

    public void removeHeaderView(@NonNull View view) {
        this.f28547i.E(view);
    }

    public void setBottomInsetScrimEnabled(boolean z10) {
        this.f28553o = z10;
    }

    public void setCheckedItem(int i10) {
        MenuItem menuItemFindItem = this.f28546h.findItem(i10);
        if (menuItemFindItem != null) {
            this.f28547i.G((h) menuItemFindItem);
        }
    }

    public void setDividerInsetEnd(int i10) {
        this.f28547i.H(i10);
    }

    public void setDividerInsetStart(int i10) {
        this.f28547i.I(i10);
    }

    @Override
    public void setElevation(float f10) {
        super.setElevation(f10);
        j.d(this, f10);
    }

    public void setForceCompatClippingEnabled(boolean z10) {
        this.f28557s.h(this, z10);
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f28547i.K(drawable);
    }

    public void setItemBackgroundResource(int i10) {
        setItemBackground(androidx.core.content.b.getDrawable(getContext(), i10));
    }

    public void setItemHorizontalPadding(int i10) {
        this.f28547i.M(i10);
    }

    public void setItemHorizontalPaddingResource(int i10) {
        this.f28547i.M(getResources().getDimensionPixelSize(i10));
    }

    public void setItemIconPadding(int i10) {
        this.f28547i.N(i10);
    }

    public void setItemIconPaddingResource(int i10) {
        this.f28547i.N(getResources().getDimensionPixelSize(i10));
    }

    public void setItemIconSize(int i10) {
        this.f28547i.O(i10);
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f28547i.P(colorStateList);
    }

    public void setItemMaxLines(int i10) {
        this.f28547i.Q(i10);
    }

    public void setItemTextAppearance(int i10) {
        this.f28547i.R(i10);
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z10) {
        this.f28547i.S(z10);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f28547i.T(colorStateList);
    }

    public void setItemVerticalPadding(int i10) {
        this.f28547i.U(i10);
    }

    public void setItemVerticalPaddingResource(int i10) {
        this.f28547i.U(getResources().getDimensionPixelSize(i10));
    }

    public void setNavigationItemSelectedListener(@Nullable d dVar) {
    }

    @Override
    public void setOverScrollMode(int i10) {
        super.setOverScrollMode(i10);
        s sVar = this.f28547i;
        if (sVar != null) {
            sVar.V(i10);
        }
    }

    public void setSubheaderInsetEnd(int i10) {
        this.f28547i.X(i10);
    }

    public void setSubheaderInsetStart(int i10) {
        this.f28547i.Y(i10);
    }

    public void setTopInsetScrimEnabled(boolean z10) {
        this.f28552n = z10;
    }

    @Override
    public void startBackProgress(@NonNull androidx.activity.b bVar) {
        n();
        this.f28558t.j(bVar);
    }

    @Override
    public void updateBackProgress(@NonNull androidx.activity.b bVar) {
        this.f28558t.l(bVar, ((DrawerLayout.f) n().second).f8664a);
        if (this.f28555q) {
            this.f28554p = qa.a.c(0, this.f28556r, this.f28558t.a(bVar.a()));
            m(getWidth(), getHeight());
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        @Nullable
        public Bundle menuState;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.menuState = parcel.readBundle(classLoader);
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeBundle(this.menuState);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public NavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.material.R$attr.navigationViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        ColorStateList colorStateListG;
        int i11;
        int i12;
        int i13 = f28545y;
        super(db.a.c(context, attributeSet, i10, i13), attributeSet, i10);
        s sVar = new s();
        this.f28547i = sVar;
        this.f28549k = new int[2];
        this.f28552n = true;
        this.f28553o = true;
        this.f28554p = 0;
        this.f28557s = cb.r.a(this);
        this.f28558t = new i(this);
        this.f28559u = new ya.c(this);
        this.f28560v = new a();
        Context context2 = getContext();
        r rVar = new r(context2);
        this.f28546h = rVar;
        j0 j0VarJ = b0.j(context2, attributeSet, R$styleable.NavigationView, i10, i13, new int[0]);
        if (j0VarJ.s(R$styleable.NavigationView_android_background)) {
            ViewCompat.setBackground(this, j0VarJ.g(R$styleable.NavigationView_android_background));
        }
        int iF = j0VarJ.f(R$styleable.NavigationView_drawerLayoutCornerSize, 0);
        this.f28554p = iF;
        this.f28555q = iF == 0;
        this.f28556r = getResources().getDimensionPixelSize(R$dimen.m3_navigation_drawer_layout_corner_size);
        Drawable background = getBackground();
        ColorStateList colorStateListG2 = com.google.android.material.drawable.d.g(background);
        if (background == null || colorStateListG2 != null) {
            cb.i iVar = new cb.i(n.e(context2, attributeSet, i10, i13).m());
            if (colorStateListG2 != null) {
                iVar.d0(colorStateListG2);
            }
            iVar.S(context2);
            ViewCompat.setBackground(this, iVar);
        }
        if (j0VarJ.s(R$styleable.NavigationView_elevation)) {
            setElevation(j0VarJ.f(R$styleable.NavigationView_elevation, 0));
        }
        setFitsSystemWindows(j0VarJ.a(R$styleable.NavigationView_android_fitsSystemWindows, false));
        this.f28548j = j0VarJ.f(R$styleable.NavigationView_android_maxWidth, 0);
        ColorStateList colorStateListC = j0VarJ.s(R$styleable.NavigationView_subheaderColor) ? j0VarJ.c(R$styleable.NavigationView_subheaderColor) : null;
        int iN = j0VarJ.s(R$styleable.NavigationView_subheaderTextAppearance) ? j0VarJ.n(R$styleable.NavigationView_subheaderTextAppearance, 0) : 0;
        if (iN == 0 && colorStateListC == null) {
            colorStateListC = g(R.attr.textColorSecondary);
        }
        if (j0VarJ.s(R$styleable.NavigationView_itemIconTint)) {
            colorStateListG = j0VarJ.c(R$styleable.NavigationView_itemIconTint);
        } else {
            colorStateListG = g(R.attr.textColorSecondary);
        }
        int iN2 = j0VarJ.s(R$styleable.NavigationView_itemTextAppearance) ? j0VarJ.n(R$styleable.NavigationView_itemTextAppearance, 0) : 0;
        boolean zA = j0VarJ.a(R$styleable.NavigationView_itemTextAppearanceActiveBoldEnabled, true);
        if (j0VarJ.s(R$styleable.NavigationView_itemIconSize)) {
            setItemIconSize(j0VarJ.f(R$styleable.NavigationView_itemIconSize, 0));
        }
        ColorStateList colorStateListC2 = j0VarJ.s(R$styleable.NavigationView_itemTextColor) ? j0VarJ.c(R$styleable.NavigationView_itemTextColor) : null;
        if (iN2 == 0 && colorStateListC2 == null) {
            colorStateListC2 = g(R.attr.textColorPrimary);
        }
        Drawable drawableG = j0VarJ.g(R$styleable.NavigationView_itemBackground);
        if (drawableG == null && j(j0VarJ)) {
            drawableG = h(j0VarJ);
            ColorStateList colorStateListB = za.c.b(context2, j0VarJ, R$styleable.NavigationView_itemRippleColor);
            if (colorStateListB != null) {
                sVar.L(new RippleDrawable(ab.b.d(colorStateListB), null, i(j0VarJ, null)));
            }
        }
        if (j0VarJ.s(R$styleable.NavigationView_itemHorizontalPadding)) {
            i11 = 0;
            setItemHorizontalPadding(j0VarJ.f(R$styleable.NavigationView_itemHorizontalPadding, 0));
        } else {
            i11 = 0;
        }
        if (j0VarJ.s(R$styleable.NavigationView_itemVerticalPadding)) {
            setItemVerticalPadding(j0VarJ.f(R$styleable.NavigationView_itemVerticalPadding, i11));
        }
        setDividerInsetStart(j0VarJ.f(R$styleable.NavigationView_dividerInsetStart, i11));
        setDividerInsetEnd(j0VarJ.f(R$styleable.NavigationView_dividerInsetEnd, i11));
        setSubheaderInsetStart(j0VarJ.f(R$styleable.NavigationView_subheaderInsetStart, i11));
        setSubheaderInsetEnd(j0VarJ.f(R$styleable.NavigationView_subheaderInsetEnd, i11));
        setTopInsetScrimEnabled(j0VarJ.a(R$styleable.NavigationView_topInsetScrimEnabled, this.f28552n));
        setBottomInsetScrimEnabled(j0VarJ.a(R$styleable.NavigationView_bottomInsetScrimEnabled, this.f28553o));
        int iF2 = j0VarJ.f(R$styleable.NavigationView_itemIconPadding, i11);
        setItemMaxLines(j0VarJ.k(R$styleable.NavigationView_itemMaxLines, 1));
        rVar.W(new b());
        sVar.J(1);
        sVar.k(context2, rVar);
        if (iN != 0) {
            sVar.Z(iN);
        }
        sVar.W(colorStateListC);
        sVar.P(colorStateListG);
        sVar.V(getOverScrollMode());
        if (iN2 != 0) {
            sVar.R(iN2);
        }
        sVar.S(zA);
        sVar.T(colorStateListC2);
        sVar.K(drawableG);
        sVar.N(iF2);
        rVar.b(sVar);
        addView((View) sVar.z(this));
        if (j0VarJ.s(R$styleable.NavigationView_menu)) {
            i12 = 0;
            inflateMenu(j0VarJ.n(R$styleable.NavigationView_menu, 0));
        } else {
            i12 = 0;
        }
        if (j0VarJ.s(R$styleable.NavigationView_headerLayout)) {
            inflateHeaderView(j0VarJ.n(R$styleable.NavigationView_headerLayout, i12));
        }
        j0VarJ.x();
        o();
    }

    public void setCheckedItem(@NonNull MenuItem menuItem) {
        MenuItem menuItemFindItem = this.f28546h.findItem(menuItem.getItemId());
        if (menuItemFindItem != null) {
            this.f28547i.G((h) menuItemFindItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }
}
