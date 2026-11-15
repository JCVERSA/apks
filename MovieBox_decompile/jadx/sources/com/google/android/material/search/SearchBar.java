package com.google.android.material.search;

import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.ToolbarUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;

public class SearchBar extends Toolbar {

    private static final int f28690m0 = R$style.Widget_Material3_SearchBar;
    private final TextView U;
    private final boolean V;
    private final boolean W;

    private final i f28691a0;

    private final Drawable f28692b0;

    private final boolean f28693c0;

    private final boolean f28694d0;

    private View f28695e0;

    private Integer f28696f0;

    private Drawable f28697g0;

    private int f28698h0;

    private boolean f28699i0;

    private cb.i f28700j0;

    private final AccessibilityManager f28701k0;

    private final AccessibilityManagerCompat.TouchExplorationStateChangeListener f28702l0;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        String f28703a;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
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

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.f28703a);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f28703a = parcel.readString();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    class a implements View.OnAttachStateChangeListener {
        a() {
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            AccessibilityManagerCompat.addTouchExplorationStateChangeListener(SearchBar.this.f28701k0, SearchBar.this.f28702l0);
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(SearchBar.this.f28701k0, SearchBar.this.f28702l0);
        }
    }

    public static abstract class b {
        public void a() {
        }

        public void b() {
        }
    }

    public SearchBar(@NonNull Context context) {
        this(context, null);
    }

    private int G(int i10, int i11) {
        return i10 == 0 ? i11 : i10;
    }

    private void H(cb.n nVar, int i10, float f10, float f11, int i11) {
        cb.i iVar = new cb.i(nVar);
        this.f28700j0 = iVar;
        iVar.S(getContext());
        this.f28700j0.c0(f10);
        if (f11 >= 0.0f) {
            this.f28700j0.l0(f11, i11);
        }
        int iD = com.google.android.material.color.b.d(this, R$attr.colorControlHighlight);
        this.f28700j0.d0(ColorStateList.valueOf(i10));
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(iD);
        cb.i iVar2 = this.f28700j0;
        ViewCompat.setBackground(this, new RippleDrawable(colorStateListValueOf, iVar2, iVar2));
    }

    private void I() {
        setNavigationIcon(getNavigationIcon() == null ? this.f28692b0 : getNavigationIcon());
        setNavigationIconDecorative(true);
    }

    private void J(int i10, String str, String str2) {
        if (i10 != -1) {
            androidx.core.widget.l.p(this.U, i10);
        }
        setText(str);
        setHint(str2);
        if (getNavigationIcon() == null) {
            MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) this.U.getLayoutParams(), getResources().getDimensionPixelSize(R$dimen.m3_searchbar_text_margin_start_no_navigation_icon));
        }
    }

    public void K(boolean z10) {
        setFocusableInTouchMode(z10);
    }

    public void L() {
        this.f28691a0.J(this);
    }

    private void M() {
        View view = this.f28695e0;
        if (view == null) {
            return;
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredWidth2 = (getMeasuredWidth() / 2) - (measuredWidth / 2);
        int i10 = measuredWidth2 + measuredWidth;
        int measuredHeight = this.f28695e0.getMeasuredHeight();
        int measuredHeight2 = (getMeasuredHeight() / 2) - (measuredHeight / 2);
        N(this.f28695e0, measuredWidth2, measuredHeight2, i10, measuredHeight2 + measuredHeight);
    }

    private void N(View view, int i10, int i11, int i12, int i13) {
        if (ViewCompat.getLayoutDirection(this) == 1) {
            view.layout(getMeasuredWidth() - i12, i11, getMeasuredWidth() - i10, i13);
        } else {
            view.layout(i10, i11, i12, i13);
        }
    }

    private Drawable O(Drawable drawable) {
        int iD;
        if (!this.f28693c0 || drawable == null) {
            return drawable;
        }
        Integer num = this.f28696f0;
        if (num != null) {
            iD = num.intValue();
        } else {
            iD = com.google.android.material.color.b.d(this, drawable == this.f28692b0 ? R$attr.colorOnSurfaceVariant : R$attr.colorOnSurface);
        }
        Drawable drawableR = a1.a.r(drawable.mutate());
        a1.a.n(drawableR, iD);
        return drawableR;
    }

    private void P(int i10, int i11) {
        View view = this.f28695e0;
        if (view != null) {
            view.measure(i10, i11);
        }
    }

    private void Q() {
        if (this.W && (getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            Resources resources = getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.m3_searchbar_margin_horizontal);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(getDefaultMarginVerticalResource());
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
            marginLayoutParams.leftMargin = G(marginLayoutParams.leftMargin, dimensionPixelSize);
            marginLayoutParams.topMargin = G(marginLayoutParams.topMargin, dimensionPixelSize2);
            marginLayoutParams.rightMargin = G(marginLayoutParams.rightMargin, dimensionPixelSize);
            marginLayoutParams.bottomMargin = G(marginLayoutParams.bottomMargin, dimensionPixelSize2);
        }
    }

    private void R() {
        int width;
        if (Build.VERSION.SDK_INT < 34) {
            return;
        }
        int right = 0;
        boolean z10 = getLayoutDirection() == 1;
        ImageButton imageButtonE = ToolbarUtils.e(this);
        if (imageButtonE == null || !imageButtonE.isClickable()) {
            width = 0;
        } else {
            width = z10 ? getWidth() - imageButtonE.getLeft() : imageButtonE.getRight();
        }
        ActionMenuView actionMenuViewB = ToolbarUtils.b(this);
        if (actionMenuViewB != null) {
            right = z10 ? actionMenuViewB.getRight() : getWidth() - actionMenuViewB.getLeft();
        }
        float f10 = -(z10 ? right : width);
        if (!z10) {
            width = right;
        }
        setHandwritingBoundsOffsets(f10, 0.0f, -width, 0.0f);
    }

    private void S() {
        if (getLayoutParams() instanceof AppBarLayout.e) {
            AppBarLayout.e eVar = (AppBarLayout.e) getLayoutParams();
            if (this.f28699i0) {
                if (eVar.c() == 0) {
                    eVar.g(53);
                }
            } else if (eVar.c() == 53) {
                eVar.g(0);
            }
        }
    }

    private void T() {
        AccessibilityManager accessibilityManager = this.f28701k0;
        if (accessibilityManager != null) {
            if (accessibilityManager.isEnabled() && this.f28701k0.isTouchExplorationEnabled()) {
                setFocusableInTouchMode(true);
            }
            addOnAttachStateChangeListener(new a());
        }
    }

    private void U(AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", CampaignEx.JSON_KEY_TITLE) != null) {
            throw new UnsupportedOperationException("SearchBar does not support title. Use hint or text instead.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "subtitle") != null) {
            throw new UnsupportedOperationException("SearchBar does not support subtitle. Use hint or text instead.");
        }
    }

    private void setNavigationIconDecorative(boolean z10) {
        ImageButton imageButtonE = ToolbarUtils.e(this);
        if (imageButtonE == null) {
            return;
        }
        imageButtonE.setClickable(!z10);
        imageButtonE.setFocusable(!z10);
        Drawable background = imageButtonE.getBackground();
        if (background != null) {
            this.f28697g0 = background;
        }
        imageButtonE.setBackgroundDrawable(z10 ? null : this.f28697g0);
        R();
    }

    public void addCollapseAnimationListener(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        this.f28691a0.h(animatorListenerAdapter);
    }

    public void addExpandAnimationListener(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        this.f28691a0.i(animatorListenerAdapter);
    }

    public void addOnLoadAnimationCallback(@NonNull b bVar) {
        this.f28691a0.j(bVar);
    }

    @Override
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (this.V && this.f28695e0 == null && !(view instanceof ActionMenuView)) {
            this.f28695e0 = view;
            view.setAlpha(0.0f);
        }
        super.addView(view, i10, layoutParams);
    }

    public void clearText() {
        this.U.setText("");
    }

    public boolean collapse(@NonNull View view) {
        return collapse(view, null);
    }

    public boolean expand(@NonNull View view) {
        return expand(view, null);
    }

    @Nullable
    public View getCenterView() {
        return this.f28695e0;
    }

    float getCompatElevation() {
        cb.i iVar = this.f28700j0;
        return iVar != null ? iVar.y() : ViewCompat.getElevation(this);
    }

    public float getCornerSize() {
        return this.f28700j0.L();
    }

    protected int getDefaultMarginVerticalResource() {
        return R$dimen.m3_searchbar_margin_vertical;
    }

    protected int getDefaultNavigationIconResource() {
        return R$drawable.ic_search_black_24;
    }

    @Nullable
    public CharSequence getHint() {
        return this.U.getHint();
    }

    int getMenuResId() {
        return this.f28698h0;
    }

    public int getStrokeColor() {
        return this.f28700j0.H().getDefaultColor();
    }

    public float getStrokeWidth() {
        return this.f28700j0.J();
    }

    @NonNull
    public CharSequence getText() {
        return this.U.getText();
    }

    @NonNull
    public TextView getTextView() {
        return this.U;
    }

    @Override
    public void inflateMenu(int i10) {
        Menu menu = getMenu();
        boolean z10 = menu instanceof androidx.appcompat.view.menu.f;
        if (z10) {
            ((androidx.appcompat.view.menu.f) menu).i0();
        }
        super.inflateMenu(i10);
        this.f28698h0 = i10;
        if (z10) {
            ((androidx.appcompat.view.menu.f) menu).h0();
        }
    }

    public boolean isCollapsing() {
        return this.f28691a0.x();
    }

    public boolean isDefaultScrollFlagsEnabled() {
        return this.f28699i0;
    }

    public boolean isExpanding() {
        return this.f28691a0.y();
    }

    public boolean isOnLoadAnimationFadeInEnabled() {
        return this.f28691a0.z();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        cb.j.f(this, this.f28700j0);
        Q();
        S();
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(EditText.class.getCanonicalName());
        int i10 = Build.VERSION.SDK_INT;
        accessibilityNodeInfo.setEditable(isEnabled());
        CharSequence text = getText();
        boolean zIsEmpty = TextUtils.isEmpty(text);
        if (i10 >= 26) {
            accessibilityNodeInfo.setHintText(getHint());
            accessibilityNodeInfo.setShowingHintText(zIsEmpty);
        }
        if (zIsEmpty) {
            text = getHint();
        }
        accessibilityNodeInfo.setText(text);
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        M();
        R();
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        P(i10, i11);
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setText(savedState.f28703a);
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        CharSequence text = getText();
        savedState.f28703a = text == null ? null : text.toString();
        return savedState;
    }

    public boolean removeCollapseAnimationListener(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        return this.f28691a0.D(animatorListenerAdapter);
    }

    public boolean removeExpandAnimationListener(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        return this.f28691a0.E(animatorListenerAdapter);
    }

    public boolean removeOnLoadAnimationCallback(@NonNull b bVar) {
        return this.f28691a0.F(bVar);
    }

    public void setCenterView(@Nullable View view) {
        View view2 = this.f28695e0;
        if (view2 != null) {
            removeView(view2);
            this.f28695e0 = null;
        }
        if (view != null) {
            addView(view);
        }
    }

    public void setDefaultScrollFlagsEnabled(boolean z10) {
        this.f28699i0 = z10;
        S();
    }

    @Override
    public void setElevation(float f10) {
        super.setElevation(f10);
        cb.i iVar = this.f28700j0;
        if (iVar != null) {
            iVar.c0(f10);
        }
    }

    public void setHint(@Nullable CharSequence charSequence) {
        this.U.setHint(charSequence);
    }

    @Override
    public void setNavigationIcon(@Nullable Drawable drawable) {
        super.setNavigationIcon(O(drawable));
    }

    @Override
    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        if (this.f28694d0) {
            return;
        }
        super.setNavigationOnClickListener(onClickListener);
        setNavigationIconDecorative(onClickListener == null);
    }

    public void setOnLoadAnimationFadeInEnabled(boolean z10) {
        this.f28691a0.G(z10);
    }

    public void setStrokeColor(int i10) {
        if (getStrokeColor() != i10) {
            this.f28700j0.n0(ColorStateList.valueOf(i10));
        }
    }

    public void setStrokeWidth(float f10) {
        if (getStrokeWidth() != f10) {
            this.f28700j0.o0(f10);
        }
    }

    @Override
    public void setSubtitle(CharSequence charSequence) {
    }

    public void setText(@Nullable CharSequence charSequence) {
        this.U.setText(charSequence);
    }

    @Override
    public void setTitle(CharSequence charSequence) {
    }

    public void startOnLoadAnimation() {
        post(new Runnable() {
            @Override
            public final void run() {
                this.f28736a.L();
            }
        });
    }

    public void stopOnLoadAnimation() {
        this.f28691a0.K(this);
    }

    public static class ScrollingViewBehavior extends AppBarLayout.ScrollingViewBehavior {

        private boolean f28704h;

        public ScrollingViewBehavior() {
            this.f28704h = false;
        }

        private void U(AppBarLayout appBarLayout) {
            appBarLayout.setBackgroundColor(0);
            appBarLayout.setTargetElevation(0.0f);
        }

        @Override
        protected boolean P() {
            return true;
        }

        @Override
        public boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            boolean zH = super.h(coordinatorLayout, view, view2);
            if (!this.f28704h && (view2 instanceof AppBarLayout)) {
                this.f28704h = true;
                U((AppBarLayout) view2);
            }
            return zH;
        }

        public ScrollingViewBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f28704h = false;
        }
    }

    public SearchBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialSearchBarStyle);
    }

    public boolean collapse(@NonNull View view, @Nullable AppBarLayout appBarLayout) {
        return collapse(view, appBarLayout, false);
    }

    public boolean expand(@NonNull View view, @Nullable AppBarLayout appBarLayout) {
        return expand(view, appBarLayout, false);
    }

    public void setHint(int i10) {
        this.U.setHint(i10);
    }

    public void setText(int i10) {
        this.U.setText(i10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SearchBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f28690m0;
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f28698h0 = -1;
        this.f28702l0 = new AccessibilityManagerCompat.TouchExplorationStateChangeListener() {
            @Override
            public final void onTouchExplorationStateChanged(boolean z10) {
                this.f28738a.K(z10);
            }
        };
        Context context2 = getContext();
        U(attributeSet);
        this.f28692b0 = g.a.b(context2, getDefaultNavigationIconResource());
        this.f28691a0 = new i();
        TypedArray typedArrayI = com.google.android.material.internal.b0.i(context2, attributeSet, R$styleable.SearchBar, i10, i11, new int[0]);
        cb.n nVarM = cb.n.e(context2, attributeSet, i10, i11).m();
        int color = typedArrayI.getColor(R$styleable.SearchBar_backgroundTint, 0);
        float dimension = typedArrayI.getDimension(R$styleable.SearchBar_elevation, 0.0f);
        this.W = typedArrayI.getBoolean(R$styleable.SearchBar_defaultMarginsEnabled, true);
        this.f28699i0 = typedArrayI.getBoolean(R$styleable.SearchBar_defaultScrollFlagsEnabled, true);
        boolean z10 = typedArrayI.getBoolean(R$styleable.SearchBar_hideNavigationIcon, false);
        this.f28694d0 = typedArrayI.getBoolean(R$styleable.SearchBar_forceDefaultNavigationOnClickListener, false);
        this.f28693c0 = typedArrayI.getBoolean(R$styleable.SearchBar_tintNavigationIcon, true);
        if (typedArrayI.hasValue(R$styleable.SearchBar_navigationIconTint)) {
            this.f28696f0 = Integer.valueOf(typedArrayI.getColor(R$styleable.SearchBar_navigationIconTint, -1));
        }
        int resourceId = typedArrayI.getResourceId(R$styleable.SearchBar_android_textAppearance, -1);
        String string = typedArrayI.getString(R$styleable.SearchBar_android_text);
        String string2 = typedArrayI.getString(R$styleable.SearchBar_android_hint);
        float dimension2 = typedArrayI.getDimension(R$styleable.SearchBar_strokeWidth, -1.0f);
        int color2 = typedArrayI.getColor(R$styleable.SearchBar_strokeColor, 0);
        typedArrayI.recycle();
        if (!z10) {
            I();
        }
        setClickable(true);
        setFocusable(true);
        LayoutInflater.from(context2).inflate(R$layout.mtrl_search_bar, this);
        this.V = true;
        this.U = (TextView) findViewById(R$id.open_search_bar_text_view);
        ViewCompat.setElevation(this, dimension);
        J(resourceId, string, string2);
        H(nVarM, color, dimension, dimension2, color2);
        this.f28701k0 = (AccessibilityManager) getContext().getSystemService("accessibility");
        T();
    }

    public boolean collapse(@NonNull View view, @Nullable AppBarLayout appBarLayout, boolean z10) {
        if ((view.getVisibility() != 0 || isCollapsing()) && !isExpanding()) {
            return false;
        }
        this.f28691a0.H(this, view, appBarLayout, z10);
        return true;
    }

    public boolean expand(@NonNull View view, @Nullable AppBarLayout appBarLayout, boolean z10) {
        if ((view.getVisibility() == 0 || isExpanding()) && !isCollapsing()) {
            return false;
        }
        this.f28691a0.I(this, view, appBarLayout, z10);
        return true;
    }
}
