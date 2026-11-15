package com.google.android.material.navigation;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.m;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.transition.s;
import androidx.transition.u;
import cb.i;
import cb.n;
import com.google.android.material.R$attr;
import com.google.android.material.R$integer;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.z;
import java.util.HashSet;
import ya.j;

public abstract class NavigationBarMenuView extends ViewGroup implements m {
    private static final int[] F = {R.attr.state_checked};
    private static final int[] G = {-16842910};
    private n A;
    private boolean B;
    private ColorStateList C;
    private NavigationBarPresenter D;
    private androidx.appcompat.view.menu.f E;

    private final u f28504a;

    private final View.OnClickListener f28505b;

    private final androidx.core.util.f f28506c;

    private final SparseArray f28507d;

    private int f28508e;

    private NavigationBarItemView[] f28509f;

    private int f28510g;

    private int f28511h;

    private ColorStateList f28512i;

    private int f28513j;

    private ColorStateList f28514k;

    private final ColorStateList f28515l;

    private int f28516m;

    private int f28517n;

    private boolean f28518o;

    private Drawable f28519p;

    private ColorStateList f28520q;

    private int f28521r;

    private final SparseArray f28522s;

    private int f28523t;

    private int f28524u;

    private int f28525v;

    private boolean f28526w;

    private int f28527x;

    private int f28528y;

    private int f28529z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            h itemData = ((NavigationBarItemView) view).getItemData();
            if (NavigationBarMenuView.this.E.P(itemData, NavigationBarMenuView.this.D, 0)) {
                return;
            }
            itemData.setChecked(true);
        }
    }

    public NavigationBarMenuView(@NonNull Context context) {
        super(context);
        this.f28506c = new androidx.core.util.h(5);
        this.f28507d = new SparseArray(5);
        this.f28510g = 0;
        this.f28511h = 0;
        this.f28522s = new SparseArray(5);
        this.f28523t = -1;
        this.f28524u = -1;
        this.f28525v = -1;
        this.B = false;
        this.f28515l = createDefaultColorStateList(R.attr.textColorSecondary);
        if (isInEditMode()) {
            this.f28504a = null;
        } else {
            androidx.transition.a aVar = new androidx.transition.a();
            this.f28504a = aVar;
            aVar.p0(0);
            aVar.X(j.f(getContext(), R$attr.motionDurationMedium4, getResources().getInteger(R$integer.material_motion_duration_long_1)));
            aVar.Z(j.g(getContext(), R$attr.motionEasingStandard, qa.a.f69578b));
            aVar.h0(new z());
        }
        this.f28505b = new a();
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    private Drawable c() {
        if (this.A == null || this.C == null) {
            return null;
        }
        i iVar = new i(this.A);
        iVar.d0(this.C);
        return iVar;
    }

    private boolean g(int i10) {
        return i10 != -1;
    }

    private NavigationBarItemView getNewItem() {
        NavigationBarItemView navigationBarItemView = (NavigationBarItemView) this.f28506c.acquire();
        return navigationBarItemView == null ? d(getContext()) : navigationBarItemView;
    }

    private void i() {
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < this.E.size(); i10++) {
            hashSet.add(Integer.valueOf(this.E.getItem(i10).getItemId()));
        }
        for (int i11 = 0; i11 < this.f28522s.size(); i11++) {
            int iKeyAt = this.f28522s.keyAt(i11);
            if (!hashSet.contains(Integer.valueOf(iKeyAt))) {
                this.f28522s.delete(iKeyAt);
            }
        }
    }

    private void l(int i10) {
        if (g(i10)) {
            return;
        }
        throw new IllegalArgumentException(i10 + " is not a valid view id");
    }

    private void setBadgeIfNeeded(@NonNull NavigationBarItemView navigationBarItemView) {
        BadgeDrawable badgeDrawable;
        int id2 = navigationBarItemView.getId();
        if (g(id2) && (badgeDrawable = (BadgeDrawable) this.f28522s.get(id2)) != null) {
            navigationBarItemView.setBadge(badgeDrawable);
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void buildMenuView() {
        removeAllViews();
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView != null) {
                    this.f28506c.release(navigationBarItemView);
                    navigationBarItemView.f();
                }
            }
        }
        if (this.E.size() == 0) {
            this.f28510g = 0;
            this.f28511h = 0;
            this.f28509f = null;
            return;
        }
        i();
        this.f28509f = new NavigationBarItemView[this.E.size()];
        boolean zF = f(this.f28508e, this.E.G().size());
        for (int i10 = 0; i10 < this.E.size(); i10++) {
            this.D.m(true);
            this.E.getItem(i10).setCheckable(true);
            this.D.m(false);
            NavigationBarItemView newItem = getNewItem();
            this.f28509f[i10] = newItem;
            newItem.setIconTintList(this.f28512i);
            newItem.setIconSize(this.f28513j);
            newItem.setTextColor(this.f28515l);
            newItem.setTextAppearanceInactive(this.f28516m);
            newItem.setTextAppearanceActive(this.f28517n);
            newItem.setTextAppearanceActiveBoldEnabled(this.f28518o);
            newItem.setTextColor(this.f28514k);
            int i11 = this.f28523t;
            if (i11 != -1) {
                newItem.setItemPaddingTop(i11);
            }
            int i12 = this.f28524u;
            if (i12 != -1) {
                newItem.setItemPaddingBottom(i12);
            }
            int i13 = this.f28525v;
            if (i13 != -1) {
                newItem.setActiveIndicatorLabelPadding(i13);
            }
            newItem.setActiveIndicatorWidth(this.f28527x);
            newItem.setActiveIndicatorHeight(this.f28528y);
            newItem.setActiveIndicatorMarginHorizontal(this.f28529z);
            newItem.setActiveIndicatorDrawable(c());
            newItem.setActiveIndicatorResizeable(this.B);
            newItem.setActiveIndicatorEnabled(this.f28526w);
            Drawable drawable = this.f28519p;
            if (drawable != null) {
                newItem.setItemBackground(drawable);
            } else {
                newItem.setItemBackground(this.f28521r);
            }
            newItem.setItemRippleColor(this.f28520q);
            newItem.setShifting(zF);
            newItem.setLabelVisibilityMode(this.f28508e);
            h hVar = (h) this.E.getItem(i10);
            newItem.initialize(hVar, 0);
            newItem.setItemPosition(i10);
            int itemId = hVar.getItemId();
            newItem.setOnTouchListener((View.OnTouchListener) this.f28507d.get(itemId));
            newItem.setOnClickListener(this.f28505b);
            int i14 = this.f28510g;
            if (i14 != 0 && itemId == i14) {
                this.f28511h = i10;
            }
            setBadgeIfNeeded(newItem);
            addView(newItem);
        }
        int iMin = Math.min(this.E.size() - 1, this.f28511h);
        this.f28511h = iMin;
        this.E.getItem(iMin).setChecked(true);
    }

    @Nullable
    public ColorStateList createDefaultColorStateList(int i10) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i10, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateListA = g.a.a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(androidx.appcompat.R$attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i11 = typedValue.data;
        int defaultColor = colorStateListA.getDefaultColor();
        int[] iArr = G;
        return new ColorStateList(new int[][]{iArr, F, ViewGroup.EMPTY_STATE_SET}, new int[]{colorStateListA.getColorForState(iArr, defaultColor), i11, defaultColor});
    }

    protected abstract NavigationBarItemView d(Context context);

    BadgeDrawable e(int i10) {
        l(i10);
        BadgeDrawable badgeDrawableD = (BadgeDrawable) this.f28522s.get(i10);
        if (badgeDrawableD == null) {
            badgeDrawableD = BadgeDrawable.d(getContext());
            this.f28522s.put(i10, badgeDrawableD);
        }
        NavigationBarItemView navigationBarItemViewFindItemView = findItemView(i10);
        if (navigationBarItemViewFindItemView != null) {
            navigationBarItemViewFindItemView.setBadge(badgeDrawableD);
        }
        return badgeDrawableD;
    }

    protected boolean f(int i10, int i11) {
        if (i10 == -1) {
            if (i11 <= 3) {
                return false;
            }
        } else if (i10 != 0) {
            return false;
        }
        return true;
    }

    @Nullable
    public NavigationBarItemView findItemView(int i10) {
        l(i10);
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr == null) {
            return null;
        }
        for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
            if (navigationBarItemView.getId() == i10) {
                return navigationBarItemView;
            }
        }
        return null;
    }

    public int getActiveIndicatorLabelPadding() {
        return this.f28525v;
    }

    @Nullable
    public BadgeDrawable getBadge(int i10) {
        return (BadgeDrawable) this.f28522s.get(i10);
    }

    SparseArray<BadgeDrawable> getBadgeDrawables() {
        return this.f28522s;
    }

    @Nullable
    public ColorStateList getIconTintList() {
        return this.f28512i;
    }

    @Nullable
    public ColorStateList getItemActiveIndicatorColor() {
        return this.C;
    }

    public boolean getItemActiveIndicatorEnabled() {
        return this.f28526w;
    }

    public int getItemActiveIndicatorHeight() {
        return this.f28528y;
    }

    public int getItemActiveIndicatorMarginHorizontal() {
        return this.f28529z;
    }

    @Nullable
    public n getItemActiveIndicatorShapeAppearance() {
        return this.A;
    }

    public int getItemActiveIndicatorWidth() {
        return this.f28527x;
    }

    @Nullable
    public Drawable getItemBackground() {
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        return (navigationBarItemViewArr == null || navigationBarItemViewArr.length <= 0) ? this.f28519p : navigationBarItemViewArr[0].getBackground();
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.f28521r;
    }

    public int getItemIconSize() {
        return this.f28513j;
    }

    public int getItemPaddingBottom() {
        return this.f28524u;
    }

    public int getItemPaddingTop() {
        return this.f28523t;
    }

    @Nullable
    public ColorStateList getItemRippleColor() {
        return this.f28520q;
    }

    public int getItemTextAppearanceActive() {
        return this.f28517n;
    }

    public int getItemTextAppearanceInactive() {
        return this.f28516m;
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f28514k;
    }

    public int getLabelVisibilityMode() {
        return this.f28508e;
    }

    @Nullable
    protected androidx.appcompat.view.menu.f getMenu() {
        return this.E;
    }

    public int getSelectedItemId() {
        return this.f28510g;
    }

    protected int getSelectedItemPosition() {
        return this.f28511h;
    }

    public int getWindowAnimations() {
        return 0;
    }

    void h(int i10) {
        l(i10);
        NavigationBarItemView navigationBarItemViewFindItemView = findItemView(i10);
        if (navigationBarItemViewFindItemView != null) {
            navigationBarItemViewFindItemView.n();
        }
        this.f28522s.put(i10, null);
    }

    @Override
    public void initialize(@NonNull androidx.appcompat.view.menu.f fVar) {
        this.E = fVar;
    }

    void j(SparseArray sparseArray) {
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            int iKeyAt = sparseArray.keyAt(i10);
            if (this.f28522s.indexOfKey(iKeyAt) < 0) {
                this.f28522s.append(iKeyAt, (BadgeDrawable) sparseArray.get(iKeyAt));
            }
        }
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                BadgeDrawable badgeDrawable = (BadgeDrawable) this.f28522s.get(navigationBarItemView.getId());
                if (badgeDrawable != null) {
                    navigationBarItemView.setBadge(badgeDrawable);
                }
            }
        }
    }

    void k(int i10) {
        int size = this.E.size();
        for (int i11 = 0; i11 < size; i11++) {
            MenuItem item = this.E.getItem(i11);
            if (i10 == item.getItemId()) {
                this.f28510g = i10;
                this.f28511h = i11;
                item.setChecked(true);
                return;
            }
        }
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, this.E.G().size(), false, 1));
    }

    public void setActiveIndicatorLabelPadding(int i10) {
        this.f28525v = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorLabelPadding(i10);
            }
        }
    }

    public void setIconTintList(@Nullable ColorStateList colorStateList) {
        this.f28512i = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemActiveIndicatorColor(@Nullable ColorStateList colorStateList) {
        this.C = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorDrawable(c());
            }
        }
    }

    public void setItemActiveIndicatorEnabled(boolean z10) {
        this.f28526w = z10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorEnabled(z10);
            }
        }
    }

    public void setItemActiveIndicatorHeight(int i10) {
        this.f28528y = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorHeight(i10);
            }
        }
    }

    public void setItemActiveIndicatorMarginHorizontal(int i10) {
        this.f28529z = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorMarginHorizontal(i10);
            }
        }
    }

    protected void setItemActiveIndicatorResizeable(boolean z10) {
        this.B = z10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorResizeable(z10);
            }
        }
    }

    public void setItemActiveIndicatorShapeAppearance(@Nullable n nVar) {
        this.A = nVar;
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorDrawable(c());
            }
        }
    }

    public void setItemActiveIndicatorWidth(int i10) {
        this.f28527x = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorWidth(i10);
            }
        }
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f28519p = drawable;
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i10) {
        this.f28521r = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(i10);
            }
        }
    }

    public void setItemIconSize(int i10) {
        this.f28513j = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconSize(i10);
            }
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void setItemOnTouchListener(int i10, @Nullable View.OnTouchListener onTouchListener) {
        if (onTouchListener == null) {
            this.f28507d.remove(i10);
        } else {
            this.f28507d.put(i10, onTouchListener);
        }
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView.getItemData().getItemId() == i10) {
                    navigationBarItemView.setOnTouchListener(onTouchListener);
                }
            }
        }
    }

    public void setItemPaddingBottom(int i10) {
        this.f28524u = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemPaddingBottom(i10);
            }
        }
    }

    public void setItemPaddingTop(int i10) {
        this.f28523t = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemPaddingTop(i10);
            }
        }
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        this.f28520q = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemRippleColor(colorStateList);
            }
        }
    }

    public void setItemTextAppearanceActive(int i10) {
        this.f28517n = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceActive(i10);
                ColorStateList colorStateList = this.f28514k;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z10) {
        this.f28518o = z10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceActiveBoldEnabled(z10);
            }
        }
    }

    public void setItemTextAppearanceInactive(int i10) {
        this.f28516m = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceInactive(i10);
                ColorStateList colorStateList = this.f28514k;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f28514k = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f28509f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i10) {
        this.f28508e = i10;
    }

    public void setPresenter(@NonNull NavigationBarPresenter navigationBarPresenter) {
        this.D = navigationBarPresenter;
    }

    public void updateMenuView() {
        u uVar;
        androidx.appcompat.view.menu.f fVar = this.E;
        if (fVar == null || this.f28509f == null) {
            return;
        }
        int size = fVar.size();
        if (size != this.f28509f.length) {
            buildMenuView();
            return;
        }
        int i10 = this.f28510g;
        for (int i11 = 0; i11 < size; i11++) {
            MenuItem item = this.E.getItem(i11);
            if (item.isChecked()) {
                this.f28510g = item.getItemId();
                this.f28511h = i11;
            }
        }
        if (i10 != this.f28510g && (uVar = this.f28504a) != null) {
            s.a(this, uVar);
        }
        boolean zF = f(this.f28508e, this.E.G().size());
        for (int i12 = 0; i12 < size; i12++) {
            this.D.m(true);
            this.f28509f[i12].setLabelVisibilityMode(this.f28508e);
            this.f28509f[i12].setShifting(zF);
            this.f28509f[i12].initialize((h) this.E.getItem(i12), 0);
            this.D.m(false);
        }
    }
}
