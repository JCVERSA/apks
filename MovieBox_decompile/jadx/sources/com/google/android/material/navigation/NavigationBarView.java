package com.google.android.material.navigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.j0;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import cb.i;
import cb.j;
import cb.n;
import com.google.android.material.R$dimen;
import com.google.android.material.R$styleable;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.b0;

public abstract class NavigationBarView extends FrameLayout {
    public static final int LABEL_VISIBILITY_AUTO = -1;
    public static final int LABEL_VISIBILITY_LABELED = 1;
    public static final int LABEL_VISIBILITY_SELECTED = 0;
    public static final int LABEL_VISIBILITY_UNLABELED = 2;

    private final d f28537a;

    private final NavigationBarMenuView f28538b;

    private final NavigationBarPresenter f28539c;

    private MenuInflater f28540d;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        Bundle f28541a;

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

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void a(Parcel parcel, ClassLoader classLoader) {
            this.f28541a = parcel.readBundle(classLoader);
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeBundle(this.f28541a);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            a(parcel, classLoader == null ? getClass().getClassLoader() : classLoader);
        }
    }

    class a implements androidx.appcompat.view.menu.f.a {
        a() {
        }

        @Override
        public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
            NavigationBarView.a(NavigationBarView.this);
            NavigationBarView.b(NavigationBarView.this);
            return false;
        }

        @Override
        public void b(androidx.appcompat.view.menu.f fVar) {
        }
    }

    public interface b {
    }

    public interface c {
    }

    public NavigationBarView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        NavigationBarPresenter navigationBarPresenter = new NavigationBarPresenter();
        this.f28539c = navigationBarPresenter;
        Context context2 = getContext();
        j0 j0VarJ = b0.j(context2, attributeSet, R$styleable.NavigationBarView, i10, i11, R$styleable.NavigationBarView_itemTextAppearanceInactive, R$styleable.NavigationBarView_itemTextAppearanceActive);
        d dVar = new d(context2, getClass(), getMaxItemCount());
        this.f28537a = dVar;
        NavigationBarMenuView navigationBarMenuViewC = c(context2);
        this.f28538b = navigationBarMenuViewC;
        navigationBarPresenter.l(navigationBarMenuViewC);
        navigationBarPresenter.a(1);
        navigationBarMenuViewC.setPresenter(navigationBarPresenter);
        dVar.b(navigationBarPresenter);
        navigationBarPresenter.k(getContext(), dVar);
        if (j0VarJ.s(R$styleable.NavigationBarView_itemIconTint)) {
            navigationBarMenuViewC.setIconTintList(j0VarJ.c(R$styleable.NavigationBarView_itemIconTint));
        } else {
            navigationBarMenuViewC.setIconTintList(navigationBarMenuViewC.createDefaultColorStateList(R.attr.textColorSecondary));
        }
        setItemIconSize(j0VarJ.f(R$styleable.NavigationBarView_itemIconSize, getResources().getDimensionPixelSize(R$dimen.mtrl_navigation_bar_item_default_icon_size)));
        if (j0VarJ.s(R$styleable.NavigationBarView_itemTextAppearanceInactive)) {
            setItemTextAppearanceInactive(j0VarJ.n(R$styleable.NavigationBarView_itemTextAppearanceInactive, 0));
        }
        if (j0VarJ.s(R$styleable.NavigationBarView_itemTextAppearanceActive)) {
            setItemTextAppearanceActive(j0VarJ.n(R$styleable.NavigationBarView_itemTextAppearanceActive, 0));
        }
        setItemTextAppearanceActiveBoldEnabled(j0VarJ.a(R$styleable.NavigationBarView_itemTextAppearanceActiveBoldEnabled, true));
        if (j0VarJ.s(R$styleable.NavigationBarView_itemTextColor)) {
            setItemTextColor(j0VarJ.c(R$styleable.NavigationBarView_itemTextColor));
        }
        Drawable background = getBackground();
        ColorStateList colorStateListG = com.google.android.material.drawable.d.g(background);
        if (background == null || colorStateListG != null) {
            i iVar = new i(n.e(context2, attributeSet, i10, i11).m());
            if (colorStateListG != null) {
                iVar.d0(colorStateListG);
            }
            iVar.S(context2);
            ViewCompat.setBackground(this, iVar);
        }
        if (j0VarJ.s(R$styleable.NavigationBarView_itemPaddingTop)) {
            setItemPaddingTop(j0VarJ.f(R$styleable.NavigationBarView_itemPaddingTop, 0));
        }
        if (j0VarJ.s(R$styleable.NavigationBarView_itemPaddingBottom)) {
            setItemPaddingBottom(j0VarJ.f(R$styleable.NavigationBarView_itemPaddingBottom, 0));
        }
        if (j0VarJ.s(R$styleable.NavigationBarView_activeIndicatorLabelPadding)) {
            setActiveIndicatorLabelPadding(j0VarJ.f(R$styleable.NavigationBarView_activeIndicatorLabelPadding, 0));
        }
        if (j0VarJ.s(R$styleable.NavigationBarView_elevation)) {
            setElevation(j0VarJ.f(R$styleable.NavigationBarView_elevation, 0));
        }
        a1.a.o(getBackground().mutate(), za.c.b(context2, j0VarJ, R$styleable.NavigationBarView_backgroundTint));
        setLabelVisibilityMode(j0VarJ.l(R$styleable.NavigationBarView_labelVisibilityMode, -1));
        int iN = j0VarJ.n(R$styleable.NavigationBarView_itemBackground, 0);
        if (iN != 0) {
            navigationBarMenuViewC.setItemBackgroundRes(iN);
        } else {
            setItemRippleColor(za.c.b(context2, j0VarJ, R$styleable.NavigationBarView_itemRippleColor));
        }
        int iN2 = j0VarJ.n(R$styleable.NavigationBarView_itemActiveIndicatorStyle, 0);
        if (iN2 != 0) {
            setItemActiveIndicatorEnabled(true);
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(iN2, R$styleable.NavigationBarActiveIndicator);
            setItemActiveIndicatorWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.NavigationBarActiveIndicator_android_width, 0));
            setItemActiveIndicatorHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.NavigationBarActiveIndicator_android_height, 0));
            setItemActiveIndicatorMarginHorizontal(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.NavigationBarActiveIndicator_marginHorizontal, 0));
            setItemActiveIndicatorColor(za.c.a(context2, typedArrayObtainStyledAttributes, R$styleable.NavigationBarActiveIndicator_android_color));
            setItemActiveIndicatorShapeAppearance(n.b(context2, typedArrayObtainStyledAttributes.getResourceId(R$styleable.NavigationBarActiveIndicator_shapeAppearance, 0), 0).m());
            typedArrayObtainStyledAttributes.recycle();
        }
        if (j0VarJ.s(R$styleable.NavigationBarView_menu)) {
            inflateMenu(j0VarJ.n(R$styleable.NavigationBarView_menu, 0));
        }
        j0VarJ.x();
        addView(navigationBarMenuViewC);
        dVar.W(new a());
    }

    static b a(NavigationBarView navigationBarView) {
        navigationBarView.getClass();
        return null;
    }

    static c b(NavigationBarView navigationBarView) {
        navigationBarView.getClass();
        return null;
    }

    private MenuInflater getMenuInflater() {
        if (this.f28540d == null) {
            this.f28540d = new g(getContext());
        }
        return this.f28540d;
    }

    protected abstract NavigationBarMenuView c(Context context);

    public int getActiveIndicatorLabelPadding() {
        return this.f28538b.getActiveIndicatorLabelPadding();
    }

    @Nullable
    public BadgeDrawable getBadge(int i10) {
        return this.f28538b.getBadge(i10);
    }

    @Nullable
    public ColorStateList getItemActiveIndicatorColor() {
        return this.f28538b.getItemActiveIndicatorColor();
    }

    public int getItemActiveIndicatorHeight() {
        return this.f28538b.getItemActiveIndicatorHeight();
    }

    public int getItemActiveIndicatorMarginHorizontal() {
        return this.f28538b.getItemActiveIndicatorMarginHorizontal();
    }

    @Nullable
    public n getItemActiveIndicatorShapeAppearance() {
        return this.f28538b.getItemActiveIndicatorShapeAppearance();
    }

    public int getItemActiveIndicatorWidth() {
        return this.f28538b.getItemActiveIndicatorWidth();
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f28538b.getItemBackground();
    }

    @Deprecated
    public int getItemBackgroundResource() {
        return this.f28538b.getItemBackgroundRes();
    }

    public int getItemIconSize() {
        return this.f28538b.getItemIconSize();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f28538b.getIconTintList();
    }

    public int getItemPaddingBottom() {
        return this.f28538b.getItemPaddingBottom();
    }

    public int getItemPaddingTop() {
        return this.f28538b.getItemPaddingTop();
    }

    @Nullable
    public ColorStateList getItemRippleColor() {
        return this.f28538b.getItemRippleColor();
    }

    public int getItemTextAppearanceActive() {
        return this.f28538b.getItemTextAppearanceActive();
    }

    public int getItemTextAppearanceInactive() {
        return this.f28538b.getItemTextAppearanceInactive();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f28538b.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.f28538b.getLabelVisibilityMode();
    }

    public abstract int getMaxItemCount();

    @NonNull
    public Menu getMenu() {
        return this.f28537a;
    }

    @NonNull
    public m getMenuView() {
        return this.f28538b;
    }

    @NonNull
    public BadgeDrawable getOrCreateBadge(int i10) {
        return this.f28538b.e(i10);
    }

    @NonNull
    public NavigationBarPresenter getPresenter() {
        return this.f28539c;
    }

    public int getSelectedItemId() {
        return this.f28538b.getSelectedItemId();
    }

    public void inflateMenu(int i10) {
        this.f28539c.m(true);
        getMenuInflater().inflate(i10, this.f28537a);
        this.f28539c.m(false);
        this.f28539c.h(true);
    }

    public boolean isItemActiveIndicatorEnabled() {
        return this.f28538b.getItemActiveIndicatorEnabled();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        j.e(this);
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f28537a.T(savedState.f28541a);
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.f28541a = bundle;
        this.f28537a.V(bundle);
        return savedState;
    }

    public void removeBadge(int i10) {
        this.f28538b.h(i10);
    }

    public void setActiveIndicatorLabelPadding(int i10) {
        this.f28538b.setActiveIndicatorLabelPadding(i10);
    }

    @Override
    public void setElevation(float f10) {
        super.setElevation(f10);
        j.d(this, f10);
    }

    public void setItemActiveIndicatorColor(@Nullable ColorStateList colorStateList) {
        this.f28538b.setItemActiveIndicatorColor(colorStateList);
    }

    public void setItemActiveIndicatorEnabled(boolean z10) {
        this.f28538b.setItemActiveIndicatorEnabled(z10);
    }

    public void setItemActiveIndicatorHeight(int i10) {
        this.f28538b.setItemActiveIndicatorHeight(i10);
    }

    public void setItemActiveIndicatorMarginHorizontal(int i10) {
        this.f28538b.setItemActiveIndicatorMarginHorizontal(i10);
    }

    public void setItemActiveIndicatorShapeAppearance(@Nullable n nVar) {
        this.f28538b.setItemActiveIndicatorShapeAppearance(nVar);
    }

    public void setItemActiveIndicatorWidth(int i10) {
        this.f28538b.setItemActiveIndicatorWidth(i10);
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f28538b.setItemBackground(drawable);
    }

    public void setItemBackgroundResource(int i10) {
        this.f28538b.setItemBackgroundRes(i10);
    }

    public void setItemIconSize(int i10) {
        this.f28538b.setItemIconSize(i10);
    }

    public void setItemIconSizeRes(int i10) {
        setItemIconSize(getResources().getDimensionPixelSize(i10));
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f28538b.setIconTintList(colorStateList);
    }

    public void setItemOnTouchListener(int i10, @Nullable View.OnTouchListener onTouchListener) {
        this.f28538b.setItemOnTouchListener(i10, onTouchListener);
    }

    public void setItemPaddingBottom(int i10) {
        this.f28538b.setItemPaddingBottom(i10);
    }

    public void setItemPaddingTop(int i10) {
        this.f28538b.setItemPaddingTop(i10);
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        this.f28538b.setItemRippleColor(colorStateList);
    }

    public void setItemTextAppearanceActive(int i10) {
        this.f28538b.setItemTextAppearanceActive(i10);
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z10) {
        this.f28538b.setItemTextAppearanceActiveBoldEnabled(z10);
    }

    public void setItemTextAppearanceInactive(int i10) {
        this.f28538b.setItemTextAppearanceInactive(i10);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f28538b.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i10) {
        if (this.f28538b.getLabelVisibilityMode() != i10) {
            this.f28538b.setLabelVisibilityMode(i10);
            this.f28539c.h(false);
        }
    }

    public void setOnItemReselectedListener(@Nullable b bVar) {
    }

    public void setOnItemSelectedListener(@Nullable c cVar) {
    }

    public void setSelectedItemId(int i10) {
        MenuItem menuItemFindItem = this.f28537a.findItem(i10);
        if (menuItemFindItem == null || this.f28537a.P(menuItemFindItem, this.f28539c, 0)) {
            return;
        }
        menuItemFindItem.setChecked(true);
    }
}
