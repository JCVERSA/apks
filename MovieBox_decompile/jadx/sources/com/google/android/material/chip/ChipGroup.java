package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.FlowLayout;
import com.google.android.material.internal.b0;
import java.util.List;
import java.util.Set;

public class ChipGroup extends FlowLayout {

    private static final int f27874k = R$style.Widget_MaterialComponents_ChipGroup;

    private int f27875e;

    private int f27876f;

    private e f27877g;

    private final com.google.android.material.internal.a f27878h;

    private final int f27879i;

    private final f f27880j;

    class a implements com.google.android.material.internal.a.b {
        a() {
        }

        @Override
        public void a(Set set) {
            if (ChipGroup.this.f27877g != null) {
                e eVar = ChipGroup.this.f27877g;
                ChipGroup chipGroup = ChipGroup.this;
                eVar.a(chipGroup, chipGroup.f27878h.j(ChipGroup.this));
            }
        }
    }

    class b implements e {
        b(d dVar) {
        }

        @Override
        public void a(ChipGroup chipGroup, List list) {
            if (ChipGroup.this.f27878h.m()) {
                ChipGroup.this.getCheckedChipId();
                throw null;
            }
        }
    }

    public static class c extends ViewGroup.MarginLayoutParams {
        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public c(int i10, int i11) {
            super(i10, i11);
        }
    }

    public interface d {
    }

    public interface e {
        void a(ChipGroup chipGroup, List list);
    }

    private class f implements ViewGroup.OnHierarchyChangeListener {

        private ViewGroup.OnHierarchyChangeListener f27883a;

        private f() {
        }

        @Override
        public void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(ViewCompat.generateViewId());
                }
                ChipGroup.this.f27878h.e((Chip) view2);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f27883a;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override
        public void onChildViewRemoved(View view, View view2) {
            ChipGroup chipGroup = ChipGroup.this;
            if (view == chipGroup && (view2 instanceof Chip)) {
                chipGroup.f27878h.o((Chip) view2);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f27883a;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }

        f(ChipGroup chipGroup, a aVar) {
            this();
        }
    }

    public ChipGroup(Context context) {
        this(context, null);
    }

    private boolean f(int i10) {
        return getChildAt(i10).getVisibility() == 0;
    }

    private int getVisibleChipCount() {
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if ((getChildAt(i11) instanceof Chip) && f(i11)) {
                i10++;
            }
        }
        return i10;
    }

    public void check(int i10) {
        this.f27878h.f(i10);
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof c);
    }

    public void clearCheck() {
        this.f27878h.h();
    }

    int e(View view) {
        if (!(view instanceof Chip)) {
            return -1;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if ((childAt instanceof Chip) && f(i11)) {
                if (((Chip) childAt) == view) {
                    return i10;
                }
                i10++;
            }
        }
        return -1;
    }

    @Override
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new c(-2, -2);
    }

    @Override
    @NonNull
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    public int getCheckedChipId() {
        return this.f27878h.k();
    }

    @NonNull
    public List<Integer> getCheckedChipIds() {
        return this.f27878h.j(this);
    }

    public int getChipSpacingHorizontal() {
        return this.f27875e;
    }

    public int getChipSpacingVertical() {
        return this.f27876f;
    }

    public boolean isSelectionRequired() {
        return this.f27878h.l();
    }

    @Override
    public boolean isSingleLine() {
        return super.isSingleLine();
    }

    public boolean isSingleSelection() {
        return this.f27878h.m();
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i10 = this.f27879i;
        if (i10 != -1) {
            this.f27878h.f(i10);
        }
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(getRowCount(), isSingleLine() ? getVisibleChipCount() : -1, false, isSingleSelection() ? 1 : 2));
    }

    public void setChipSpacing(int i10) {
        setChipSpacingHorizontal(i10);
        setChipSpacingVertical(i10);
    }

    public void setChipSpacingHorizontal(int i10) {
        if (this.f27875e != i10) {
            this.f27875e = i10;
            setItemSpacing(i10);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(int i10) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i10));
    }

    public void setChipSpacingResource(int i10) {
        setChipSpacing(getResources().getDimensionPixelOffset(i10));
    }

    public void setChipSpacingVertical(int i10) {
        if (this.f27876f != i10) {
            this.f27876f = i10;
            setLineSpacing(i10);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(int i10) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i10));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(@Nullable Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i10) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    @Deprecated
    public void setOnCheckedChangeListener(@Nullable d dVar) {
        if (dVar == null) {
            setOnCheckedStateChangeListener(null);
        } else {
            setOnCheckedStateChangeListener(new b(dVar));
        }
    }

    public void setOnCheckedStateChangeListener(@Nullable e eVar) {
        this.f27877g = eVar;
    }

    @Override
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f27880j.f27883a = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z10) {
        this.f27878h.q(z10);
    }

    @Deprecated
    public void setShowDividerHorizontal(int i10) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i10) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Override
    public void setSingleLine(boolean z10) {
        super.setSingleLine(z10);
    }

    public void setSingleSelection(boolean z10) {
        this.f27878h.r(z10);
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.chipGroupStyle);
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new c(layoutParams);
    }

    public void setSingleLine(int i10) {
        setSingleLine(getResources().getBoolean(i10));
    }

    public void setSingleSelection(int i10) {
        setSingleSelection(getResources().getBoolean(i10));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ChipGroup(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f27874k;
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        com.google.android.material.internal.a aVar = new com.google.android.material.internal.a();
        this.f27878h = aVar;
        f fVar = new f(this, null);
        this.f27880j = fVar;
        TypedArray typedArrayI = b0.i(getContext(), attributeSet, R$styleable.ChipGroup, i10, i11, new int[0]);
        int dimensionPixelOffset = typedArrayI.getDimensionPixelOffset(R$styleable.ChipGroup_chipSpacing, 0);
        setChipSpacingHorizontal(typedArrayI.getDimensionPixelOffset(R$styleable.ChipGroup_chipSpacingHorizontal, dimensionPixelOffset));
        setChipSpacingVertical(typedArrayI.getDimensionPixelOffset(R$styleable.ChipGroup_chipSpacingVertical, dimensionPixelOffset));
        setSingleLine(typedArrayI.getBoolean(R$styleable.ChipGroup_singleLine, false));
        setSingleSelection(typedArrayI.getBoolean(R$styleable.ChipGroup_singleSelection, false));
        setSelectionRequired(typedArrayI.getBoolean(R$styleable.ChipGroup_selectionRequired, false));
        this.f27879i = typedArrayI.getResourceId(R$styleable.ChipGroup_checkedChip, -1);
        typedArrayI.recycle();
        aVar.p(new a());
        super.setOnHierarchyChangeListener(fVar);
        ViewCompat.setImportantForAccessibility(this, 1);
    }
}
