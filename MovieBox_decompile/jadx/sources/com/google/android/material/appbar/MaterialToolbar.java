package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.Menu;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.internal.b0;

public class MaterialToolbar extends Toolbar {

    private static final int f27429c0 = R$style.Widget_MaterialComponents_Toolbar;

    private static final ImageView.ScaleType[] f27430d0 = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};
    private Integer U;
    private boolean V;
    private boolean W;

    private ImageView.ScaleType f27431a0;

    private Boolean f27432b0;

    public MaterialToolbar(@NonNull Context context) {
        this(context, null);
    }

    private Pair C(TextView textView, TextView textView2) {
        int measuredWidth = getMeasuredWidth();
        int i10 = measuredWidth / 2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = measuredWidth - getPaddingRight();
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                if (childAt.getRight() < i10 && childAt.getRight() > paddingLeft) {
                    paddingLeft = childAt.getRight();
                }
                if (childAt.getLeft() > i10 && childAt.getLeft() < paddingRight) {
                    paddingRight = childAt.getLeft();
                }
            }
        }
        return new Pair(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
    }

    private void D(Context context) {
        Drawable background = getBackground();
        ColorStateList colorStateListValueOf = background == null ? ColorStateList.valueOf(0) : com.google.android.material.drawable.d.g(background);
        if (colorStateListValueOf != null) {
            cb.i iVar = new cb.i();
            iVar.d0(colorStateListValueOf);
            iVar.S(context);
            iVar.c0(ViewCompat.getElevation(this));
            ViewCompat.setBackground(this, iVar);
        }
    }

    private void E(View view, Pair pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = view.getMeasuredWidth();
        int i10 = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i11 = measuredWidth2 + i10;
        int iMax = Math.max(Math.max(((Integer) pair.first).intValue() - i10, 0), Math.max(i11 - ((Integer) pair.second).intValue(), 0));
        if (iMax > 0) {
            i10 += iMax;
            i11 -= iMax;
            view.measure(View.MeasureSpec.makeMeasureSpec(i11 - i10, 1073741824), view.getMeasuredHeightAndState());
        }
        view.layout(i10, view.getTop(), i11, view.getBottom());
    }

    private void F() {
        if (this.V || this.W) {
            TextView textViewI = ToolbarUtils.i(this);
            TextView textViewG = ToolbarUtils.g(this);
            if (textViewI == null && textViewG == null) {
                return;
            }
            Pair pairC = C(textViewI, textViewG);
            if (this.V && textViewI != null) {
                E(textViewI, pairC);
            }
            if (!this.W || textViewG == null) {
                return;
            }
            E(textViewG, pairC);
        }
    }

    private Drawable G(Drawable drawable) {
        if (drawable == null || this.U == null) {
            return drawable;
        }
        Drawable drawableR = a1.a.r(drawable.mutate());
        a1.a.n(drawableR, this.U.intValue());
        return drawableR;
    }

    private void H() {
        ImageView imageViewD = ToolbarUtils.d(this);
        if (imageViewD != null) {
            Boolean bool = this.f27432b0;
            if (bool != null) {
                imageViewD.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.f27431a0;
            if (scaleType != null) {
                imageViewD.setScaleType(scaleType);
            }
        }
    }

    public void clearNavigationIconTint() {
        this.U = null;
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            a1.a.o(a1.a.r(navigationIcon.mutate()), null);
            setNavigationIcon(navigationIcon);
        }
    }

    @Nullable
    public ImageView.ScaleType getLogoScaleType() {
        return this.f27431a0;
    }

    @Nullable
    public Integer getNavigationIconTint() {
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
        if (z10) {
            ((androidx.appcompat.view.menu.f) menu).h0();
        }
    }

    public boolean isLogoAdjustViewBounds() {
        Boolean bool = this.f27432b0;
        return bool != null && bool.booleanValue();
    }

    public boolean isSubtitleCentered() {
        return this.W;
    }

    public boolean isTitleCentered() {
        return this.V;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        cb.j.e(this);
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        F();
        H();
    }

    @Override
    public void setElevation(float f10) {
        super.setElevation(f10);
        cb.j.d(this, f10);
    }

    public void setLogoAdjustViewBounds(boolean z10) {
        Boolean bool = this.f27432b0;
        if (bool == null || bool.booleanValue() != z10) {
            this.f27432b0 = Boolean.valueOf(z10);
            requestLayout();
        }
    }

    public void setLogoScaleType(@NonNull ImageView.ScaleType scaleType) {
        if (this.f27431a0 != scaleType) {
            this.f27431a0 = scaleType;
            requestLayout();
        }
    }

    @Override
    public void setNavigationIcon(@Nullable Drawable drawable) {
        super.setNavigationIcon(G(drawable));
    }

    public void setNavigationIconTint(int i10) {
        this.U = Integer.valueOf(i10);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z10) {
        if (this.W != z10) {
            this.W = z10;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z10) {
        if (this.V != z10) {
            this.V = z10;
            requestLayout();
        }
    }

    public MaterialToolbar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.toolbarStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialToolbar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f27429c0;
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        Context context2 = getContext();
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.MaterialToolbar, i10, i11, new int[0]);
        if (typedArrayI.hasValue(R$styleable.MaterialToolbar_navigationIconTint)) {
            setNavigationIconTint(typedArrayI.getColor(R$styleable.MaterialToolbar_navigationIconTint, -1));
        }
        this.V = typedArrayI.getBoolean(R$styleable.MaterialToolbar_titleCentered, false);
        this.W = typedArrayI.getBoolean(R$styleable.MaterialToolbar_subtitleCentered, false);
        int i12 = typedArrayI.getInt(R$styleable.MaterialToolbar_logoScaleType, -1);
        if (i12 >= 0) {
            ImageView.ScaleType[] scaleTypeArr = f27430d0;
            if (i12 < scaleTypeArr.length) {
                this.f27431a0 = scaleTypeArr[i12];
            }
        }
        if (typedArrayI.hasValue(R$styleable.MaterialToolbar_logoAdjustViewBounds)) {
            this.f27432b0 = Boolean.valueOf(typedArrayI.getBoolean(R$styleable.MaterialToolbar_logoAdjustViewBounds, false));
        }
        typedArrayI.recycle();
        D(context2);
    }
}
