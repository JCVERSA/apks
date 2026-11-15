package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.o0;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;

public class NavigationMenuItemView extends ForegroundLinearLayout implements androidx.appcompat.view.menu.m.a {

    private static final int[] f28274r = {R.attr.state_checked};

    private int f28275g;

    private boolean f28276h;

    boolean f28277i;

    boolean f28278j;

    private final CheckedTextView f28279k;

    private FrameLayout f28280l;

    private androidx.appcompat.view.menu.h f28281m;

    private ColorStateList f28282n;

    private boolean f28283o;

    private Drawable f28284p;

    private final AccessibilityDelegateCompat f28285q;

    class a extends AccessibilityDelegateCompat {
        a() {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCheckable(NavigationMenuItemView.this.f28277i);
        }
    }

    public NavigationMenuItemView(@NonNull Context context) {
        this(context, null);
    }

    private void d() {
        if (f()) {
            this.f28279k.setVisibility(8);
            FrameLayout frameLayout = this.f28280l;
            if (frameLayout != null) {
                LinearLayoutCompat.a aVar = (LinearLayoutCompat.a) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) aVar).width = -1;
                this.f28280l.setLayoutParams(aVar);
                return;
            }
            return;
        }
        this.f28279k.setVisibility(0);
        FrameLayout frameLayout2 = this.f28280l;
        if (frameLayout2 != null) {
            LinearLayoutCompat.a aVar2 = (LinearLayoutCompat.a) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) aVar2).width = -2;
            this.f28280l.setLayoutParams(aVar2);
        }
    }

    private StateListDrawable e() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(R$attr.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(f28274r, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    private boolean f() {
        return this.f28281m.getTitle() == null && this.f28281m.getIcon() == null && this.f28281m.getActionView() != null;
    }

    private void setActionView(@Nullable View view) {
        if (view != null) {
            if (this.f28280l == null) {
                this.f28280l = (FrameLayout) ((ViewStub) findViewById(R$id.design_menu_item_action_area_stub)).inflate();
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            this.f28280l.removeAllViews();
            this.f28280l.addView(view);
        }
    }

    @Override
    public androidx.appcompat.view.menu.h getItemData() {
        return this.f28281m;
    }

    @Override
    public void initialize(@NonNull androidx.appcompat.view.menu.h hVar, int i10) {
        this.f28281m = hVar;
        if (hVar.getItemId() > 0) {
            setId(hVar.getItemId());
        }
        setVisibility(hVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            ViewCompat.setBackground(this, e());
        }
        setCheckable(hVar.isCheckable());
        setChecked(hVar.isChecked());
        setEnabled(hVar.isEnabled());
        setTitle(hVar.getTitle());
        setIcon(hVar.getIcon());
        setActionView(hVar.getActionView());
        setContentDescription(hVar.getContentDescription());
        o0.a(this, hVar.getTooltipText());
        d();
    }

    @Override
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        androidx.appcompat.view.menu.h hVar = this.f28281m;
        if (hVar != null && hVar.isCheckable() && this.f28281m.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f28274r);
        }
        return iArrOnCreateDrawableState;
    }

    @Override
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void recycle() {
        FrameLayout frameLayout = this.f28280l;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.f28279k.setCompoundDrawables(null, null, null, null);
    }

    public void setCheckable(boolean z10) {
        refreshDrawableState();
        if (this.f28277i != z10) {
            this.f28277i = z10;
            this.f28285q.sendAccessibilityEvent(this.f28279k, 2048);
        }
    }

    public void setChecked(boolean z10) {
        refreshDrawableState();
        this.f28279k.setChecked(z10);
        CheckedTextView checkedTextView = this.f28279k;
        checkedTextView.setTypeface(checkedTextView.getTypeface(), (z10 && this.f28278j) ? 1 : 0);
    }

    public void setHorizontalPadding(int i10) {
        setPadding(i10, getPaddingTop(), i10, getPaddingBottom());
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            if (this.f28283o) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = a1.a.r(drawable).mutate();
                a1.a.o(drawable, this.f28282n);
            }
            int i10 = this.f28275g;
            drawable.setBounds(0, 0, i10, i10);
        } else if (this.f28276h) {
            if (this.f28284p == null) {
                Drawable drawableE = y0.h.e(getResources(), R$drawable.navigation_empty_icon, getContext().getTheme());
                this.f28284p = drawableE;
                if (drawableE != null) {
                    int i11 = this.f28275g;
                    drawableE.setBounds(0, 0, i11, i11);
                }
            }
            drawable = this.f28284p;
        }
        androidx.core.widget.l.j(this.f28279k, drawable, null, null, null);
    }

    public void setIconPadding(int i10) {
        this.f28279k.setCompoundDrawablePadding(i10);
    }

    public void setIconSize(int i10) {
        this.f28275g = i10;
    }

    void setIconTintList(ColorStateList colorStateList) {
        this.f28282n = colorStateList;
        this.f28283o = colorStateList != null;
        androidx.appcompat.view.menu.h hVar = this.f28281m;
        if (hVar != null) {
            setIcon(hVar.getIcon());
        }
    }

    public void setMaxLines(int i10) {
        this.f28279k.setMaxLines(i10);
    }

    public void setNeedsEmptyIcon(boolean z10) {
        this.f28276h = z10;
    }

    public void setShortcut(boolean z10, char c10) {
    }

    public void setTextAppearance(int i10) {
        androidx.core.widget.l.p(this.f28279k, i10);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f28279k.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.f28279k.setText(charSequence);
    }

    public boolean showsIcon() {
        return true;
    }

    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f28278j = true;
        a aVar = new a();
        this.f28285q = aVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(R$layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(R$dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(R$id.design_menu_item_text);
        this.f28279k = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        ViewCompat.setAccessibilityDelegate(checkedTextView, aVar);
    }

    public void initialize(@NonNull androidx.appcompat.view.menu.h hVar, boolean z10) {
        this.f28278j = z10;
        initialize(hVar, 0);
    }
}
