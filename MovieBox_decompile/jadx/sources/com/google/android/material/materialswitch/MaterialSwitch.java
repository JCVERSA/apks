package com.google.android.material.materialswitch;

import a1.a;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.j0;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.drawable.d;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import z0.b;

public class MaterialSwitch extends SwitchCompat {

    private static final int f28463k0 = R$style.Widget_Material3_CompoundButton_MaterialSwitch;

    private static final int[] f28464l0 = {R$attr.state_with_icon};
    private Drawable U;
    private Drawable V;
    private int W;

    private Drawable f28465a0;

    private Drawable f28466b0;

    private ColorStateList f28467c0;

    private ColorStateList f28468d0;

    private PorterDuff.Mode f28469e0;

    private ColorStateList f28470f0;

    private ColorStateList f28471g0;

    private PorterDuff.Mode f28472h0;

    private int[] f28473i0;

    private int[] f28474j0;

    public MaterialSwitch(@NonNull Context context) {
        this(context, null);
    }

    private void p() {
        this.U = d.c(this.U, this.f28467c0, getThumbTintMode());
        this.V = d.c(this.V, this.f28468d0, this.f28469e0);
        s();
        Drawable drawable = this.U;
        Drawable drawable2 = this.V;
        int i10 = this.W;
        super.setThumbDrawable(d.b(drawable, drawable2, i10, i10));
        refreshDrawableState();
    }

    private void q() {
        this.f28465a0 = d.c(this.f28465a0, this.f28470f0, getTrackTintMode());
        this.f28466b0 = d.c(this.f28466b0, this.f28471g0, this.f28472h0);
        s();
        Drawable layerDrawable = this.f28465a0;
        if (layerDrawable != null && this.f28466b0 != null) {
            layerDrawable = new LayerDrawable(new Drawable[]{this.f28465a0, this.f28466b0});
        } else if (layerDrawable == null) {
            layerDrawable = this.f28466b0;
        }
        if (layerDrawable != null) {
            setSwitchMinWidth(layerDrawable.getIntrinsicWidth());
        }
        super.setTrackDrawable(layerDrawable);
    }

    private static void r(Drawable drawable, ColorStateList colorStateList, int[] iArr, int[] iArr2, float f10) {
        if (drawable == null || colorStateList == null) {
            return;
        }
        a.n(drawable, b.d(colorStateList.getColorForState(iArr, 0), colorStateList.getColorForState(iArr2, 0), f10));
    }

    private void s() {
        if (this.f28467c0 == null && this.f28468d0 == null && this.f28470f0 == null && this.f28471g0 == null) {
            return;
        }
        float thumbPosition = getThumbPosition();
        ColorStateList colorStateList = this.f28467c0;
        if (colorStateList != null) {
            r(this.U, colorStateList, this.f28473i0, this.f28474j0, thumbPosition);
        }
        ColorStateList colorStateList2 = this.f28468d0;
        if (colorStateList2 != null) {
            r(this.V, colorStateList2, this.f28473i0, this.f28474j0, thumbPosition);
        }
        ColorStateList colorStateList3 = this.f28470f0;
        if (colorStateList3 != null) {
            r(this.f28465a0, colorStateList3, this.f28473i0, this.f28474j0, thumbPosition);
        }
        ColorStateList colorStateList4 = this.f28471g0;
        if (colorStateList4 != null) {
            r(this.f28466b0, colorStateList4, this.f28473i0, this.f28474j0, thumbPosition);
        }
    }

    @Override
    @Nullable
    public Drawable getThumbDrawable() {
        return this.U;
    }

    @Nullable
    public Drawable getThumbIconDrawable() {
        return this.V;
    }

    public int getThumbIconSize() {
        return this.W;
    }

    @Nullable
    public ColorStateList getThumbIconTintList() {
        return this.f28468d0;
    }

    @NonNull
    public PorterDuff.Mode getThumbIconTintMode() {
        return this.f28469e0;
    }

    @Override
    @Nullable
    public ColorStateList getThumbTintList() {
        return this.f28467c0;
    }

    @Nullable
    public Drawable getTrackDecorationDrawable() {
        return this.f28466b0;
    }

    @Nullable
    public ColorStateList getTrackDecorationTintList() {
        return this.f28471g0;
    }

    @NonNull
    public PorterDuff.Mode getTrackDecorationTintMode() {
        return this.f28472h0;
    }

    @Override
    @Nullable
    public Drawable getTrackDrawable() {
        return this.f28465a0;
    }

    @Override
    @Nullable
    public ColorStateList getTrackTintList() {
        return this.f28470f0;
    }

    @Override
    public void invalidate() {
        s();
        super.invalidate();
    }

    @Override
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        if (this.V != null) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f28464l0);
        }
        this.f28473i0 = d.j(iArrOnCreateDrawableState);
        this.f28474j0 = d.f(iArrOnCreateDrawableState);
        return iArrOnCreateDrawableState;
    }

    @Override
    public void setThumbDrawable(@Nullable Drawable drawable) {
        this.U = drawable;
        p();
    }

    public void setThumbIconDrawable(@Nullable Drawable drawable) {
        this.V = drawable;
        p();
    }

    public void setThumbIconResource(int i10) {
        setThumbIconDrawable(g.a.b(getContext(), i10));
    }

    public void setThumbIconSize(int i10) {
        if (this.W != i10) {
            this.W = i10;
            p();
        }
    }

    public void setThumbIconTintList(@Nullable ColorStateList colorStateList) {
        this.f28468d0 = colorStateList;
        p();
    }

    public void setThumbIconTintMode(@NonNull PorterDuff.Mode mode) {
        this.f28469e0 = mode;
        p();
    }

    @Override
    public void setThumbTintList(@Nullable ColorStateList colorStateList) {
        this.f28467c0 = colorStateList;
        p();
    }

    @Override
    public void setThumbTintMode(@Nullable PorterDuff.Mode mode) {
        super.setThumbTintMode(mode);
        p();
    }

    public void setTrackDecorationDrawable(@Nullable Drawable drawable) {
        this.f28466b0 = drawable;
        q();
    }

    public void setTrackDecorationResource(int i10) {
        setTrackDecorationDrawable(g.a.b(getContext(), i10));
    }

    public void setTrackDecorationTintList(@Nullable ColorStateList colorStateList) {
        this.f28471g0 = colorStateList;
        q();
    }

    public void setTrackDecorationTintMode(@NonNull PorterDuff.Mode mode) {
        this.f28472h0 = mode;
        q();
    }

    @Override
    public void setTrackDrawable(@Nullable Drawable drawable) {
        this.f28465a0 = drawable;
        q();
    }

    @Override
    public void setTrackTintList(@Nullable ColorStateList colorStateList) {
        this.f28470f0 = colorStateList;
        q();
    }

    @Override
    public void setTrackTintMode(@Nullable PorterDuff.Mode mode) {
        super.setTrackTintMode(mode);
        q();
    }

    public MaterialSwitch(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialSwitchStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialSwitch(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f28463k0;
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.W = -1;
        Context context2 = getContext();
        this.U = super.getThumbDrawable();
        this.f28467c0 = super.getThumbTintList();
        super.setThumbTintList(null);
        this.f28465a0 = super.getTrackDrawable();
        this.f28470f0 = super.getTrackTintList();
        super.setTrackTintList(null);
        j0 j0VarJ = b0.j(context2, attributeSet, R$styleable.MaterialSwitch, i10, i11, new int[0]);
        this.V = j0VarJ.g(R$styleable.MaterialSwitch_thumbIcon);
        this.W = j0VarJ.f(R$styleable.MaterialSwitch_thumbIconSize, -1);
        this.f28468d0 = j0VarJ.c(R$styleable.MaterialSwitch_thumbIconTint);
        int iK = j0VarJ.k(R$styleable.MaterialSwitch_thumbIconTintMode, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.f28469e0 = f0.r(iK, mode);
        this.f28466b0 = j0VarJ.g(R$styleable.MaterialSwitch_trackDecoration);
        this.f28471g0 = j0VarJ.c(R$styleable.MaterialSwitch_trackDecorationTint);
        this.f28472h0 = f0.r(j0VarJ.k(R$styleable.MaterialSwitch_trackDecorationTintMode, -1), mode);
        j0VarJ.x();
        setEnforceSwitchWidth(false);
        p();
        q();
    }
}
